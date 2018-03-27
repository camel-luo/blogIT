<section class="pe-list" id="_category">
    <aside class="box-fl left">

        <div class="project-sort">
            <header class="box title vertical">
			<span class="box-fr">
				<svg width="5" height="10" viewBox="0 0 5 10" class="arrow-w">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-w"></use>
                </svg>
			</span>

                <div class="box-aw">
                    博文类别
                </div>
            </header>
            <div id="v-sort">
                <div class="menus">
                    <@tagList>
                        <#list list as x>
                            <div class="item">
                                <a class="box menu vertical" href="${ctx!}/t/${x.name}">
                                    <span class="box-fr ic">
                                        <svg width="5" height="10" viewBox="0 0 5 10" class="arrow-w">
                                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-w"></use>
                                        </svg>

                                    </span>
                                    <span class="box-aw name">${x.name}(${x.count})</span>
                                </a>
                            </div>


                        </#list>
                    </@tagList>
                </div>
            </div>
        </div>

        <template id="project-sort">
            <div class="menus" @mouseleave="clearDrop()" @mouseenter="countDown()">
                <div class="item" v-for="(index,item) in param.menu.items">
                    <a class="box menu vertical"
                       :class="{'active': active &amp;&amp; (my === index),'selected': item.active}"
                       @mouseleave.stop="action()" @mouseenter="showDrop(index)">
					<span class="box-fr ic">
						<svg width="5" height="10" viewBox="0 0 5 10" class="arrow-w">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-w"></use>
                        </svg>

					</span>
                        <span class="box-aw name" v-text="item.name"></span>
                    </a>

                    <div class="drop" :class="{'open': active &amp;&amp; (my === index)}">
                        <div class="box-aw sort-list">
                            <a :href="child.href" v-for="child in item.childs" :title="child.name">
                                <span class="name" v-text="child.name"></span>
                                <span class="num" v-text="child.num"></span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="drop-mask" :class="{'open': active &amp;&amp; (my !== index)}">

                </div>
            </div>
        </template>
        <div name="www_project_left" data-traceid="www_project_left_ad" data-tracepid="www_project_left">
            <p></p>
            <center>

            </center>
        </div>
    </aside>
    <div class="panel-wrapper" style="margin-top:30px;">
        <header class="panel-heading">
            <span class="title">招聘信息</span>
            <a href="/project/list?sort=time&amp;__from=plist-more" style=" float: right; ">更多</a>
        </header>
        <section class="panel-body">
            <div class="author-list">
                <div class="box vertical author">
                    <a href="https://job.alibaba.com/zhaopin/positionList.htm" class="box-fl" title="阿里巴巴">
                        <img class="blog-author"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522141194725&di=97793ae560a38653b713eb9cb35ece82&imgtype=0&src=http%3A%2F%2Fimg10.cn.gcimg.net%2Fgcproduct%2Fday_20141209%2F2a6e9615806065f96ce700ee1e918370.jpg-310x310.jpg"
                             alt="阿里巴巴">
                    </a>

                    <div class="box-aw">
                        <a href="https://job.alibaba.com/zhaopin/positionList.htm" class="name" title="阿里巴巴">阿里巴巴</a>
                        <div class="book">
                            <a href="https://job.alibaba.com/zhaopin/positionList.htm">
                                <span class="call">Java工程师</span>
                                <#--<span class="num">(5)</span>-->
                            </a>
                        </div>
                    </div>
                </div>
                <div class="box vertical author">
                    <a href="https://hr.tencent.com/position.php?keywords=%E8%AF%B7%E8%BE%93%E5%85%A5%E5%85%B3%E9%94%AE%E8%AF%8D&lid=2156&tid=87#a" class="box-fl" title="腾讯">
                        <img class="blog-author"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493120960721&di=f50ea4cc8a8c70824464ddfeb8e5477d&imgtype=jpg&src=http%3A%2F%2Fimg4.imgtn.bdimg.com%2Fit%2Fu%3D294831732%2C560060165%26fm%3D214%26gp%3D0.jpg" alt="腾讯">
                    </a>

                    <div class="box-aw">
                        <a href="https://hr.tencent.com/position.php?keywords=%E8%AF%B7%E8%BE%93%E5%85%A5%E5%85%B3%E9%94%AE%E8%AF%8D&lid=2156&tid=87#a" class="name" title="腾讯">腾讯</a>

                        <div class="book">
                            <a href="https://hr.tencent.com/position.php?keywords=%E8%AF%B7%E8%BE%93%E5%85%A5%E5%85%B3%E9%94%AE%E8%AF%8D&lid=2156&tid=87#a">
                                <span class="call">Java工程师</span>
                                <#--<span class="num">(5)</span>-->
                            </a>
                        </div>
                    </div>
                </div>
                <div class="box vertical author">
                    <a href="https://talent.baidu.com/external/baidu/index.html#/social/2" class="box-fl" title="百度">
                        <img class="blog-author"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493121051325&di=0494d82059d708c1fec80a66e940954b&imgtype=0&src=http%3A%2F%2Fcuimg.zuyushop.com%2FcuxiaoPic%2F201412%2F2014120020045241723.jpg" alt="百度">
                    </a>

                    <div class="box-aw">
                        <a href="https://talent.baidu.com/external/baidu/index.html#/social/2" class="name" title="百度">百度</a>

                        <div class="book">
                            <a href="https://talent.baidu.com/external/baidu/index.html#/social/2">
                                <span class="call">Java工程师</span>
                                <#--<span class="num">(5)</span>-->
                            </a>
                        </div>
                    </div>
                </div>
                <div class="box vertical author">
                    <a href="http://career.huawei.com/socRecruitment/soc_index.html#soc/pages/home/socHome.html?language=cn" class="box-fl" title="华为">
                        <img class="blog-author"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493121108827&di=1ddec869fa4dc99b7176e456a0ede86a&imgtype=0&src=http%3A%2F%2Fpic21.photophoto.cn%2F20111122%2F0007019944803434_b.jpg" alt="华为">
                    </a>

                    <div class="box-aw">
                        <a href="http://career.huawei.com/socRecruitment/soc_index.html#soc/pages/home/socHome.html?language=cn" class="name" title="华为">华为</a>

                        <div class="book">
                            <a href="http://career.huawei.com/socRecruitment/soc_index.html#soc/pages/home/socHome.html?language=cn">
                                <span class="call">Java工程师</span>
                                <#--<span class="num">(5)</span>-->
                            </a>
                        </div>
                    </div>
                </div>
                <div class="box vertical author">
                    <a href="http://hr.xiaomi.com/job/list" class="box-fl" title="小米">
                        <img class="blog-author"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493121186964&di=8c994fcd2f2bad644185be2f6003f6b0&imgtype=0&src=http%3A%2F%2Fww1.sinaimg.cn%2Flarge%2F86afb21etw1egp7l49flij20c80gcmy2.jpg" alt="小米">
                    </a>

                    <div class="box-aw">
                        <a href="http://hr.xiaomi.com/job/list" class="name" title="xdev">小米</a>

                        <div class="book">
                            <a href="http://hr.xiaomi.com/job/list">
                                <span class="call">Java工程师</span>
                                <#--<span class="num">(5)</span>-->
                            </a>
                        </div>
                    </div>
                </div>

                <div class="box vertical author">
                    <a href="https://zhaopin.jd.com/JD/web/index/social" class="box-fl" title="京东">
                        <img class="blog-author"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493121308706&di=d8e4e4aeae67b722691d167de8f95361&imgtype=0&src=http%3A%2F%2Fwww.lgstatic.com%2Fthumbnail_300x300%2Fimage1%2FM00%2F00%2F76%2FCgo8PFTUXamAG-mAAAC6GKBL05Q507.png" alt="京东">
                    </a>

                    <div class="box-aw">
                        <a href="https://zhaopin.jd.com/JD/web/index/social" class="name" title="xdev">京东</a>

                        <div class="book">
                            <a href="https://zhaopin.jd.com/JD/web/index/social">
                                <span class="call">Java工程师</span>
                                <#--<span class="num">(5)</span>-->
                            </a>
                        </div>
                    </div>
                </div>

                <div class="box vertical author">
                    <a href="https://zhaopin.meituan.com/job-list" class="box-fl" title="美团">
                        <img class="blog-author"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1493121406491&di=4ddd418827655819e8e7b55c166b749b&imgtype=0&src=http%3A%2F%2Fimg.25pp.com%2Fuploadfile%2Fapp%2Ficon%2F20160411%2F1460343670420901.jpg" alt="美团">
                    </a>

                    <div class="box-aw">
                        <a href="https://zhaopin.meituan.com/job-list" class="name" title="xdev">美团</a>

                        <div class="book">
                            <a href="https://zhaopin.meituan.com/job-list">
                                <span class="call">Java工程师</span>
                                <#--<span class="num">(5)</span>-->
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</section>
