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
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#swiper .layui-carousel-arrow[lay-type=sub] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=sub]:hover {
						background: #cca161;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add]:hover {
						background: #cca161;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-ind {
						top: -35px;
						width: 100%;
						position: relative;
					}
		
		#swiper .layui-carousel-ind ul {
						border-radius: 10px;
						padding: 5px;
						background: rgba(0,0,0,.2);
						display: inline-block;
					}
		
		#swiper .layui-carousel-ind ul li {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,.5);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		#swiper .layui-carousel-ind ul li:hover {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,.7);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		#swiper .layui-carousel-ind ul li.layui-this {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,1);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		.layui-tab-card .layui-tab-title li {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 10px 0 0;
						color: #333;
						font-size: 14px;
						border-color: #e99595;
						line-height: 40px;
						border-radius: 50% 50% 0 0;
						box-shadow: inset 0px 0px 12px 0px #eee;
						background: #fff;
						width: auto;
						border-width: 6px 6px 0px 6px;
						border-style: solid;
						text-align: center;
						min-width: 110px;
						height: 40px;
					}
		
		.layui-tab-card .layui-tab-title li:hover {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 10px 0 0;
						color: #333;
						font-size: 14px;
						border-color: #e85151 #e99595 #e99595;
						line-height: 40px;
						border-radius: 30px 30px 0px 0px;
						background: #fff;
						width: auto;
						border-width: 6px 6px 0px 6px;
						border-style: solid;
						text-align: center;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 10px 0 0;
						color: #333;
						font-size: 14px;
						border-color: #e85151 #e99595 #e99595;
						line-height: 40px;
						border-radius: 30px 30px 0px 0px;
						box-shadow: inset 0px 0px 60px 0px #f7bdbd;
						background: #fff;
						width: auto;
						border-width: 6px 6px 0px 6px;
						border-style: solid;
						text-align: center;
						min-width: 110px;
						height: 40px;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this::after {
			content: none;
		}
	</style>
	<body>
		<div id="app">
			<div id="layui-carousel" class="layui-carousel">
                <div carousel-item>
                    <div class="layui-carousel-item" v-for="(item,index) in swiperList2" :key="index">
                        <img :src="item.img" />
                    </div>
                </div>	
			</div>
		
			<div id="breadcrumb">
				<a class="en" href="../home/home.jsp">首页</a>
				<!-- <span class="en">DETAIL / INFORMATION</span> -->
				<span class="cn">{{title}}</span>
			</div>
			
			<div class="data-detail" :style='{"padding":"0px 0 40px","margin":"0px auto 0","alignItems":"flex-start","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative","justifyContent":"space-between"}'>
				<div :style='{"padding":"0","boxShadow":"0px 0px 0px #eee","borderColor":"#ddd","display":"flex","justifyContent":"space-between","overflow":"hidden","borderRadius":"0px","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid"}'>
					
					<div class="layui-carousel" id="swiper" :style='{"border":"0px solid #bdefb6","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","padding":"40px 25% 40px 25%","margin":"0px auto 0","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20230202/738791e5d58a4645a4ee25591f67fcca.jpg) no-repeat left top / 600px auto,url(http://codegen.caihongy.cn/20230202/8ab48bc29535492eb17dd1756fd6f963.jpg) no-repeat right bottom / 600px auto","width":"100%","order":"1","height":"600px"}'>
						<div carousel-item>
							<div :style='{"width":"100%","height":"100%"}' v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
								<img :style='{"width":"100%","objectFit":"cover","borderRadius":"8px","height":"100%"}' :src="baseurl+item" />
							</div>
						</div>
					</div>




					<div :style='{"minHeight":"500px","padding":"20px 0 20px 0","margin":"0px 7% 0px 7%","background":"url() center top","flex":"1","width":"86%","order":"3"}'>
						<div :style='{"padding":"6px 80px 6px 50px","boxShadow":"inset 0px 0px 0px 0px #93c8e7","margin":"0 0 10px 0","borderColor":"#ebdcc6","alignItems":"center","borderRadius":"0px","background":"linear-gradient(90deg, rgba(51,51,51,1) 0%, rgba(255,255,255,1) 100%, rgba(51,51,51,1) 100%)","borderWidth":"0 0 0px","display":"flex","borderStyle":"solid","justifyContent":"space-between"}'>
							<div :style='{"color":"#fff","fontSize":"20px","fontWeight":"600"}'>{{title}}</div>
							<div v-if='storeupFlag' :style='{"cursor":"pointer","padding":"8px 10px","borderRadius":"20px","background":"none"}' @click="storeUp()">
								<i class="layui-icon" :style='{"color":"#f50000","fontSize":"16px"}'>&#xe67a;</i>
								<span :style='{"color":"#f50000","fontSize":"15px"}'>取消收藏</span>
							</div>
							<div v-if='!storeupFlag' :style='{"cursor":"pointer","padding":"8px 10px","borderRadius":"20px","background":"none"}' @click="storeUp()">
								<i class="layui-icon" :style='{"color":"#f50000","fontSize":"16px"}'>&#xe67b;</i>
								<span :style='{"color":"#f50000","fontSize":"15px"}'>点我收藏</span>
							</div>
						</div>

						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#eee","background":"none","borderWidth":"0px 0px 4px","display":"flex","borderStyle":"double","justifyContent":"spaceBetween"}' v-if="detail.price" class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>价格：</div>
							<div :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}'>￥{{Number(detail.price).toFixed(2)}}</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#eee","background":"none","borderWidth":"0px 0px 4px","display":"flex","borderStyle":"double","justifyContent":"spaceBetween"}' v-if="detail.jf" class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>积分：</div>
							<div :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}'>
								{{detail.jf}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#eee","background":"none","borderWidth":"0px 0px 4px","display":"flex","borderStyle":"double","justifyContent":"spaceBetween"}' v-if="detail.onelimittimes" class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>单次购买：</div>
							<div :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.onelimittimes}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#eee","background":"none","borderWidth":"0px 0px 4px","display":"flex","borderStyle":"double","justifyContent":"spaceBetween"}' v-if="detail.alllimittimes" class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>库存：</div>
							<div :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.alllimittimes}}
							</div>
						</div>


						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#eee","background":"none","borderWidth":"0px 0px 4px","display":"flex","borderStyle":"double","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>商品编号：</div>
							<div  :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.shangpinbianhao}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#eee","background":"none","borderWidth":"0px 0px 4px","display":"flex","borderStyle":"double","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>生产地：</div>
							<div  :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.shengchandi}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#eee","background":"none","borderWidth":"0px 0px 4px","display":"flex","borderStyle":"double","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>商品分类：</div>
							<div  :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.shangpinfenlei}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #ddd","margin":"0 0 10px 0","borderColor":"#eee","background":"none","borderWidth":"0px 0px 4px","display":"flex","borderStyle":"double","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#333","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>品牌：</div>
							<div  :style='{"width":"100%","padding":"4px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.pinpai}}
							</div>
						</div>


						<div class="detail-item" :style='{"padding":"10px 0","flexWrap":"wrap","background":"none","display":"flex"}'>

							<div :style='{"margin":"0 5px 0 0","display":"flex"}' class="num-picker" >
								<button :style='{"border":"1px solid #ccc","padding":"0","boxShadow":"inset 0px 0px 0px 0px #dcedf8","color":"#333","background":"none","width":"40px","lineHeight":"32px","fontSize":"24px","height":"40px"}' type="button" @click="buynumber>0?buynumber--:buynumber" class="layui-btn layui-btn-primary">-</button>
								<input :style='{"padding":"0 10px","borderColor":"#ccc","margin":"0 0px","borderRadius":"0","color":"#333","textAlign":"center","borderWidth":"1px 0px","background":"none","width":"80px","lineHeight":"32px","borderStyle":"solid","height":"40px"}' type="number" v-model="buynumber" id="buynumber" name="buynumber" class="layui-input" disabled="disabled"></input>
								<button :style='{"border":"1px solid #ccc","padding":"0","boxShadow":"inset 0px 0px 0px 0px #dcedf8","color":"#333","background":"none","width":"40px","lineHeight":"32px","fontSize":"24px","height":"40px"}' type="button" @click="buynumber++" class="layui-btn layui-btn-primary">+</button>
							</div>
							<button  :style='{"border":"0px solid #b8d7f2","cursor":"pointer","padding":"0 10px","margin":"0 5px 0px 0","outline":"none","color":"#fff","borderRadius":"0px","background":"#f50000","width":"auto","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="addCartTap" type="button" class="layui-btn layui-btn-warm">
								添加到购物车
							</button>
							<button  :style='{"border":"0px solid #b5f0f0","cursor":"pointer","padding":"0 10px","margin":"0 5px 0px 0","outline":"none","color":"#fff","borderRadius":"0px","background":"#333","width":"auto","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="buyTap" type="button" class="layui-btn btn-submit">
								立即购买
							</button>


						</div>
					</div>
					
				</div>
				



				<div class="layui-tab layui-tab-card" :style='{"border":"0","padding":"0","boxShadow":"none","margin":"60px 7% 0 7%","borderColor":"#c7eec2","float":"right","overflow":"hidden","borderRadius":"0px","background":"none","borderWidth":"0px","flex":"1","width":"50%","borderStyle":"solid","order":"10"}'>
					<ul class="layui-tab-title" :style='{"border":"0","padding":"10px 0px 0px","fontSize":"0","textAlign":"center","background":"linear-gradient(240deg, rgba(51,51,51,1) 0%, rgba(255,255,255,1) 100%, rgba(51,51,51,1) 100%)","height":"50px"}'>

						<li class="layui-this">商品简介</li>



						<li>评论</li>







					</ul>
					<div :style='{"padding":"15px","background":"#fff"}' class="layui-tab-content">

						<div class="layui-tab-item layui-show">
							<div v-html="detail.shangpinjianjie"></div>
						</div>




						<div class="layui-tab-item" >
							<form class="layui-form message-form" :style='{"boxShadow":"0 0px 0px 0 rgba(0, 0, 0, .1)","padding":"15px","margin":"0 0 20px","borderColor":"#fff","borderWidth":"0px","background":"none","width":"100%","borderStyle":"dotted"}'>
								<div :style='{"width":"100%","background":"none","display":"flex","height":"auto"}' class="layui-form-item layui-form-text">
									<label :style='{"width":"80px","padding":"0 10px 0 0","lineHeight":"40px","fontSize":"14px","color":"#666","textAlign":"right"}' class="layui-form-label">评论</label>
									<textarea :style='{"border":"0","padding":"15px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","borderColor":"#ddd","color":"#333","minHeight":"150px","outline":"none","borderRadius":"0px","borderWidth":"1px","width":"1058px","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' name="content" required lay-verify="required" placeholder="请输入内容" class="layui-textarea"></textarea>
								</div>
								<div :style='{"width":"100%","padding":"0 0 0 80px","margin":"30px 0 0","textAlign":"center","height":"auto"}' class="layui-form-item">
									<button :style='{"cursor":"pointer","padding":"0","margin":"0 20px 0 0","borderColor":"#59B450","color":"#fff","outline":"none","borderRadius":"0px","background":"#000","borderWidth":"0px 0","width":"110px","lineHeight":"40px","fontSize":"14px","borderStyle":"solid","height":"40px"}' class="layui-btn btn-submit" lay-submit lay-filter="*">立即提交</button>
									<button :style='{"cursor":"pointer","padding":"0","margin":"0 20px 0 0","borderColor":"#999","color":"#fff","outline":"none","borderRadius":"0px","background":"#f50000","borderWidth":"0px 0","width":"110px","lineHeight":"40px","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</form>
							
							<div class="message-list" :style='{"boxShadow":"0 0px 0px 0 rgba(0, 0, 0, .1)","padding":"15px","borderColor":"#fff","borderWidth":"0px","background":"none","width":"100%","borderStyle":"groove"}'>
								<div :style='{"padding":"10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0 0 20px","borderColor":"#eee","alignItems":"center","borderWidth":"1px","background":"url(http://codegen.caihongy.cn/20230201/fafbce155d1c4f7996eaa83c5577594e.jpg) no-repeat center top,#eee","width":"100%","borderStyle":"solid","height":"auto"}' class="message-item" v-for="(item,index) in dataList" v-bind:key="index">
									<div :style='{"padding":"6px 0","borderColor":"#eee","alignItems":"center","borderWidth":"0 0 1px","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="username-container">
										<img :style='{"width":"40px","margin":"0 10px 0 0","borderRadius":"100%","objectFit":"cover","height":"40px"}' class="avator" :src="baseurl + item.avatarurl">
										<div :style='{"color":"#333","fontSize":"16px"}' class="username">{{item.nickname}}</div>
									</div>
									<div :style='{"padding":"8px","margin":"10px 0px 0px","borderColor":"#c7eec2","color":"#333","borderRadius":"0px","background":"none","borderWidth":"0px","lineHeight":"30px","fontSize":"14px","borderStyle":"solid","textIndent":"2em"}'>
										{{item.content}}
									</div>
									<div :style='{"padding":"8px","margin":"10px 0px 0px","borderColor":"#c7eec2","color":"#333","borderRadius":"0px","background":"none","borderWidth":"0px","lineHeight":"30px","fontSize":"14px","borderStyle":"solid","textIndent":"2em"}' v-if="item.reply" class="content">
										回复:{{item.reply}}
									</div>
								</div>
							</div>
							<div class="pager" id="pager"></div>
						</div>







					</div>
				</div>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
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
					// 轮播图
                    swiperList2: [{
                        img: '../../img/banner.jpg'
                    }],
					swiperList: [],
					// 数据详情
					detail: {
						id: 0
					},
					// 商品标题
					title: '',
					// 倒计时
					count: 0,
					// 加入购物车数量
					buynumber: 1,
					// 当前详情页表
					detailTable: 'gouwushangcheng',
					baseurl: '',
					// 评论列表
					dataList: [],
					storeupFlag: 0,
					// 选座座位列表
					numberList: []
				},
				// 倒计时效果
				computed: {
					SecondToDate: function() {
						var time = this.count;
						if (null != time && "" != time) {
							if (time > 60 && time < 60 * 60) {
								time =
									parseInt(time / 60.0) +
									"分钟" +
									parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
									"秒";
							} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else if (time >= 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0 / 24) +
									"天" +
									parseInt(
										(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
										24
									) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else {
								time = parseInt(time) + "秒";
							}
						}
						return time;
					}
				},
				//  清除定时器
				destroyed: function() {
					window.clearInterval(this.inter);
				},
				methods: {
                    // 初始化
                    init() {
                    },

					jump(url) {
						jump(url)
					},
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					// 倒计时初始化
					countDown() {
						let reversetime = new Date(this.detail.reversetime).getTime()
						let now = new Date().getTime();
						let count = reversetime - now;
						if (count > 0) {
							this.count = count / 1000
							var _this = this;
							this.inter = window.setInterval(function() {
								_this.count = _this.count - 1;
								if (_this.count < 0) {
									window.clearInterval(_this.inter);
									layer.msg("活动已结束", {
										time: 2000,
										icon: 5
									})
								}
							}, 1000);
						}
					},

					// 下载文件
					downFile(url) {
						var download = $("#download");
						download.append(
							"<a id=\"down\" href=\"aaaa.txt\" target=\"_blank\" download=\"aaaa.txt\" style=\"display:none\">下载该文件</a>");
						console.log(download);
						$("#down")[0].click();
					},
					// 跨表
					onAcrossTap(acrossTable,statusColumnName,tips,statusColumnValue){
						localStorage.setItem('crossTable',`gouwushangcheng`);
						localStorage.setItem('crossObj', JSON.stringify(this.detail));
						localStorage.setItem('statusColumnName',statusColumnName);
						localStorage.setItem('statusColumnValue',statusColumnValue);
						localStorage.setItem('tips',tips);

						if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							for (var o in obj){
								if(o==statusColumnName && obj[o]==statusColumnValue){
									layer.msg(tips, {
										time: 2000,
										icon: 5
									});
									return
								}
							}
						}

						jump(`../${acrossTable}/add.jsp?corss=true`);
					},
					// 添加到购物车
					addCartTap() {
						// 活动倒计时限制
						// 查询是否已经添加到购物车
						layui.http.request('cart/list', 'get', {
							userid: localStorage.getItem('userid'),
							tablename: `${this.detailTable}`,
							goodid: this.detail.id
						}, (res) => {
							if (res.data.list.length > 0) {
								layer.msg("该商品已经添加到购物车", {
									time: 2000,
									icon: 5
								});
								return
							}
							layui.http.requestJson('cart/save', 'post', {
								tablename: `${this.detailTable}`,
								goodid: this.detail.id,
								goodname: this.title,
                                picture:vue.detail.shangpintupian.split(",")[0],
								buynumber: this.buynumber,
								userid: localStorage.getItem('userid'),
								price: this.detail.price,
								discountprice: this.detail.vipprice ? this.detail.vipprice : 0
							}, (res) => {
								layer.msg("添加到购物车成功", {
									time: 2000,
									icon: 6
								});
							});
						})
					},

					// 立即购买
					buyTap() {
						// 活动倒计时限制
						// 保存到storage中，在确认下单页面中获取要购买的商品
						localStorage.setItem('orderGoods', JSON.stringify([{
							tablename: `${this.detailTable}`,
							goodid: this.detail.id,
							goodname: this.title,
                            picture:vue.detail.shangpintupian.split(",")[0],
							buynumber: this.buynumber,
							userid: localStorage.getItem('userid'),
							price: this.detail.price,
							discountprice: this.detail.vipprice ? this.detail.vipprice : 0
						}]));
						// 跳转到确认下单页面
						jump('../shop-order/confirm.jsp?type=1');
					},



					// 收藏商品
					storeUp() {
						layui.http.request('storeup/list', 'get', {
							page: 1,
							limit: 1,
							type: 1,
							refid : this.detail.id,
							tablename : this.detailTable,
							userid: localStorage.getItem('userid'),
						}, (res) => {
							vue.dataList = res.data.list
							if(res.data.list.length==1) {
								layui.http.requestJson(`storeup/delete`, 'post', [res.data.list[0].id], function(res) {
									layer.msg('取消成功', {
										time: 1000,
										icon: 5
									}, function() {
										window.location.reload();
									});
								});
								return;
							}
							layui.http.requestJson('storeup/save', 'post', {
								userid: localStorage.getItem('userid'),
								name: this.title,
							    type:1,
								picture:vue.detail.shangpintupian.split(",")[0],
								refid: this.detail.id,
								tablename: this.detailTable
							}, function(res) {
								layer.msg('收藏成功', {
									time: 1000,
									icon: 6
								}, function() {
									window.location.reload();
								});
							});
						});
					},
					
				}
			})
			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var limit = 10;
				// 数据ID
				var id = http.getParam('id');
				vue.detail.id = id;
				vue.baseurl = http.baseurl;
                vue.init();
                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList2 = swiperList;

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
				// 商品信息
				http.request(`${vue.detailTable}/detail/` + id, 'get', {}, function(res) {
					// 详情信息
					vue.detail = res.data
					vue.title = vue.detail.shangpinmingcheng;
					// 轮播图片
					vue.swiperList = vue.detail.shangpintupian ? vue.detail.shangpintupian.split(",") : [];
					// 轮播图
					vue.$nextTick(() => {
						carousel.render({
							elem: '#swiper',
							width: '100%',
							height: '600px',
							anim: 'default',
							autoplay: 'true',
							interval: '6000',
							arrow: 'none',
							indicator: 'inside'
						});
					})


				});
				if(localStorage.getItem('userid')){
					http.request(`storeup/list`, 'get', {
						page: 1,
						limit: 1,
						type:1,
						refid : vue.detail.id,
						tablename : vue.detailTable,
						userid: localStorage.getItem('userid'),
					}, function(res) {
						vue.storeupFlag = res.data.list.length;
					})
				}





				// 获取评论
				http.request(`discuss${vue.detailTable}/list`, 'get', {
					page: 1,
					limit: limit,
					refid: vue.detail.id,
					//userid: localStorage.getItem('userid')
				}, function(res) {
					vue.dataList = res.data.list
					// 分页
					laypage.render({
						elem: 'pager',
						count: res.data.total,
						limit: limit,
						groups: 5,
						layout: ["count","prev","page","next","limit","skip"],
						prev: '上一页',
						next: '下一页',
						jump: function(obj, first) {
							//首次不执行
							if (!first) {
								http.request(`discuss${vue.detailTable}/list`, 'get', {
									page: obj.curr,
									limit: obj.limit,
									userid: localStorage.getItem('userid')
								}, function(res) {
									vue.dataList = res.data.list
								})
							}
						}
					});
				})
				// 提交评论
				form.on('submit(*)', function(data) {
					data = data.field;
					data.userid = localStorage.getItem('userid')
					data.nickname = localStorage.getItem('adminName')
					data.refid = vue.detail.id
                    data.avatarurl = localStorage.getItem('headportrait')?localStorage.getItem('headportrait'):'';
                    var sensitiveWords = "";
                    var sensitiveWordsArr = [];
                    if(sensitiveWords) {
                        sensitiveWordsArr = sensitiveWords.split(",");
                    }
                    for(var i=0; i<sensitiveWordsArr.length; i++){
                        //全局替换
                        var reg = new RegExp(sensitiveWordsArr[i],"g");
                        //判断内容中是否包括敏感词      
                        if (data.content.indexOf(sensitiveWordsArr[i]) > -1) {
                            // 将敏感词替换为 **
                            data.content = data.content.replace(reg,"**");
                        }
                    }
                                layui.http.request('orders/list', 'get', {
                                        page: 1,
                                        limit: 1,
                                        userid: localStorage.getItem('userid'),
                                        goodid: vue.detail.id,
                                        status: '已完成'
                                }, function(res) {
                                        debugger
                                        vue.dataList = res.data.list
                                        if(res.data.list.length==0) {
                                                layer.msg('请完成订单后再评论', {
                                                                time: 2000,
                                                                icon: 6
                                                        }, function() {
                                                        });
                                                return false
                                        } else {
                                                http.requestJson(`discuss${vue.detailTable}/save`, 'post', data, function(res) {
                                                        layer.msg('评论成功', {
                                                                time: 2000,
                                                                icon: 6
                                                        }, function() {
                                                                window.location.reload();
                                                        });
                                                        return false
                                                });

                                        }
                                })
					return false
				});
			});
		</script>
	</body>
</html>
