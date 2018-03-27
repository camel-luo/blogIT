<#include "/front/layout/__layout_resource.ftl">
<#include "/front/layout/_paginate.ftl">
<@html>
<div id="blog-list" style="width:96%">
    <#--<#if (page.content?size > 0)>-->
        <#--<#list page.content as x>-->
            <#--<div class="qing-entry-text">-->
                <#--<div class="qing-list-title">-->
                    <#--<a href="/b/view/1"> ${x.title}</a>-->
                <#--</div>-->

                <#--<p class="qing-list-content">${x.summary}&nbsp;&nbsp;<a href="/b/view/1"-->
                                                                        <#--style="margin-left: 10px; color: #1abc9c;">详情&gt;&gt;</a>-->
                <#--</p>-->

                <#--<div class="qing-list-hint">-->
                    <#--<div class="am-u-md-9">-->
                        <#--<div class="qing-list-icons">-->
                            <#--<span class=""><i class="am-icon-user" title="作者"></i>&nbsp;${x.author.nickName}</span>&nbsp;-->
                            <#--<span><i class="am-icon-clock-o" title="时间"></i>&nbsp;${x.createAt}</span>&nbsp;-->
                            <#--<span><i class="am-icon-download" title="下载量"></i>&nbsp;${x.num}</span>&nbsp;-->
                            <#--<span><i class="am-icon-bars" title="资源类型"></i>&nbsp;<#if (x.type == 0)>-->
                                <#--源码<#elseif (x.type == 1)>教程<#elseif (x.type == 2)>文档/电子书<#elseif (x.type == 3)>-->
                                <#--工具/软件<#else>其他</#if></span>&nbsp;-->
                        <#--</div>-->
                        <#--<div class="qing-list-type">-->
                            <#--<#list x.tags?split(",") as tag>-->
                                <#--<a href="javascript:void(0)" title="" target="_blank">${tag}</a>-->
                            <#--</#list>-->
                        <#--</div>-->
                    <#--</div>-->
                    <#--<div class="am-u-md-3 qing-list-download" style="padding: 0px;">-->
                        <#--<a target="_blank" href="javascript:void(0)" title="" class="btn btn-def btn-download"><i-->
                                <#--class="am-icon-download"></i>下载</a>-->
                    <#--</div>-->
                <#--</div>-->
                <#--<#if x_has_next>-->
                    <#--<div style="clear: both;height: 20px;border-bottom: 1px dashed #eaeaea;"></div>-->
                <#--<#else>-->
                    <#--<div style="clear: both;height: 20px;"></div>-->
                <#--</#if>-->

            <#--</div>-->
        <#--</#list>-->
    <#--<#else>-->
        <#--<div class="qing-content">-->
            <#--敬请期待，攻城狮正在努力开发中。。。-->
        <#--</div>-->
    <#--</#if>-->
    <#---->
        <div class="qing-content">
            敬请期待，攻城狮正在努力开发中。。。
        </div>
</div>
<!-- 分页 -->
    <@paginate currentPage=page.number + 1  totalPage=page.totalPages link="/b/index?p=" />
</@html>
