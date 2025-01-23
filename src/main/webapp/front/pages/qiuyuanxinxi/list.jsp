<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 球员信息 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>球员信息</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form .layui-form-item .layui-form-select .layui-input {
						border: 1px dashed #ccc;
						border-radius: 0px;
						padding: 0 30px 0 10px;
						box-shadow: 0px 0px 0px #ccc;
						margin: 0;
						outline: none;
						color: #666;
						width: 120px;
						font-size: 14px;
						line-height: 40px;
						height: 40px;
					}
		
		/* lists */
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
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			
			<div id="breadcrumb">
				<span class="en">DATA SHOW</span>
				<span class="cn">球员信息展示</span>
			</div>

			<!-- 图文列表 -->
			<div class="recommend" :style='{"padding":"0","margin":"0px auto","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230202/738791e5d58a4645a4ee25591f67fcca.jpg) no-repeat left top / 600px auto,url(http://codegen.caihongy.cn/20230202/8ab48bc29535492eb17dd1756fd6f963.jpg) no-repeat right bottom / 600px auto","display":"flex","width":"100%","position":"relative"}'>

					
				<form class="layui-form filter" :style='{"padding":"30px 7% 0","alignItems":"center","background":"none","display":"flex","width":"100%","justifyContent":"center","height":"auto"}'>

					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>球员姓名</div>
						<input type="text" :style='{"border":"1px dashed #ccc","padding":"0 10px","boxShadow":"0px 0px 0px #ccc","margin":"0","outline":"none","color":"#666","borderRadius":"0px","width":"140px","fontSize":"14px","lineHeight":"40px","height":"40px"}' name="qiuyuanxingming" id="qiuyuanxingming" placeholder="球员姓名" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>国籍</div>
						<input type="text" :style='{"border":"1px dashed #ccc","padding":"0 10px","boxShadow":"0px 0px 0px #ccc","margin":"0","outline":"none","color":"#666","borderRadius":"0px","width":"140px","fontSize":"14px","lineHeight":"40px","height":"40px"}' name="guoji" id="guoji" placeholder="国籍" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>所属球队</div>
						<select name="suoshuqiudui" id="suoshuqiudui" lay-filter="suoshuqiudui">
							<option value="">请选择</option>
							<option v-for="(item,index) in suoshuqiuduiOptions" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>场上位置</div>
						<select name="changshangweizhi" id="changshangweizhi" lay-filter="changshangweizhi">
							<option value="">请选择</option>
							<option v-for="(item,index) in changshangweizhiOptions" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>

					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 10px 0","borderColor":"#feabab","color":"#fff","minWidth":"90px","outline":"none","borderRadius":"0px","background":"#000","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"42px","borderStyle":"dashed","height":"42px"}' id="btn-search" type="button" class="layui-btn layui-btn-normal">
						<i :style='{"color":"#fff","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon layui-icon-search"></i>搜索
					</button>
					<button :style='{"cursor":"pointer","padding":"0px 10px","margin":"0 4px 0 0","borderColor":"#fda100","color":"#fff","minWidth":"90px","outline":"none","borderRadius":"0px","background":"#f50000","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"42px","borderStyle":"solid","height":"42px"}' v-if="isAuth('qiuyuanxinxi','新增')" @click="jump('../qiuyuanxinxi/add.jsp')" type="button" class="layui-btn btn-theme">
						<i :style='{"color":"#fff","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe654;</i>添加
					</button>
				</form>
						
				<div :style='{"padding":"20px 7% 20px","margin":"20px 0 10px","background":"none","flex":"1","width":"calc(93% - 200px)","minWidth":"900px","order":"3"}' class="lists">
					<!-- 样式二 -->
					<div :style='{"padding":"0 0px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"padding":"10px","boxShadow":"0px 0px 0px #eee","margin":"0 0 20px","borderColor":"#ddd","display":"flex","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"49%","position":"relative","borderStyle":"solid","height":"240px"}' @click="jump('../qiuyuanxinxi/detail.jsp?id='+item.id)" v-for="(item,index) in dataList" :key="index" class="list-item animation-box">
							<img :style='{"cursor":"pointer","verticalAlign":"middle","padding":"4px","borderColor":"#9dcde9","objectFit":"cover","borderWidth":"0px","background":"url(http://codegen.caihongy.cn/20230201/e692aea55f98482aaa7f0290e1888901.png) no-repeat center top / 100% 100%","display":"inline-block","width":"48%","borderStyle":"dotted","height":"100%"}' :src="item.qiuyuanzhaopian?baseurl+item.qiuyuanzhaopian.split(',')[0]:''">
							<div :style='{"width":"48%","padding":"10px 10px","verticalAlign":"middle","overflow":"hidden","display":"inline-block","height":"100%"}' class="item-info">
								<div :style='{"cursor":"pointer","padding":"0 0px","margin":"0 0 10px","borderColor":"#eee","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","borderRadius":"0px","background":"linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(238,238,238,1) 50%, rgba(255,255,255,1) 100%)","borderWidth":"1px 0","lineHeight":"40px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"dashed"}' class="name">{{item.qiuyuanxingming}}</div>
								<div :style='{"cursor":"pointer","padding":"0 0px","margin":"0 0 10px","borderColor":"#eee","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","borderRadius":"0px","background":"linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(238,238,238,1) 50%, rgba(255,255,255,1) 100%)","borderWidth":"1px 0","lineHeight":"40px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"dashed"}' class="name">{{item.guoji}}</div>
								<div :style='{"cursor":"pointer","padding":"0 0px","margin":"0 0 10px","borderColor":"#eee","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","borderRadius":"0px","background":"linear-gradient(90deg, rgba(255,255,255,1) 0%, rgba(238,238,238,1) 50%, rgba(255,255,255,1) 100%)","borderWidth":"1px 0","lineHeight":"40px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"dashed"}' class="name">{{item.suoshuqiudui}}</div>
								<div v-if="item.price" :style='{"padding":"0px 10px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"center"}' class="time">￥{{Number(item.price).toFixed(2)}}</div>
								<div v-if="item.vipprice&&item.vipprice>0" :style='{"padding":"0px 10px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"center"}' class="time">￥{{Number(item.vipprice).toFixed(2)}} 会员价</div>
								<div v-if="item.jf" :style='{"padding":"0px 10px","lineHeight":"24px","fontSize":"14px","color":"#f00","textAlign":"center"}' class="time">{{Number(item.jf).toFixed(0)}}积分</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="pager" id="pager"></div>
				
			</div>
		</div>


		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],

				        suoshuqiuduiOptions: [],
				        changshangweizhiOptions: [],
					baseurl: '',
					dataList: []
				},
				methods: {
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['form', 'layer', 'element', 'carousel', 'laypage', 'http', 'jquery','laydate', 'slider'], function() {
				var form = layui.form;
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;
				var laydate = layui.laydate;
                var slider = layui.slider;
				var limit = 12;
				vue.baseurl = http.baseurl;
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
						vue.swiperList = swiperList;
						
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
        			http.request(`option/qiudui/qiuduimingcheng`,'get',{},(res)=>{
                			vue.suoshuqiuduiOptions = res.data
							vue.$nextTick(() => {form.render()})
        			});
			        vue.changshangweizhiOptions = '前锋,中场,后卫,门将'.split(',')
					vue.$nextTick(() => {form.render()})



				// 分页列表
				pageList();

				// 搜索按钮
				jquery('#btn-search').click(function(e) {
					pageList();
				});

				function pageList() {
					var param = {
						page: 1,
						limit: limit
					}

			        if (jquery('#qiuyuanxingming').val()) {
			          param['qiuyuanxingming'] = jquery('#qiuyuanxingming').val() ? '%' + jquery('#qiuyuanxingming').val() + '%' : '';
			        }
			        if (jquery('#guoji').val()) {
			          param['guoji'] = jquery('#guoji').val() ? '%' + jquery('#guoji').val() + '%' : '';
			        }
			        if (jquery('#suoshuqiudui').val()) {
			          param['suoshuqiudui'] = jquery('#suoshuqiudui').val() ? jquery('#suoshuqiudui').val() : '';
			        }
			        if (jquery('#changshangweizhi').val()) {
			          param['changshangweizhi'] = jquery('#changshangweizhi').val() ? jquery('#changshangweizhi').val() : '';
			        }


				if (jquery('#qiuyuanxingming').val()) {
					param['qiuyuanxingming'] = jquery('#qiuyuanxingming').val() ? '%' + jquery('#qiuyuanxingming').val() + '%' : '';
				}  
				if (jquery('#guoji').val()) {
					param['guoji'] = jquery('#guoji').val() ? '%' + jquery('#guoji').val() + '%' : '';
				}  
				if (jquery('#suoshuqiudui').val()) {
					param['suoshuqiudui'] = jquery('#suoshuqiudui').val() ? '%' + jquery('#suoshuqiudui').val() + '%' : '';
				}  
				if (jquery('#changshangweizhi').val()) {
					param['changshangweizhi'] = jquery('#changshangweizhi').val() ? '%' + jquery('#changshangweizhi').val() + '%' : '';
				}  

					// 获取列表数据
					http.request('qiuyuanxinxi/list', 'get', param, function(res) {
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
								param.page = obj.curr;
								//首次不执行
								if (!first) {
									http.request('qiuyuanxinxi/list', 'get', param, function(res) {
										vue.dataList = res.data.list
									})
								}
							}
						});
					})
				}
			});
		</script>
	</body>
</html>
