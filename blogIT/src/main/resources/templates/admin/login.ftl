<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 登录</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="${ctx!}/admin/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${ctx!}/admin/css/font-awesome.css?v=4.4.0" rel="stylesheet">
	<link href="${ctx!}/admin/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${ctx!}/admin/css/animate.css" rel="stylesheet">
    <link href="${ctx!}/admin/css/style.css?v=4.1.0" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>
                <h1 class="logo-name">blog</h1>
            </div>
            <h3>欢迎使用亚琦博客请登录</h3>

            <form class="m-t" role="form" id="frm" action="${ctx!}/login" method="POST">
                <div class="form-group">
                    <input type="text" name="username" id="username" class="form-control" placeholder="请输入您的邮箱">
                </div>
                <div class="form-group">
                    <input type="password" name="password" id="password" class="form-control" placeholder="请输入您的密码">
                </div>
                <div class="form-group text-left">
                    <div class="checkbox i-checks">
                        <label class="no-padding">
                            <input type="checkbox" name="keepLogin" value="true"><i></i> 记住登录</label>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>
                <p class="text-muted text-center"> <a href="login.html#"><small>忘记密码了？</small></a> | <a href="register.html">注册一个新账号</a>
                </p>
            </form>
        </div>
    </div>

    <!-- 全局js -->
    <script src="${ctx!}/admin/js/jquery.min.js?v=2.1.4"></script>
    <script src="${ctx!}/admin/js/bootstrap.min.js?v=3.3.6"></script>
    
    <!-- iCheck -->
    <script src="${ctx!}/admin/js/plugins/iCheck/icheck.min.js"></script>
    
    <script src="${ctx!}/admin/js/plugins/jquery-form/jquery.form.min.js"></script>
    
    <!-- layer javascript -->
    <script src="${ctx!}/admin/js/plugins/layer/layer.min.js"></script>
    
    <!-- jQuery Validation plugin javascript-->
    <script src="${ctx!}/admin/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="${ctx!}/admin/js/plugins/validate/messages_zh.min.js"></script>
	<script type="text/javascript">

		$().ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
			// 在键盘按下并释放及提交后验证提交表单
			$("#frm").validate({
				rules : {
					username : {
						required : true,
						email : true,
						minlength : 2
					},
					password : {
						required : true,
						minlength : 6
					}
				},
				messages : {
					username : {
						required : "请输入用户名",
						email : "请输入您的邮箱",
						minlength : "用户名必需由两个字母组成"
					},
					password : {
						required : "请输入密码",
						minlength : "密码长度不能小于 6 个字母"
					}
				},
				submitHandler : function(form) {
					$(form).ajaxSubmit({
						dataType: "json",
						beforeSubmit: function(formData, jqForm, options) {       // 表单提交之前回调
							return true;
						}, 
						success: function(ret) {
							// 验证成功
							if(ret.isOk) {
								location.href = ret.returnUrl;
								return ;
							}
							
							// 验证失败
							if (ret.isFail || ret.msg) {
								layer.msg(ret.msg,{icon:2});
								return ;
							}
						}, 
						error: function(ret) { },              // ret.status != 200 时回调
						complete: function(ret) { }       // 无论是 success 还是 error，最终都会被回调
					});
				}
			});
		});
	</script>    

</body>

</html>
