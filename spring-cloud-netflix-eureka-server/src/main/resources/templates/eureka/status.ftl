<#import "/spring.ftl" as spring />
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
  <head>
    <base href="<@spring.url basePath/>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>公益Eureka Server - 程序猿DD</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="eureka/css/wro.css">

  </head>

  <body id="one">
    <#include "header.ftl">
    <div class="container-fluid xd-container" style="margin-bottom: 10px;">
      <#include "navbar.ftl">
      <h1>Instances currently registered with Eureka</h1>
      <table id='instances' class="table table-striped table-hover">
        <thead>
          <tr><th>Application</th><th>AMIs</th><th>Availability Zones</th><th>Status</th></tr>
        </thead>
        <tbody>
          <#if apps?has_content>
            <#list apps as app>
              <tr>
                <td><b>${app.name}</b></td>
                <td>
                  <#list app.amiCounts as amiCount>
                    <b>${amiCount.key}</b> (${amiCount.value})<#if amiCount_has_next>,</#if>
                  </#list>
                </td>
                <td>
                  <#list app.zoneCounts as zoneCount>
                    <b>${zoneCount.key}</b> (${zoneCount.value})<#if zoneCount_has_next>,</#if>
                  </#list>
                </td>
                <td>
                  <#list app.instanceInfos as instanceInfo>
                    <#if instanceInfo.isNotUp>
                      <font color=red size=+1><b>
                    </#if>
                    <b>${instanceInfo.status}</b> (${instanceInfo.instances?size}) -
                    <#if instanceInfo.isNotUp>
                      </b></font>
                    </#if>
                    <#list instanceInfo.instances as instance>
                      <#if instance.isHref>
                        <a href="${instance.url}" target="_blank">${instance.id}</a>
                      <#else>
                        ${instance.id}
                      </#if><#if instance_has_next>,</#if>
                    </#list>
                  </#list>
                </td>
              </tr>
            </#list>
          <#else>
            <tr><td colspan="4">No instances available</td></tr>
          </#if>

        </tbody>
      </table>

      <h1>General Info</h1>

      <table id='generalInfo' class="table table-striped table-hover">
        <thead>
          <tr><th>Name</th><th>Value</th></tr>
        </thead>
        <tbody>
          <#list statusInfo.generalStats?keys as stat>
            <tr>
              <td>${stat}</td><td>${statusInfo.generalStats[stat]!""}</td>
            </tr>
          </#list>
          <#list statusInfo.applicationStats?keys as stat>
            <tr>
              <td>${stat}</td><td>${statusInfo.applicationStats[stat]!""}</td>
            </tr>
          </#list>
        </tbody>
      </table>

      <h1>Instance Info</h1>

      <table id='instanceInfo' class="table table-striped table-hover">
        <thead>
          <tr><th>Name</th><th>Value</th></tr>
        <thead>
        <tbody>
          <#list instanceInfo?keys as key>
            <tr>
              <td>${key}</td><td>${instanceInfo[key]!""}</td>
            </tr>
          </#list>
        </tbody>
      </table>
    </div>

    <div style="text-align: center;font-size: 20px;">
        <span id="busuanzi_container_page_pv">本页面已被围观 <span id="busuanzi_value_page_pv"></span> 次</span>
    </div>

    <script type="text/javascript" src="eureka/js/wro.js" ></script>
    <script type="text/javascript">
       $(document).ready(function() {
         $('table.stripeable tr:odd').addClass('odd');
         $('table.stripeable tr:even').addClass('even');
       });
    </script>

    <script type="text/javascript">
        (function(i,s,o,g,r,a,m) {i['GoogleAnalyticsObject']=r;i[r]=i[r]||function() {
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-83645028-1', 'auto');
        ga('send', 'pageview');
    </script>

    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?3e1cdb5d0a9e409358566f06f89e048d";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

    <script async src="//dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>

    <div class="row" style="text-align: center;">
      <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
      <!-- eureka-server-bottom -->
      <ins class="adsbygoogle"
           style="display:block"
           data-ad-client="ca-pub-8254913025324557"
           data-ad-slot="7666911039"
           data-ad-format="auto"></ins>
      <script>
          (adsbygoogle = window.adsbygoogle || []).push({});
      </script>
    </div>

    <#--changyan -->
    <div id="SOHUCS" ></div>
    <script charset="utf-8" type="text/javascript" src="https://changyan.sohu.com/upload/changyan.js" ></script>
    <script type="text/javascript">
        window.changyan.api.config({
            appid: 'cysUhh1Hu',
            conf: 'prod_08161dc143f28514db917a0fa4a34b91'
        });
    </script>
    <#--changyan shiyanshi-->
    <script type="text/javascript" charset="utf-8" src="https://changyan.itc.cn/js/lib/jquery.js"></script>
    <script type="text/javascript" charset="utf-8" src="https://changyan.sohu.com/js/changyan.labs.https.js?appid=cysUhh1Hu"></script>

  </body>
</html>
