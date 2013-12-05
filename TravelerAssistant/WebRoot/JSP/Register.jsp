<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<!DOCTYPE html> 
<html>
	<head>
		<title>Register</title>
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
		
		 <link rel="stylesheet" type="text/css" href="../CSS/CSSforRegister/demo.css">
         <link rel="stylesheet" type="text/css" href="../CSS/CSSforRegister/sky-forms-ie8.css"><link rel="stylesheet" type="text/css" href="../CSS/CSSforRegister/sky-forms.css">
		<!--[if lt IE 9]>
			<link rel="stylesheet" href="../CSS/CSSforRegister/sky-forms-ie8.css">
		<![endif]-->
		
		 <script src="../JS/JSforRegister/jquery-1.9.1.min.js"></script>
		 <script src="../JS/JSforRegister/jquery.placeholder.min.js"></script>
		 <script src="../JS/JSforRegister/jquery.validate.min.js"></script>
		 <script src="../JS/JSforRegister/sky-forms-ie8.js"></script>
		 <script src="js/jquery.validate.min.js"></script>
		<!--[if lt IE 10]>
			<script src="../JS/JSforRegister/jquery.placeholder.min.js"></script>
		<![endif]-->		
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="../JS/JSforRegister/sky-forms-ie8.js"></script>
		<![endif]-->
	</head>
	
	<body class="bg-cyan">
		<div class="body body-s">		
			<form action="" id="sky-form" class="sky-form">
				<header>注册</header>
				
				<fieldset>					
					<section>
						<label class="input">
							<i class="icon-append icon-user"></i>
							<input type="text" name="username" placeholder="用户名">
							<b class="tooltip tooltip-bottom-right">请您输入用户名</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append icon-envelope-alt"></i>
							<input type="email" name="email" placeholder="邮箱地址">
							<b class="tooltip tooltip-bottom-right">邮箱作为您的登录名必须填入</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append icon-lock"></i>
							<input type="password" name="password" placeholder="登录密码" id="password">
							<b class="tooltip tooltip-bottom-right">   别忘了输入您的密码</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append icon-lock"></i>
							<input type="password" name="passwordConfirm" placeholder="确认密码">
							<b class="tooltip tooltip-bottom-right">   别忘了输入您的密码</b>
						</label>
					</section>
				</fieldset>
					
				<fieldset>
					<div class="row">
						<section class="col col-6">
							<label class="input">
								<input type="text" name="firstname" placeholder="姓氏">
							</label>
						</section>
						<section class="col col-6">
							<label class="input">
								<input type="text" name="lastname" placeholder="名字">
							</label>
						</section>
					</div>
					
					<section>
						<label class="select">
							<select name="gender">
								<option value="0" selected disabled>性别</option>
								<option value="1">男</option>
								<option value="2">女</option>
								 
							</select>
							<i></i>
						</label>
					</section>
					
					 
				</fieldset>
				<footer>
					<button type="submit" class="button">提交</button>
				</footer>
			</form>			
		</div>
		
		<script type="text/javascript">
			$(function()
			{
				// Validation		
				$("#sky-form").validate(
				{					
					// Rules for form validation
					rules:
					{
						username:
						{
							required: true
						},
						email:
						{
							required: true,
							email: true
						},
						password:
						{
							required: true,
							minlength: 3,
							maxlength: 20
						},
						passwordConfirm:
						{
							required: true,
							minlength: 3,
							maxlength: 20,
							equalTo: '#password'
						},
						firstname:
						{
							required: true
						},
						lastname:
						{
							required: true
						},
						gender:
						{
							required: true
						},
						terms:
						{
							required: true
						}
					},
					
					 
					messages:
					{
						login:
						{
							required: '请输入你的用户名'
						},
						email:
						{
							required: '请输入邮箱地址',
							email: '输入的邮箱必须是正确的格式'
						},
						password:
						{
							required: '请输入你的密码'
						},
						passwordConfirm:
						{
							required: '请再输入一次密码',
							equalTo: ' 两次密码输入不一致'
						},
						firstname:
						{
							required: '请填写您的姓氏'
						},
						lastname:
						{
							required: '请填写您的名字'
						},
						gender:
						{
							required: '请填写您的性别'
						},
						terms:
						{
							required: 'You must agree with Terms and Conditions'
						}
					},					
					
				 
					errorPlacement: function(error, element)
					{
						error.insertAfter(element.parent());
					}
				});
			});			
		</script>
 	</body>
</html>