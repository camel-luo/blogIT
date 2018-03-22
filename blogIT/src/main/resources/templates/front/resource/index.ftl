<#include "/front/layout/__layout_resource.ftl">
<#include "/front/layout/_paginate.ftl">
<@html>
<section class="sort" style="width:96%">
    <div class="wrap">
        <div class="sort-mode">
            <h1>全部资源</h1>
            <dl>
                <dt>资源类型<i class="am-icon-chevron-down arrow"></i></dt>
                <dd><p><a href="//download.jikexueyuan.com/index/nav/1-0" title="">源码</a></p>

                    <p><a href="//download.jikexueyuan.com/index/nav/2-0" title="">教程</a></p>

                    <p><a href="//download.jikexueyuan.com/index/nav/3-0" title="">文档/电子书</a></p>

                    <p><a href="//download.jikexueyuan.com/index/nav/4-0" title="">工具/软件</a></p>

                    <p><a href="//download.jikexueyuan.com/index/nav/5-0" title="">其他</a></p>

                    <p><a href="//download.jikexueyuan.com/index/nav/6-0" title="">全部</a></p>
                </dd>
            </dl>
            <dl>
                <dt>排序条件<i class="am-icon-chevron-down arrow"></i></dt>
                <dd><p><a href="//download.jikexueyuan.com/index/nav/0-1" title="" rel="nofllow">更新时间</a></p>

                    <p><a href="//download.jikexueyuan.com/index/nav/0-2" title="" rel="nofllow">查看次数</a></p>

                    <p><a href="//download.jikexueyuan.com/index/nav/0-3" title="" rel="nofllow">下载次数</a></p>
                </dd>
            </dl>
        </div>
        <div class="other">
            <div class="upload"><a href="//download.jikexueyuan.com/upload/" class="" title="" target="_blank"><i
                    class="icon am-icon-edit"></i>上传资源</a></div>
        </div>
    </div>
</section>
<div id="blog-list" style="width:96%">
    <#if (page.content?size > 0)>
        <#list page.content as x>
            <div class="qing-entry-text">
                <div class="qing-list-title">
                    <a href="/b/view/1"> ${x.title}</a>
                </div>

                <p class="qing-list-content">${x.summary}&nbsp;&nbsp;<a href="/b/view/1"
                                                                        style="margin-left: 10px; color: #1abc9c;">详情&gt;&gt;</a>
                </p>

                <div class="qing-list-hint">
                    <div class="am-u-md-9">
                        <div class="qing-list-icons">
                            <span class=""><i class="am-icon-user" title="作者"></i>&nbsp;${x.author.nickName}</span>&nbsp;
                            <span><i class="am-icon-clock-o" title="时间"></i>&nbsp;${x.createAt}</span>&nbsp;
                            <span><i class="am-icon-download" title="下载量"></i>&nbsp;${x.num}</span>&nbsp;
                            <span><i class="am-icon-bars" title="资源类型"></i>&nbsp;<#if (x.type == 0)>
                                源码<#elseif (x.type == 1)>教程<#elseif (x.type == 2)>文档/电子书<#elseif (x.type == 3)>
                                工具/软件<#else>其他</#if></span>&nbsp;
                        </div>
                        <div class="qing-list-type">
                            <#list x.tags?split(",") as tag>
                                <a href="javascript:void(0)" title="" target="_blank">${tag}</a>
                            </#list>
                        </div>
                    </div>
                    <div class="am-u-md-3 qing-list-download" style="padding: 0px;">
                        <a target="_blank" href="javascript:void(0)" title="" class="btn btn-def btn-download"><i
                                class="am-icon-download"></i>下载</a>
                    </div>
                </div>
                <#if x_has_next>
                    <div style="clear: both;height: 20px;border-bottom: 1px dashed #eaeaea;"></div>
                <#else>
                    <div style="clear: both;height: 20px;"></div>
                </#if>

            </div>
        </#list>
    <#else>
        <div class="qing-content">
            没有任何数据
        </div>
    </#if>
</div>
<!-- 分页 -->
    <@paginate currentPage=page.number + 1  totalPage=page.totalPages link="/b/index?p=" />
</@html>
