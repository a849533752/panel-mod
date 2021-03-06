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
  <link href="/theme/argon/nucleo.css" rel="stylesheet">
  <link href="/theme/argon/font-awesome.min.css" rel="stylesheet">
  <!--<link type="text/css" href="https://cdn.jsdelivr.net/gh/GBigCousin/argon/css/argon.css" rel="stylesheet">-->
  <!--<link type="text/css" href="https://cdn.jsdelivr.net/gh/GBigCousin/argon/assets/css/argon.css?v=1.0.1" rel="stylesheet">-->
  <link type="text/css" href="/theme/argon.css" rel="stylesheet">
</head>

<body>
  <header class="header-global">
    <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-transparent navbar-light">
      <div class="container">
        <a class="navbar-brand mr-lg-5" href="https://www.ddjiasu.me">
          <img src="/white.png">
        </a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbar_global">
          <div class="navbar-collapse-header">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="https://www.ddjiasu.me">
                  <img src="/blue.png">
                </a>
              </div>
              <div class="col-6 collapse-close">
                <button type="button" class="navbar-toggler collapsed" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                  <span></span>
                  <span></span>
                </button>
              </div>
            </div>
          </div>
          
          <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
             <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" role="button">
                <i class="ni ni-circle-08"></i>
                <span class="nav-link-inner--text">我的</span>
              </a>
              <div class="dropdown-menu">
                <a href="/user" class="dropdown-item">用户中心</a>
                <a href="/user/edit" class="dropdown-item">账户设置</a>
                <a href="/user/profile" class="dropdown-item">用户信息</a>
                <a href="/user/invite" class="dropdown-item">推介计划</a>
              </div>
              </li> 
            <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" role="button">
                <i class="ni ni-planet"></i>
                <span class="nav-link-inner--text">使用</span>
              </a>
              <div class="dropdown-menu">
                <a href="/user/node" class="dropdown-item">节点列表</a>
                <a href="/user/relay" class="dropdown-item">中转规则</a>
				<a href="/user/trafficlog" class="dropdown-item">流量记录</a>

              </div>
            </li>
            <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" role="button">
                <i class="ni ni-cart"></i>
                <span class="nav-link-inner--text">商店</span>
              </a>
              <div class="dropdown-menu">
                <a href="/user/code" class="dropdown-item">兑换金币</a>
                <a href="/user/shop" class="dropdown-item">兑换套餐</a>
                <a href="/user/bought" class="dropdown-item">兑换记录</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" role="button">
                <i class="ni ni-zoom-split-in"></i>
                <span class="nav-link-inner--text">审计</span>
              </a>
              <div class="dropdown-menu">
                <a href="/user/detect" class="dropdown-item">审计规则</a>
                <a href="/user/detect/log" class="dropdown-item">审计记录</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a href="#" class="nav-link" data-toggle="dropdown" role="button">
                <i class="ni ni-single-copy-04"></i>
                <span class="nav-link-inner--text">帮助</span>
                </a>
              <div class="dropdown-menu">
                <a href="https://wiki.ddjiasu.me" target="_blank" class="dropdown-item">使用教程</a>
                <!--<a href="/user/ticket" class="dropdown-item">加入我们</a>-->
                
            <!--
            <li class="nav-item dropdown">
              <a href="/user/ticket" class="nav-link"  data-toggle="dropdown" href="#" role="button" >
                <i class="ni ni-single-copy-04"></i>
                <span class="nav-link-inner--text">工单系统</span>
              </a>
              <div class="dropdown-menu">
                <a href="/user/ticket" class="dropdown-item">工单</a>
                <a href="/user/ticket/create" class="dropdown-item">新建工单</a>
              </div>
            </li>
			--->
            
            {if $user->isAdmin()}
            
            <li class="nav-item dropdown">
              <a href="/admin" class="nav-link">
                <i class="ni ni-settings"></i>
                <span class="nav-link-inner--text">管理员</span>
              </a>
            </li>
            {/if}
            <li class="nav-item dropdown">
              <a href="/user/logout" class="nav-link">
                <i class="ni ni-user-run"></i>
                <span class="nav-link-inner--text">登出</span>
              </a>
            </li>
                                          	{if $can_backtoadmin}
       								 	     <li class="nav-item dropdown">
            								  <a href="/user/backtoadmin" class="nav-link">
               								  <i class="ni ni-settings"></i>
                							  <span class="nav-link-inner--text">返回管理员身份</span>
              								  </a>
           									 </li>
                                                {/if}
          </ul>
        </div>
      </div>
    </nav>
  </header>
{if $config["enable_crisp"] == 'true'}{include file='crisp.tpl'}{/if}