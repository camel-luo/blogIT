<section class="pe-list" id="_category">
    <div class="box-aw"> 个人微信</div>
    <#--<aside class="box-fl left">-->

        <#--<div class="project-sort">-->
            <#--<header class="box title vertical">-->
			<#--<span class="box-fr">-->
				<#--<svg width="5" height="10" viewBox="0 0 5 10" class="arrow-w">-->
                    <#--<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-w"></use>-->
                <#--</svg>-->
			<#--</span>-->

                <#--<div class="box-aw">-->
                    <#--全部项目分类-->
                <#--</div>-->
            <#--</header>-->
            <#--<div id="v-sort">-->
                <#--<div class="menus">-->
                    <#--<#list categorys as category>-->
                    <#--<div class="item">-->
                        <#--<a class="box menu vertical">-->
					<#--<span class="box-fr ic">-->
						<#--<svg width="5" height="10" viewBox="0 0 5 10" class="arrow-w">-->
                            <#--<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-w"></use>-->
                        <#--</svg>-->

					<#--</span>-->
                            <#--<span class="box-aw name">${category.name}</span>-->
                        <#--</a>-->

                        <#--<div class="drop">-->
                            <#--<div class="box-aw sort-list">-->
                                <#--<#list category.childs as child>-->
                                <#--<a href="/project/lang/19/java" title="Java">-->
                                    <#--<span class="name">${child.name}</span>-->
                                    <#--<span class="num">(${child.num})</span>-->
                                <#--</a>-->
                                <#--</#list>-->
                            <#--</div>-->
                        <#--</div>-->
                    <#--</div>-->
                    <#--</#list>-->
                    <#--<div class="drop-mask">-->

                    <#--</div>-->
                <#--</div>-->
            <#--</div>-->
        <#--</div>-->
        <#--<template id="project-sort">-->
            <#--<div class="menus" @mouseleave="clearDrop()" @mouseenter="countDown()">-->
                <#--<div class="item" v-for="(index,item) in param.menu.items">-->
                    <#--<a class="box menu vertical"-->
                       <#--:class="{'active': active &amp;&amp; (my === index),'selected': item.active}"-->
                       <#--@mouseleave.stop="action()" @mouseenter="showDrop(index)">-->
					<#--<span class="box-fr ic">-->
						<#--<svg width="5" height="10" viewBox="0 0 5 10" class="arrow-w">-->
                            <#--<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-w"></use>-->
                        <#--</svg>-->

					<#--</span>-->
                        <#--<span class="box-aw name" v-text="item.name"></span>-->
                    <#--</a>-->

                    <#--<div class="drop" :class="{'open': active &amp;&amp; (my === index)}">-->
                        <#--<div class="box-aw sort-list">-->
                            <#--<a :href="child.href" v-for="child in item.childs" :title="child.name">-->
                                <#--<span class="name" v-text="child.name"></span>-->
                                <#--<span class="num" v-text="child.num"></span>-->
                            <#--</a>-->
                        <#--</div>-->
                    <#--</div>-->
                <#--</div>-->
                <#--<div class="drop-mask" :class="{'open': active &amp;&amp; (my !== index)}">-->

                <#--</div>-->
            <#--</div>-->
        <#--</template>-->
        <#--<div name="www_project_left" data-traceid="www_project_left_ad" data-tracepid="www_project_left">-->
            <#--<p></p>-->
            <#--<center>-->

            <#--</center>-->
        <#--</div>-->
    <#--</aside>-->
    <#--<div class="panel-wrapper" style="margin-top:30px;">-->
        <#--<header class="panel-heading">-->
            <#--<span class="title">知名开源软件作者</span>-->
        <#--</header>-->
        <#--<section class="panel-body">-->
            <#--<div class="author-list">-->
                <#--<div class="box vertical author">-->
                    <#--<a href="https://my.oschina.net/barat" class="box-fl" title="巴拉迪维">-->
                        <#--<img class="blog-author"-->
                             <#--src="https://static.oschina.net/uploads/user/119/238589_50.jpeg?t=1484804948000"-->
                             <#--alt="巴拉迪维">-->
                    <#--</a>-->

                    <#--<div class="box-aw">-->
                        <#--<a href="https://my.oschina.net/barat" class="name" title="巴拉迪维">巴拉迪维</a>-->

                        <#--<div class="book"><a href="https://www.oschina.net/p/oschina-wp7-app"> OSCHINA WP7 客户端 作者</a>-->
                        <#--</div>-->
                    <#--</div>-->
                <#--</div>-->
                <#--<div class="box vertical author">-->
                    <#--<a href="https://my.oschina.net/javayou" class="box-fl" title="红薯">-->
                        <#--<img class="blog-author"-->
                             <#--src="https://static.oschina.net/uploads/user/0/12_50.jpg?t=1421200584000" alt="红薯">-->
                    <#--</a>-->

                    <#--<div class="box-aw">-->
                        <#--<a href="https://my.oschina.net/javayou" class="name" title="红薯">红薯</a>-->

                        <#--<div class="book"><a href="https://www.oschina.net/p/py3cache"> Py3Cache 作者</a></div>-->
                    <#--</div>-->
                <#--</div>-->
                <#--<div class="box vertical author">-->
                    <#--<a href="https://my.oschina.net/sbz" class="box-fl" title="少帮主">-->
                        <#--<img class="blog-author"-->
                             <#--src="https://static.oschina.net/uploads/user/119/238589_50.jpeg?t=1484804948000" alt="少帮主">-->
                    <#--</a>-->

                    <#--<div class="box-aw">-->
                        <#--<a href="https://my.oschina.net/sbz" class="name" title="少帮主">少帮主</a>-->

                        <#--<div class="book"><a href="https://www.oschina.net/p/zwall"> ZWall 作者</a></div>-->
                    <#--</div>-->
                <#--</div>-->
                <#--<div class="box vertical author">-->
                    <#--<a href="https://my.oschina.net/liygheart" class="box-fl" title="朋也">-->
                        <#--<img class="blog-author"-->
                             <#--src="https://static.oschina.net/uploads/user/136/273712_50.jpg?t=1401267688000" alt="朋也">-->
                    <#--</a>-->

                    <#--<div class="box-aw">-->
                        <#--<a href="https://my.oschina.net/liygheart" class="name" title="朋也">朋也</a>-->

                        <#--<div class="book"><a href="https://www.oschina.net/p/jfinalbbs"> JFinal社区 作者</a></div>-->
                    <#--</div>-->
                <#--</div>-->
                <#--<div class="box vertical author">-->
                    <#--<a href="https://my.oschina.net/xdev" class="box-fl" title="xdev">-->
                        <#--<img class="blog-author"-->
                             <#--src="https://static.oschina.net/uploads/user/99/198088_50.jpg?t=1363372251000" alt="xdev">-->
                    <#--</a>-->

                    <#--<div class="box-aw">-->
                        <#--<a href="https://my.oschina.net/xdev" class="name" title="xdev">xdev</a>-->

                        <#--<div class="book"><a href="https://www.oschina.net/p/hbuilder"> HBuilder 作者</a></div>-->
                    <#--</div>-->
                <#--</div>-->
            <#--</div>-->
        <#--</section>-->
    <#--</div>-->
</section>
