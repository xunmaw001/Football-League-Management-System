<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form.add .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #333;
						font-size: 14px;
						border-color: #ccc;
						line-height: 40px;
						border-radius: 0px;
						outline: none;
						background: #fff;
						width: 320px;
						border-width: 1px;
						border-style: dashed;
						height: 40px;
					}
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
		
			<div class="data-add-container" :style='{"width":"100%","padding":"40px 7% 40px","margin":"0px auto","position":"relative","background":"url(http://codegen.caihongy.cn/20230202/738791e5d58a4645a4ee25591f67fcca.jpg) no-repeat left top / 600px auto,url(http://codegen.caihongy.cn/20230202/8ab48bc29535492eb17dd1756fd6f963.jpg) no-repeat right bottom / 600px auto"}'>
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">球员姓名：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.qiuyuanxingming" type="text" :readonly="ro.qiuyuanxingming" name="qiuyuanxingming" id="qiuyuanxingming" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">球员照片：</div>
						<img :style='{"minHeight":"80px","width":"150px","margin":"0 10px 0 0","objectFit":"cover","borderRadius":"0px","height":"auto"}' v-if="detail.qiuyuanzhaopian" id="qiuyuanzhaopianImg" :src="baseurl+detail.qiuyuanzhaopian">
						<input v-if="detail.qiuyuanzhaopian" type="hidden" :value="detail.qiuyuanzhaopian" id="qiuyuanzhaopian" name="qiuyuanzhaopian" />
						<button v-if="!ro.qiuyuanzhaopian" :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' type="button" class="layui-btn btn-theme" id="qiuyuanzhaopianUpload">
							<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传球员照片
						</button>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">国籍：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.guoji" type="text" :readonly="ro.guoji" name="guoji" id="guoji" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">所属球队</div>
						<select name="suoshuqiudui" id="suoshuqiudui" lay-filter="suoshuqiudui"  >
							<option value="">请选择</option>
							<option v-for="(item,index) in suoshuqiudui" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">场上位置</div>
						<select name="changshangweizhi" id="changshangweizhi" lay-filter="changshangweizhi"  >
							<option value="">请选择</option>
							<option v-for="(item,index) in changshangweizhi" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">进球数：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.jinqiushu" type="text" :readonly="ro.jinqiushu" name="jinqiushu" id="jinqiushu" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">助攻数：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.zhugongshu" type="text" :readonly="ro.zhugongshu" name="zhugongshu" id="zhugongshu" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">获奖数：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.huojiangshu" type="text" :readonly="ro.huojiangshu" name="huojiangshu" id="huojiangshu" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">年龄：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.nianling" type="text" :readonly="ro.nianling" name="nianling" id="nianling" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">身高：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.shengao" type="text" :readonly="ro.shengao" name="shengao" id="shengao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">体重：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.tizhong" type="text" :readonly="ro.tizhong" name="tizhong" id="tizhong" autocomplete="off" class="layui-input">
					</div>

					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"16px","color":"#333","textAlign":"right"}' class="label">职业生涯：</div>
						<textarea :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"20px 0 20px","borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"0px","borderWidth":"1px","width":"100%","borderStyle":"dashed","height":"auto"}' name="zhiyeshengya" id="zhiyeshengya">请输入职业生涯</textarea>
					</div>

					<div :style='{"alignItems":"center","margin":"0 0 0 140px","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","margin":"0 10px","borderColor":"#59B450","color":"#fff","minWidth":"140px","outline":"none","borderRadius":"0px","background":"#000","borderWidth":"0px 0","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","borderColor":"#999","color":"#fff","minWidth":"140px","outline":"none","borderRadius":"0px","background":"#f50000","borderWidth":"0px 0","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
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
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>
		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        qiuyuanxingming : false,
                                        qiuyuanzhaopian : false,
                                        guoji : false,
                                        suoshuqiudui : false,
                                        changshangweizhi : false,
                                        jinqiushu : false,
                                        zhugongshu : false,
                                        huojiangshu : false,
                                        nianling : false,
                                        shengao : false,
                                        tizhong : false,
                                        zhiyeshengya : false,
					},
                    detail: {
                        qiuyuanxingming: '',
                        qiuyuanzhaopian: '',
                        guoji: '',
                        suoshuqiudui: '',
                        changshangweizhi: '',
                        jinqiushu: '',
                        zhugongshu: '',
                        huojiangshu: '',
                        nianling: '',
                        shengao: '',
                        tizhong: '',
                        zhiyeshengya: '',
                    },
					suoshuqiudui: [],
					changshangweizhi: '前锋,中场,后卫,门将'.split(','),
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
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
				// 上传图片
				var qiuyuanzhaopianUpload = upload.render({
					//绑定元素
					elem: '#qiuyuanzhaopianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#qiuyuanzhaopian').val(url);
							jquery('#qiuyuanzhaopianImg').attr('src', http.baseurl +url)
							vue.detail.qiuyuanzhaopian = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
				http.request(`option/qiudui/qiuduimingcheng`,'get',{},(res)=>{
					vue.suoshuqiudui = res.data
				});
                form.on('select(changshangweizhi)', function (data) {
                    vue.detail.changshangweizhi=data.value;
                });
                var edit = tinymce.render({
                    elem: "#zhiyeshengya",
                    height: 600,
                    images_upload_handler: function(blobInfo, succFun, failFun) {
                        var xhr, formData;
                        var file = blobInfo.blob(); //转化为易于理解的file对象
                        xhr = new XMLHttpRequest();
                        xhr.withCredentials = false;
                        xhr.open('POST', http.baseurl + 'file/upload');
                        xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
                        xhr.onload = function() {
                            var json;
                            if (xhr.status != 200) {
                                failFun('HTTP Error: ' + xhr.status);
                                return;
                            }
                            json = JSON.parse(xhr.responseText);
                            if (!json || typeof json.file != 'string') {
                                failFun('Invalid JSON: ' + xhr.responseText);
                                return;
                            }
                            succFun(http.baseurl + '/upload/' + json.file);
                        };
                        formData = new FormData();
                        formData.append('file', file, file.name); //此处与源文档不一样
                        xhr.send(formData);
                    }
                }, (opt) => {

                });
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='qiuyuanxingming'){
                                vue.detail[o] = obj[o];
                                vue.ro.qiuyuanxingming = true;
                                continue;
                        }
                        if(o=='qiuyuanzhaopian'){
                                vue.detail[o] = obj[o]?obj[o].split(",")[0]:'';
                                vue.ro.qiuyuanzhaopian = true;
                                continue;
                        }
                        if(o=='guoji'){
                                vue.detail[o] = obj[o];
                                vue.ro.guoji = true;
                                continue;
                        }
                        if(o=='suoshuqiudui'){
                                vue.detail[o] = obj[o];
                                vue.ro.suoshuqiudui = true;
                                continue;
                        }
                        if(o=='changshangweizhi'){
                                vue.detail[o] = obj[o];
                                vue.ro.changshangweizhi = true;
                                continue;
                        }
                        if(o=='jinqiushu'){
                                vue.detail[o] = obj[o];
                                vue.ro.jinqiushu = true;
                                continue;
                        }
                        if(o=='zhugongshu'){
                                vue.detail[o] = obj[o];
                                vue.ro.zhugongshu = true;
                                continue;
                        }
                        if(o=='huojiangshu'){
                                vue.detail[o] = obj[o];
                                vue.ro.huojiangshu = true;
                                continue;
                        }
                        if(o=='nianling'){
                                vue.detail[o] = obj[o];
                                vue.ro.nianling = true;
                                continue;
                        }
                        if(o=='shengao'){
                                vue.detail[o] = obj[o];
                                vue.ro.shengao = true;
                                continue;
                        }
                        if(o=='tizhong'){
                                vue.detail[o] = obj[o];
                                vue.ro.tizhong = true;
                                continue;
                        }
                        if(o=='zhiyeshengya'){
                                vue.detail[o] = obj[o];
                                vue.ro.zhiyeshengya = true;
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!isIntNumer(data.jinqiushu)){
                        layer.msg('进球数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.zhugongshu)){
                        layer.msg('助攻数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.huojiangshu)){
                        layer.msg('获奖数应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
					var zhiyeshengya = tinymce.get('#zhiyeshengya').getContent()
					data.zhiyeshengya = zhiyeshengya;

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('qiuyuanxinxi/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('qiuyuanxinxi' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('qiuyuanxinxi' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
