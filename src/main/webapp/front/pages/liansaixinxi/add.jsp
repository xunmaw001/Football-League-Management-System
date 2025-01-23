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
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">联赛名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.liansaimingcheng" type="text" :readonly="ro.liansaimingcheng" name="liansaimingcheng" id="liansaimingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">封面图片：</div>
						<img :style='{"minHeight":"80px","width":"150px","margin":"0 10px 0 0","objectFit":"cover","borderRadius":"0px","height":"auto"}' v-if="detail.fengmiantupian" id="fengmiantupianImg" :src="baseurl+detail.fengmiantupian">
						<input v-if="detail.fengmiantupian" type="hidden" :value="detail.fengmiantupian" id="fengmiantupian" name="fengmiantupian" />
						<button v-if="!ro.fengmiantupian" :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' type="button" class="layui-btn btn-theme" id="fengmiantupianUpload">
							<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传封面图片
						</button>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">举办地点：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.jubandidian" type="text" :readonly="ro.jubandidian" name="jubandidian" id="jubandidian" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">开始时间：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' type="text" name="kaishishijian" id="kaishishijian" autocomplete="off" class="layui-input" >
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">结束时间：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' type="text" name="jieshushijian" id="jieshushijian" autocomplete="off" class="layui-input" >
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">球队数量：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.qiuduishuliang" type="text" :readonly="ro.qiuduishuliang" name="qiuduishuliang" id="qiuduishuliang" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#efe4d4","alignItems":"center","borderWidth":"0 0 0px","background":"none","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"15px","color":"#333","textAlign":"right"}' class="label">举办方：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ccc","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"#fff","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dashed","height":"40px"}' v-model="detail.jubanfang" type="text" :readonly="ro.jubanfang" name="jubanfang" id="jubanfang" autocomplete="off" class="layui-input">
					</div>

					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"16px","color":"#333","textAlign":"right"}' class="label">上场球员：</div>
						<textarea :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"20px 0 20px","borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"0px","borderWidth":"1px","width":"100%","borderStyle":"dashed","height":"auto"}' name="shangchangqiuyuan" id="shangchangqiuyuan">请输入上场球员</textarea>
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
                                        liansaimingcheng : false,
                                        fengmiantupian : false,
                                        jubandidian : false,
                                        kaishishijian : false,
                                        jieshushijian : false,
                                        qiuduishuliang : false,
                                        jubanfang : false,
                                        shangchangqiuyuan : false,
					},
                    detail: {
                        liansaimingcheng: '',
                        fengmiantupian: '',
                        jubandidian: '',
                        kaishishijian: '',
                        jieshushijian: '',
                        qiuduishuliang: '',
                        jubanfang: '',
                        shangchangqiuyuan: '',
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
				// 上传图片
				var fengmiantupianUpload = upload.render({
					//绑定元素
					elem: '#fengmiantupianUpload',
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
							jquery('#fengmiantupian').val(url);
							jquery('#fengmiantupianImg').attr('src', http.baseurl +url)
							vue.detail.fengmiantupian = url;
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
				laydate.render({
					elem: '#kaishishijian',
					type: 'datetime'
				});
				laydate.render({
					elem: '#jieshushijian',
					type: 'datetime'
				});
                var edit = tinymce.render({
                    elem: "#shangchangqiuyuan",
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
                        if(o=='liansaimingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.liansaimingcheng = true;
                                continue;
                        }
                        if(o=='fengmiantupian'){
                                vue.detail[o] = obj[o]?obj[o].split(",")[0]:'';
                                vue.ro.fengmiantupian = true;
                                continue;
                        }
                        if(o=='jubandidian'){
                                vue.detail[o] = obj[o];
                                vue.ro.jubandidian = true;
                                continue;
                        }
                        if(o=='kaishishijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.kaishishijian = true;
                                jquery('#kaishishijian').val(obj[o]);
                                continue;
                        }
                        if(o=='jieshushijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.jieshushijian = true;
                                jquery('#jieshushijian').val(obj[o]);
                                continue;
                        }
                        if(o=='qiuduishuliang'){
                                vue.detail[o] = obj[o];
                                vue.ro.qiuduishuliang = true;
                                continue;
                        }
                        if(o=='jubanfang'){
                                vue.detail[o] = obj[o];
                                vue.ro.jubanfang = true;
                                continue;
                        }
                        if(o=='shangchangqiuyuan'){
                                vue.detail[o] = obj[o];
                                vue.ro.shangchangqiuyuan = true;
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!data.liansaimingcheng){
                        layer.msg('联赛名称不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.fengmiantupian){
                        layer.msg('封面图片不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.jubandidian){
                        layer.msg('举办地点不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.qiuduishuliang){
                        layer.msg('球队数量不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isIntNumer(data.qiuduishuliang)){
                        layer.msg('球队数量应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.jubanfang){
                        layer.msg('举办方不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
					var shangchangqiuyuan = tinymce.get('#shangchangqiuyuan').getContent()
					data.shangchangqiuyuan = shangchangqiuyuan;

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
                                http.request('liansaixinxi/list', 'get', {
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
                                            http.requestJson('liansaixinxi' + '/add', 'post', data, function(res) {
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
                                http.requestJson('liansaixinxi' + '/add', 'post', data, function(res) {
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
