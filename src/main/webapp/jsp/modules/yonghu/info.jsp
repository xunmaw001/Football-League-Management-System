<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>

</style>
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="../../static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->

		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">编辑用户</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
				<li class="breadcrumb-item-one"><span>用户管理</span></li>
				<li class="breadcrumb-item-two"><span>编辑用户</span></li>
			</ol>
		</div>

		<!-- Main Content -->
		<div id="add-container">
			<form id="addOrUpdateForm">
				<input id="updateId" name="id" type="hidden">
				<div class="form-item">
					<label>用户账号</label>

					<input id="yonghuzhanghao" name="yonghuzhanghao" class="form-control" v-model="ruleForm.yonghuzhanghao" readonly>
				</div>
				<div class="form-item">
					<label>密码</label>

					<input id="mima" name="mima" class="form-control" v-model="ruleForm.mima" readonly>
				</div>
				<div class="form-item">
					<label>用户姓名</label>

					<input id="yonghuxingming" name="yonghuxingming" class="form-control" v-model="ruleForm.yonghuxingming" readonly>
				</div>
				<div class="form-item">
					<label>性别</label>

					<input id="xingbie" name="xingbie" class="form-control" v-model="ruleForm.xingbie" readonly>
				</div>
				<div class="form-item">
					<label>年龄</label>

					<input id="nianling" name="nianling" class="form-control" v-model="ruleForm.nianling" readonly>
				</div>
				<div class="form-item-img">
					<label>头像</label>

                    <div style="display: flex;align-items: center;">
                        <div v-for="(item,index) in touxiangImgList" :key="index" style="position: relative;">
                            <img :src="baseUrl + item" width="100" height="100">
                        </div>
                    </div>
				</div>
				<div class="form-item">
					<label>用户手机</label>

					<input id="yonghushouji" name="yonghushouji" class="form-control" v-model="ruleForm.yonghushouji" readonly>
				</div>
				<div class="form-item">
					<label>余额</label>

					<input id="money" name="money" class="form-control" v-model="ruleForm.money" readonly>
				</div>

				<div class="form-btn">
					<button id="exitBtn" type="button" class="btn btn-primary btn-close">返回</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "yonghu";
		var pageType = "add-or-update";
		var updateId = "";		

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
                touxiangImgList:[],
                baseUrl: baseUrl,
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "yonghu/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 填充富文本框
		function setContent(){
		}  

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				$("#submitBtn").addClass("修改");
				updateId = id;
				window.sessionStorage.removeItem('id');
				$.ajax({ 
	                type: "GET",
	                url: baseUrl + "yonghu/info/" + id,
	                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
	                success: function(res){           
	                	if(res.code == 0){
	                		ruleForm = res.data
							showImg();
							setContent();		
							setMediaUrl();	
							setDownloadBtn();
			    		}else if(res.code ==401){
			    			 <%@ include file="../../static/toLogin.jsp"%>	
			    		}else{
							 alert(res.msg);
						}
	                },
	            });
			}else{
				$("#submitBtn").addClass("新增");
			}
		}	

		//图片显示
		function showImg(){
			var touxiangFileName = "\"" + ruleForm.touxiang + "\"";
            if(ruleForm.touxiang) {
                vm.touxiangImgList = ruleForm.touxiang.split(',')
            }
		}		
		function exit(){
			window.sessionStorage.removeItem("id");
			window.location.href = "list.jsp";
		}			
		// 下载
		function download(fileName){
			var url = baseUrl+fileName;
			window.open(url);
		}	
		//设置下载
		function setDownloadBtn(){
		}			
		//设置音视频播放链接
		function setMediaUrl(){
		}	
		//打开新窗口播放媒体
		function mediaPlay(url){
			//var url = baseUrl + "upload/" + fileName;
			window.open(baseUrl+url);
		}		
		$(document).ready(function() { 
			//设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			setMenu();
			$('#exitBtn').on('click', function(e) {
			    e.preventDefault();
				exit();
			});
			getDetails();
			<%@ include file="../../static/myInfo.js"%>
		});			
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>	
	</script>
</body>

</html>
