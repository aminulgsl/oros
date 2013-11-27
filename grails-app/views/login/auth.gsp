<html xmlns="http://www.w3.org/1999/html">
<head>
	<meta name='layout' content='logintpl'/>
	<title><g:message code="springSecurity.login.title"/></title>



</head>

<body >

<div class="main-container container-fluid">
    <div class="main-content">
        <div class="row-fluid">
            <div class="span12">
                <div class="login-container">
                    <div class="row-fluid">
                        <div class="center">
                            <h1>
                                <i class="icon-leaf green"></i>
                                <span class="red"><g:message code="springSecurity.login.header.title" default="Oroscapital"/></span>
                                <span class="white"><g:message code="springSecurity.login.header" default=""/></span>


                            </h1>
                            <h4 class="blue">&copy; <g:message code="springSecurity.login.header.company" default="Company Name"/></h4>
                        </div>
                    </div>

                    <div class="space-6"></div>

                    <div class="row-fluid">
                        <div class="position-relative">
                            <div id="login-box" class="login-box visible widget-box no-border">
                                <div class="widget-body">
                                    <div class="widget-main">
                                        <h4 class="header blue lighter bigger">
                                            <i class="icon-coffee green"></i>
                                             <g:message code="springSecurity.login.header.insert.information" default="Please Enter Your Information"/>
                                        </h4>

                                       <p class="help-block"><g:if test='${flash.message}'>  <div class='login_message alert-danger '> <i class="icon-bell red"> <b> ${flash.message} </b> </i></div> </g:if> </p>


                                        <div class="space-6"></div>

                                        <form action='${postUrl}' method='POST' id='loginForm' class='cssform ' autocomplete='off'>
                                            %{--<form action='${resource(dir:'login', file:'submit')}' method='POST' id='loginForm' class='cssform' autocomplete='off'>--}%
                                            <fieldset>
                                            <div class="form-group">
                                                <label for='username' class=" control-label"><g:message code="springSecurity.login.username.label" default="User Name"/>:</label>
                                             <div class=" ">
                                             <span class="block input-icon input-icon-right ">
                                                    <input type="text" class="span12 form-control" placeholder="Username"  />
                                                    <i class="icon-user"></i>

                                                </span>
                                                 </div>
                                             </div>
                                            </label>

                                            <div class="form-group">

                                            <label for='password' class=" control-label"><g:message code="springSecurity.login.password.label" default="Password"/>:</label>
                                                <div class="">
                                                 <span class="block input-icon input-icon-right">
                                                    <input type="password" class="span12 form-control" placeholder="Password" />
                                                    <i class="icon-lock"></i>
                                                 </span>
                                                </div>

                                            </div>
                                                <div class="space"></div>

                                                <div class="clearfix">
                                                    <label class="inline">
                                                    <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/
                                                        <span class="lbl"> <label for='remember_me'><g:message code="springSecurity.login.remember.me.label" default="Remember Me"/></label></span>
                                                    </label>



                                                    <button type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'  class="width-35 pull-right btn btn-small btn-primary" >
                                                    <i class="icon-key"></i>
                                                    Login
                                                    </button>





                                                </div>

                                                <div class="space-4"></div>
                                            </fieldset>
                                        </form>


                                    </div><!--/widget-main-->

                                    <div class="toolbar clearfix">
                                        <div>
                                            <a href="#"   class="forgot-password-link">
                                                <i class="icon-arrow-left"></i>
                                                I forgot my password
                                            </a>
                                        </div>

                                        <div>
                                            <a href="#"  class="user-signup-link">
                                                I want to register
                                                <i class="icon-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div><!--/widget-body-->
                            </div><!--/login-box-->

                        </div><!--/login-box-->




                    </div><!--/position-relative-->
                </div>
            </div>
        </div><!--/.span-->
    </div><!--/.row-fluid-->
</div>


<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
