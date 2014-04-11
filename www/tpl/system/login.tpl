<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Login</title>
    <style type="text/css">
        html, body {height: 100%; }
        div#distance { margin-bottom: -10em; width: 1px;height: 50%; float: left;}
        div#container { position: relative;   text-align: left; height: 150px;  width: 575px; margin: 0 auto; padding-top: 75px; clear: left;}

        body {background: url(${site_opt['static_url']}/static/m/images/bg-login.jpg) repeat-x center; margin: 0; padding: 0;
        font-family: Helvetica, Arial, Tahoma, serif; font-size: 9pt;}
        h1 {font-size:250%; text-transform:uppercase; letter-spacing:-1px; font-weight:bold; width:450px; 
            margin: 0 0 35px 0; padding: 0;}
        h1 a {color:#fff; text-decoration:none;}
        h1 a:hover {color:#ccc;}

        fieldset, form {margin: 0; padding: 0; border: 0; outline: 0;}
        fieldset legend {display: none;}

        ol {margin: 0; padding: 0; list-style: none;}
        ol li {float: left; margin-right: 15px;}
        label {display: block;}
        label.field-title {width:75px; color:#fff; font-weight: bold; float: left; padding-top: 3px;}
        label.txt-field {width: 186px; height: 21px; background: url(${site_opt['static_url']}/static/m/images/bg-loginboxes.gif) no-repeat; float: left; margin-right: 10px}
        label.txt-field input {border: none; outline: none; background: none; padding: 2px 0 0 8px;}
        label.remember {color:#ccc; float:left; width: 200px; margin-top: 20px; margin-left:75px; margin-right: 215px;}
        div.align-right {float: left; width: 56px;  margin-top: 20px;}
    </style>
    <!--[if IE 6]>
    <style type="text/css">
        abel.remember {width: 200px; margin-left:40px;}
        label.txt-field {margin-right: 5px}
    </style>
    <![endif]-->
</head>
<body>
<div id="distance"></div>
    <div id="container">
        <div id="top"><h1><a href="#">System</a></h1></div>
        <div id="form-container">
            <form action="${site_opt['site_url']}/system/login" method="post" name="login-form">
            <fieldset>
                <legend>Login</legend>
                <ol>
                    <li><label class="field-title">Username:</label><label class="txt-field"><input type="text" name="username" value=${ account }></label></li>
                    <li><label class="field-title">Password:</label><label class="txt-field"><input type="password" name="password"></label></li>
                    <li><label class="remember">
                        %if remeber:
                        <input type="checkbox" name="remember" value="yes" checked="checked">
                        %else:
                        <input type="checkbox" name="remember" value="yes">
                        %endif
                         Remember Me</label><div class="align-right">
                    <input type="image" name="submit" src="${site_opt['static_url']}/static/m/images/bt-login.gif">
                    </div></li>
                </ol>
            </fieldset>
            <span class="clearFix">&nbsp;</span>
            </form>
        </div>
    </div>
</body></html>