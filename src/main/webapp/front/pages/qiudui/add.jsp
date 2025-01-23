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
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">球队名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.qiuduimingcheng" type="text" :readonly="ro.qiuduimingcheng" name="qiuduimingcheng" id="qiuduimingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">创始人：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.chuangshiren" type="text" :readonly="ro.chuangshiren" name="chuangshiren" id="chuangshiren" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">创立时间：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' type="text" name="chuanglishijian" id="chuanglishijian" autocomplete="off" class="layui-input" >
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">球队口号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.qiuduikouhao" type="text" :readonly="ro.qiuduikouhao" name="qiuduikouhao" id="qiuduikouhao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">球队历史：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.qiuduilishi" type="text" :readonly="ro.qiuduilishi" name="qiuduilishi" id="qiuduilishi" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">球队图片：</div>
						<img :style='{"minHeight":"80px","width":"150px","margin":"0 10px 0 0","objectFit":"cover","borderRadius":"0px","height":"auto"}' v-if="detail.qiuduitupian" id="qiuduitupianImg" :src="baseurl+detail.qiuduitupian">
						<input v-if="detail.qiuduitupian" type="hidden" :value="detail.qiuduitupian" id="qiuduitupian" name="qiuduitupian" />
						<button v-if="!ro.qiuduitupian" :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' type="button" class="layui-btn btn-theme" id="qiuduitupianUpload">
							<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传球队图片
						</button>
					</div>

					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"16px","color":"#333","textAlign":"right"}' class="label">球队介绍：</div>
						<textarea :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"20px 0 20px","borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"0px","borderWidth":"1px","width":"100%","borderStyle":"dashed","height":"auto"}' name="qiuduijieshao" id="qiuduijieshao">请输入球队介绍</textarea>
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
                                        qiuduimingcheng : false,
                                        chuangshiren : false,
                                        chuanglishijian : false,
                                        qiuduikouhao : false,
                                        qiuduilishi : false,
                                        qiuduijieshao : false,
                                        qiuduitupian : false,
					},
                    detail: {
                        qiuduimingcheng: '',
                        chuangshiren: '',
                        chuanglishijian: '',
                        qiuduikouhao: '',
                        qiuduilishi: '',
                        qiuduijieshao: '',
                        qiuduitupian: '',
                    },
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
				laydate.render({
					elem: '#chuanglishijian'
				});
                var edit = tinymce.render({
                    elem: "#qiuduijieshao",
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
				// 上传图片
				var qiuduitupianUpload = upload.render({
					//绑定元素
					elem: '#qiuduitupianUpload',
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
							jquery('#qiuduitupian').val(url);
							jquery('#qiuduitupianImg').attr('src', http.baseurl +url)
							vue.detail.qiuduitupian = url;
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
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
                        if(key=='chuangshiren'){
                                vue.detail['chuangshiren'] = data[`${key}`]
                                vue.ro.chuangshiren = true;
                                continue;
                        }
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='qiuduimingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.qiuduimingcheng = true;
                                continue;
                        }
                        if(o=='chuangshiren'){
                                vue.detail[o] = obj[o];
                                vue.ro.chuangshiren = true;
                                continue;
                        }
                        if(o=='chuanglishijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.chuanglishijian = true;
                                jquery('#chuanglishijian').val(obj[o]);
                                continue;
                        }
                        if(o=='qiuduikouhao'){
                                vue.detail[o] = obj[o];
                                vue.ro.qiuduikouhao = true;
                                continue;
                        }
                        if(o=='qiuduilishi'){
                                vue.detail[o] = obj[o];
                                vue.ro.qiuduilishi = true;
                                continue;
                        }
                        if(o=='qiuduijieshao'){
                                vue.detail[o] = obj[o];
                                vue.ro.qiuduijieshao = true;
                                continue;
                        }
                        if(o=='qiuduitupian'){
                                vue.detail[o] = obj[o]?obj[o].split(",")[0]:'';
                                vue.ro.qiuduitupian = true;
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
					var qiuduijieshao = tinymce.get('#qiuduijieshao').getContent()
					data.qiuduijieshao = qiuduijieshao;

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
                                http.request('qiudui/list', 'get', {
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
                                            http.requestJson('qiudui' + '/add', 'post', data, function(res) {
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
                                http.requestJson('qiudui' + '/add', 'post', data, function(res) {
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
