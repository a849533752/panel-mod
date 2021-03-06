<!DOCTYPE html>
<html>
<head>
  <title>{$config["appName"]}</title>
  <meta name="msvalidate.01" content="4652A53480D3E379798BE86168C0A149" />
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
  <!--<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="https://cdn.godann.com/kitui/vendor/nucleo/css/nucleo.css" rel="stylesheet">
  <link href="https://cdn.godann.com/kitui/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  
  <link href="/theme/argon.css" rel="stylesheet">-->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/gh/GBigCousin/argon/assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/gh/GBigCousin/argon/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link type="text/css" href="https://cdn.jsdelivr.net/gh/GBigCousin/argon/css/argon.css" rel="stylesheet">
  <!--<link type="text/css" href="https://cdn.jsdelivr.net/gh/GBigCousin/argon/assets/css/argon.css?v=1.0.1" rel="stylesheet">-->
  <link type="text/css" href="/theme/argon.css" rel="stylesheet">
  <!--<link href="/argon-halloween.css" rel="stylesheet">-->
</head>

<body>
  <header class="header-global">
    <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-transparent navbar-light">
      <div class="container">
        <a class="navbar-brand mr-lg-5" href="/">
          <img src="/white.png">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbar_global">
          <div class="navbar-collapse-header">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="/">
                  <img src="/blue.png">
                </a>
              </div>
              <div class="col-6 collapse-close">
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                  <span></span>
                  <span></span>
                </button>
              </div>
            </div>
          </div>
          <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
            <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-collection"></i>
                <span class="nav-link-inner--text">介绍</span>
              </a>
              <div class="dropdown-menu">
                <a href="https://wiki.ddjiasu.me" target="_blank" class="dropdown-item">帮助文档</a>
                <a href="/staff" class="dropdown-item">STAFF</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-books"></i>
                <span class="nav-link-inner--text">服务及保障</span>
              </a>
              <div class="dropdown-menu">
                <a href="/legal" class="dropdown-item">条款总则</a>
                <a href="/legal/tos" class="dropdown-item">服务条款</a>
                <a href="/legal/privacy" class="dropdown-item">隐私条款</a>
                <a href="/legal/aup" class="dropdown-item">可接受使用政策</a>
              </div>
            </li>
			{if $user->isLogin}
            <li class="nav-item dropdown">
              <a href="/user" class="nav-link" >
                <i class="ni ni-circle-08"></i>
                <span class="nav-link-inner--text">用户中心</span>
              </a>
            </li>
			{else}
			 <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" href="#" role="button">
                <i class="ni ni-atom"></i>
                <span class="nav-link-inner--text">登录</span>
              </a>
              <div class="dropdown-menu">
                <a href="/user" class="dropdown-item">登录</a>
                <a href="/auth/register" class="dropdown-item">注册</a>
              </div>
            </li>
			{/if}
          </ul>
        </div>
      </div>
    </nav>
  </header>
  {if $config["enable_crisp"] == 'true'}{include file='crisp.tpl'}{/if}