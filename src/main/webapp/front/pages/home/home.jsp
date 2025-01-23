<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: #d7272a;
					}
		
		.recommends .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: #d7272a;
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: translate3d(0px, -10px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						border-radius: 4px;
						padding: 30px 20px;
						left: 10px;
						background: linear-gradient(240deg, rgba(255,255,255,1) 0%, rgba(238,238,238,1) 100%);
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: #fc8800;
					}
		
		.news .list-6 .swiper-button-next {
						border-radius: 4px;
						padding: 30px 20px;
						left: auto;
						background: linear-gradient(270deg, rgba(255,255,255,1) 0%, rgba(238,238,238,1) 100%);
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: #fc8800;
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: translate3d(0px,0px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #d7272a;
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #d7272a;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						border-radius: 100%;
						left: 10px;
						background: none;
						width: 40px;
						right: auto;
						height: 40px;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: #249940;
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: #249940;
					}
		
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						transform: translate3d(0px, 10px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"width":"100%","margin":"0px auto","flexWrap":"wrap","justifyContent":"center","display":"flex"}'>
			
				


            
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"padding":"0 0 40px","margin":"0px","borderColor":"#98dd90","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230201/fafbce155d1c4f7996eaa83c5577594e.jpg) no-repeat center top / 100% 100%,#eaeaea","borderWidth":"0 0 0px","display":"flex","width":"100%","position":"relative","borderStyle":"dotted","order":"6"}'>
					<div v-if="true && 1 == 1" class="news-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#d7272a","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230201/56ffd625da7e4aefa5ed423fa197b90f.jpg) no-repeat center center","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px","margin":"40px auto 40px","alignItems":"center","flexDirection":"row","display":"flex","justifyContent":"center","borderRadius":"0px","top":"0px","background":"url(http://codegen.caihongy.cn/20230201/9aabd363485449938312ac9f588c2c88.png) no-repeat center bottom","width":"100%","position":"relative","zIndex":"99","height":"56px"}'>
						<span :style='{"color":"#555","display":"none","fontSize":"16px","lineHeight":"56px","order":"2","textTransform":"uppercase","height":"56px"}'>HOME NEWS</span>
						<span :style='{"margin":"0 0px 0 0","color":"#202020","textAlign":"center","background":"none","display":"inline-block","width":"auto","fontSize":"32px","fontWeight":"bold"}'>公告资讯</span>
					</div>
					
					<div v-if="true && 1 == 2" class="news-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#d7272a","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230201/56ffd625da7e4aefa5ed423fa197b90f.jpg) no-repeat center center","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<div :style='{"padding":"40px 7% 40px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' v-if="newsList.length" class="list list-10">
						<div v-if="newsList.length>0" @click="jump('../news/detail.jsp?id='+newsList[0].id)" :style='{"cursor":"pointer","margin":"0 0px","background":"none","width":"48%","position":"relative","height":"auto","order":"2"}' class="new10-list-item animation-box">
							<img :style='{"border":"0px solid #d7272a","padding":"4px  10px","objectFit":"cover","background":"url(http://codegen.caihongy.cn/20230201/e692aea55f98482aaa7f0290e1888901.png) no-repeat center top / 100% 100%","display":"block","width":"100%","height":"290px"}' :src="newsList[0].picture?baseurl+newsList[0].picture:''" alt="">
							<div :style='{"padding":"0 20px","margin":"20px 0 0 100px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","background":"#fff","width":"calc(100% - 100px)","fontSize":"16px","lineHeight":"40px","textOverflow":"ellipsis","fontWeight":"500"}' class="new9-list-item-title">{{newsList[0].title}}</div>
							<div :style='{"padding":"0 20px","margin":"0px 0 0 100px","overflow":"hidden","color":"#555","background":"#fff","width":"calc(100% - 100px)","fontSize":"14px","lineHeight":"30px","textIndent":"2em","height":"60px"}' class="new9-list-item-descript">{{newsList[0].introduction}}</div>
							<div :style='{"padding":"0px","color":"#fff","textAlign":"center","left":"0","background":"#d7272a","bottom":"0","display":"inline-block","width":"100px","fontSize":"14px","lineHeight":"100px","position":"absolute","height":"100px"}' class="new9-list-item-time">{{newsList[0].addtime.split(' ')[0]}}</div>
							<div :style='{"padding":"0 10px","margin":"0 10px 10px","color":"#999","background":"#fff","display":"none","fontSize":"12px","lineHeight":"24px"}' class="new9-list-item-identification">新闻动态</div>
						</div>
						<div v-if="newsList.length>1" :style='{"padding":"0 0 0 0px","margin":"0 0px","background":"url() no-repeat left top","flexDirection":"column","display":"block","width":"48%","position":"relative","justifyContent":"space-between","height":"400px"}'>
							<div v-for="(item,index) in newsList" v-if="index<4 && index>0" :key="index" @click="jump('../news/detail.jsp?id='+item.id)" :style='{"cursor":"pointer","padding":"0 0 0 120px","margin":"0 0 55px 0px","background":"#fff","width":"100%","position":"relative","height":"100px"}' class="new10-list-item animation-box">
								<div :style='{"padding":"10px 0 0","whiteSpace":"nowrap","overflow":"hidden","color":"#333","background":"none","width":"calc(100% - 20px)","fontSize":"16px","lineHeight":"1","textOverflow":"ellipsis","fontWeight":"500"}' class="new9-list-item-title">{{ item.title }}</div>
								<div :style='{"padding":"0 20px 0 0","margin":"5px auto 0","overflow":"hidden","color":"#555","background":"none","display":"block","width":"calc(100% - 0px)","fontSize":"14px","lineHeight":"30px","textIndent":"2em","height":"60px"}' class="new9-list-item-descript">{{ item.introduction }}</div>
								<div :style='{"color":"#fff","top":"0px","left":"0px","textAlign":"center","background":"#d7272a","width":"100px","fontSize":"14px","lineHeight":"100px","position":"absolute","height":"100px"}' class="new9-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
								<div :style='{"padding":"0 10px","fontSize":"12px","lineHeight":"24px","color":"#999","background":"#fff","display":"none"}' class="new9-list-item-identification">新闻动态</div>
							</div>
						</div>
					</div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 12px 0 20px","margin":"0px auto","borderColor":"#fad76f","textAlign":"center","display":"inline-block","minWidth":"150px","background":"url(http://codegen.caihongy.cn/20230201/cfbb5f5ca6984eff971e260d5f4583fe.png) no-repeat center top / 100% 100%","borderWidth":"0px","width":"auto","lineHeight":"50px","borderStyle":"dashed","height":"50px"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#eee","fontSize":"15px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#eee","fontSize":"15px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="true && 1 == 3" class="recommend-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#d7272a","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230201/56ffd625da7e4aefa5ed423fa197b90f.jpg) no-repeat center center","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
				<!-- 关于我们 -->
				<div :style='{"padding":"0px 0 0 0","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"0 0 0px","borderColor":"#98dd90","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0 0 0px","width":"100%","position":"relative","borderStyle":"dotted","height":"auto","order":"1"}'>
					<div :style='{"padding":"0 0 0px","margin":"0 0 0px","color":"#fff","textAlign":"right","letterSpacing":"2px","top":"100px","left":"calc(7% + 60px)","background":"none","width":"auto","fontSize":"42px","position":"absolute","fontWeight":"500","zIndex":"99","order":"1","height":"56px"}'>{{aboutUsDetail.title}}</div>
					<div :style='{"padding":"0px","margin":"0px 0 0px","color":"#555","textAlign":"left","display":"none","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","position":"relative","zIndex":"9","order":"2","height":"56px"}'>{{aboutUsDetail.subtitle}}</div>
					<div :style='{"padding":"0px","flexWrap":"wrap","background":"none","display":"block","width":"60%","height":"539px","order":"4"}'>
						<img :style='{"padding":"0px","margin":"0px","borderColor":"#249940","objectFit":"cover","borderRadius":"0px","borderWidth":"0px","background":"#fff","display":"block","width":"100%","borderStyle":"outset","height":"100%"}' :src="baseurl+aboutUsDetail.picture1">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl+aboutUsDetail.picture2">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl+aboutUsDetail.picture3">
					</div>
					<div :style='{"padding":"180px 30px 0 calc(7% + 60px)","margin":"0px","borderColor":"#b4e8af","color":"#fff","letterSpacing":"1px","textIndent":"0em","float":"left","overflow":"hidden","background":"#d7272a","borderWidth":"0px","width":"40%","lineHeight":"30px","fontSize":"18px","borderStyle":"inset","height":"539px","order":"3"}' v-html="aboutUsDetail.content"></div>
					<div :style='{"background":"url(http://codegen.caihongy.cn/20230201/db71bddc0a8b4a86bb745d1fc7a03f8c.png) no-repeat left bottom","bottom":"0","display":"block","width":"60%","position":"absolute","right":"0","height":"539px","zIndex":"9"}'></div>
					<div :style='{"top":"100px","left":"7%","background":"url(http://codegen.caihongy.cn/20230201/8789a999d4d54cd29e168150bd4ea9a4.png) no-repeat","display":"block","width":"38px","position":"absolute","height":"288px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
			

				<div class="lists" :style='{"padding":"0px 0 40px","margin":"0px auto 0","borderColor":"#98c6e2","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230201/af47692313ce4c4a84d27b31de018c78.jpg) no-repeat center center / 100% 100%,#eaeaea","borderWidth":"0 0 0px","display":"block","width":"100%","position":"relative","borderStyle":"dotted","order":"4"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#faf0e6","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230130/e43782b42d4547e9a7147c04acb1957d.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px","margin":"40px auto 40px","borderRadius":"0px","alignItems":"flex-start","background":"url(http://codegen.caihongy.cn/20230201/9aabd363485449938312ac9f588c2c88.png) no-repeat center bottom","flexDirection":"row","display":"flex","width":"auto","position":"relative","justifyContent":"center","height":"56px"}'>
					  <span :style='{"fontSize":"16px","lineHeight":"40px","color":"#555","display":"none","order":"2","textTransform":"uppercase"}'>DATA SHOW</span>
					  <span :style='{"padding":"0","margin":"0 0px 0 0","color":"#202020","background":"none","display":"inline-block","fontSize":"32px","fontWeight":"bold"}'>球队展示</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#faf0e6","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230130/e43782b42d4547e9a7147c04acb1957d.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div :style='{"width":"100%","padding":"0px 7%","background":"none","height":"auto"}' class="list  list-9">
						<div :style='{"width":"100%","margin":"0 0 20px","flexWrap":"wrap","justifyContent":"space-between","display":"flex","height":"480px"}' class="list-4-body">
							<div v-if="qiuduiList.length>0" @click="jump('../qiudui/detail.jsp?id='+qiuduiList[0].id)" class="list-4-item animation-box item-1" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"padding":"8px","objectFit":"cover","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20230201/e692aea55f98482aaa7f0290e1888901.png) no-repeat center top / 100% 100%","width":"100%","float":"left","height":"100%"}' :src="qiuduiList[0].qiuduitupian?baseurl+qiuduiList[0].qiuduitupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"36px","fontSize":"15px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{qiuduiList[0].qiuduimingcheng}}</div>
                                    <div>{{qiuduiList[0].chuangshiren}}</div>
                                    <div>{{qiuduiList[0].chuanglishijian}}</div>
                                </div>
							</div>
							<div v-if="qiuduiList.length>1" @click="jump('../qiudui/detail.jsp?id='+qiuduiList[1].id)" class="list-4-item animation-box item-2" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"padding":"8px","objectFit":"cover","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20230201/e692aea55f98482aaa7f0290e1888901.png) no-repeat center top / 100% 100%","width":"100%","float":"left","height":"100%"}' :src="qiuduiList[1].qiuduitupian?baseurl+qiuduiList[1].qiuduitupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"36px","fontSize":"15px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{qiuduiList[1].qiuduimingcheng}}</div>
                                    <div>{{qiuduiList[1].chuangshiren}}</div>
                                    <div>{{qiuduiList[1].chuanglishijian}}</div>
                                </div>
							</div>
						</div>
					    <div :style='{"width":"100%","flexWrap":"wrap","justifyContent":"space-between","display":"flex","height":"480px"}' class="list-4-body">
							<div v-if="qiuduiList.length>2" @click="jump('../qiudui/detail.jsp?id='+qiuduiList[2].id)" class="list-4-item animation-box item-3" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","height":"100%"}'>
								<img :style='{"padding":"8px","objectFit":"cover","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20230201/e692aea55f98482aaa7f0290e1888901.png) no-repeat center top / 100% 100%","width":"100%","float":"left","height":"100%"}' :src="qiuduiList[2].qiuduitupian?baseurl+qiuduiList[2].qiuduitupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"36px","fontSize":"15px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{qiuduiList[2].qiuduimingcheng}}</div>
                                    <div>{{qiuduiList[2].chuangshiren}}</div>
                                    <div>{{qiuduiList[2].chuanglishijian}}</div>
                                </div>
							</div>
							<div v-if="qiuduiList.length>3" @click="jump('../qiudui/detail.jsp?id='+qiuduiList[3].id)" class="list-4-item animation-box item-4" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","height":"100%"}'>
								<img :style='{"padding":"8px","objectFit":"cover","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20230201/e692aea55f98482aaa7f0290e1888901.png) no-repeat center top / 100% 100%","width":"100%","float":"left","height":"100%"}' :src="qiuduiList[3].qiuduitupian?baseurl+qiuduiList[3].qiuduitupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"36px","fontSize":"15px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{qiuduiList[3].qiuduimingcheng}}</div>
                                    <div>{{qiuduiList[3].chuangshiren}}</div>
                                    <div>{{qiuduiList[3].chuanglishijian}}</div>
                                </div>
							</div>
							<div v-if="qiuduiList.length>4" @click="jump('../qiudui/detail.jsp?id='+qiuduiList[4].id)" class="list-4-item animation-box item-5" :style='{"cursor":"pointer","width":"32%","margin":"0 0px","position":"relative","display":"none","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="qiuduiList[4].qiuduitupian?baseurl+qiuduiList[4].qiuduitupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{qiuduiList[4].qiuduimingcheng}}</div>
                                    <div>{{qiuduiList[4].chuangshiren}}</div>
                                    <div>{{qiuduiList[4].chuanglishijian}}</div>
                                </div>
							</div>
					    </div>
					</div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"20px auto 0","borderColor":"#999","textAlign":"center","display":"inline-block","minWidth":"150px","background":"url(http://codegen.caihongy.cn/20230201/cfbb5f5ca6984eff971e260d5f4583fe.png) no-repeat center top / 100% 100%","borderWidth":"0px","width":"auto","lineHeight":"50px","borderStyle":"solid"}' @click="jump('../qiudui/list.jsp')">
						<span :style='{"color":"#eee","fontSize":"15px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#eee","fontSize":"15px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"width":"100%","padding":"0px","flexWrap":"wrap","background":"#faf0e6","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230130/e43782b42d4547e9a7147c04acb1957d.jpg) no-repeat center center / 100% 100%","height":"280px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 图文列表 -->


			
				<!-- 系统简介 -->
				<div :style='{"padding":"0px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"0","borderColor":"#98dd90","display":"flex","flexWrap":"wrap","background":"none","borderWidth":"0 0 0px","width":"100%","position":"relative","borderStyle":"dotted","height":"auto","order":"3"}'>
					<div :style='{"padding":"0 20px 0 40px","margin":"0px","color":"#d7272a","textAlign":"center","right":"7%","top":"100px","background":"url(http://codegen.caihongy.cn/20230201/b467a6a74e1148f0bfbff828c9463e48.png) no-repeat left bottom,#fff","width":"auto","fontSize":"32px","lineHeight":"59px","position":"absolute","fontWeight":"500","height":"59px","zIndex":"999"}'>{{systemIntroductionDetail.title}}</div>
					<div :style='{"margin":"0px 0 0px","color":"#fff","textAlign":"left","display":"none","width":"100%","lineHeight":"24px","fontSize":"16px"}'>{{systemIntroductionDetail.subtitle}}</div>
					<div :style='{"width":"60%","padding":"0 0px","flexWrap":"wrap","justifyContent":"space-between","display":"flex","height":"539px"}'>
						<img :style='{"padding":"0px","margin":"0px","borderColor":"#b4e8af","objectFit":"cover","borderWidth":"0px","background":"none","display":"block","width":"100%","borderStyle":"outset","height":"100%"}' :src="baseurl + systemIntroductionDetail.picture1">
						<img :style='{"padding":"0px","margin":"0px 0px 0","borderColor":"#bdefb6","objectFit":"cover","borderRadius":"8px","borderWidth":"0px","background":"none","display":"none","width":"32%","borderStyle":"solid","height":"220px"}' :src="baseurl + systemIntroductionDetail.picture2">
						<img :style='{"border":"0px solid #bdefb6","padding":"0px","margin":"10px 0px 0","objectFit":"cover","borderRadius":"8px","display":"none","width":"32%","height":"220px"}' :src="baseurl + systemIntroductionDetail.picture3">
					</div>
					<div :style='{"padding":"180px 7% 0 40px","margin":"0px","borderColor":"#fad76f","color":"#fff","textIndent":"2em","overflow":"hidden","borderRadius":"0px","background":"#d7272a","borderWidth":"0px","width":"40%","lineHeight":"2","fontSize":"18px","position":"relative","borderStyle":"groove","height":"539px","zIndex":"99"}' v-html="systemIntroductionDetail.content"></div>
					<div :style='{"top":"0","left":"0","background":"url(http://codegen.caihongy.cn/20230201/8018c9bb444643529eebedb9dabba923.png)  no-repeat right top / auto 100%","display":"block","width":"60%","position":"absolute","height":"539px"}'></div>
					<div :style='{"top":"460px","background":"url(http://codegen.caihongy.cn/20230115/ea1e131b397d4fd1908ae293d5f46e0a.png)  no-repeat left top / 240px 240px","display":"none","width":"240px","position":"absolute","right":"7%","height":"240px","zIndex":"1"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {





                    qiuduiList: [],


                    aboutUsDetail:{},
                    systemIntroductionDetail: {},
                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '600px',
								anim: 'updown',
								autoplay: 'true',
								interval: '5000',
								arrow: 'none',
								indicator: 'inside'
							});
						})
					}
				});

                http.request(`aboutus/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.aboutUsDetail = res.data;
                    }
                });
                http.request(`systemintro/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.systemIntroductionDetail = res.data;
                    }
                });

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 6,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 10;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"3","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                


				

                http.request(`qiudui/list`, 'get', {
					page: 1,
					limit: 6,
				}, function(res) {
					vue.qiuduiList = res.data.list
					
					let flag = 9;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"3","speed":500,"spaceBetween":40,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listsqiudui', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperqiudui', {
								loop: true,
								speed: 600,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":"6000","disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
