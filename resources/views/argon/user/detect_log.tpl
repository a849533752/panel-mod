





{include file='user/newui_header.tpl'}


  <main class="profile-page">
    <section class="section-profile-cover section-shaped my-0">
      <div class="shape shape-style-1 shape-default shape-skew alpha-4">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
    </section>
    <section class="section section-skew">
      <div class="container">
        <div class="card card-profile shadow mt--300">
          <div class="px-4">
            <div class="row justify-content-center">
              <div class="col-lg-3 order-lg-2" >
                <div class="card-profile-image">
                  <a data-container="body" data-original-title="Popover on Top" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                    <img src="{$user->gravatar}" alt="user-image" class="rounded-circle" >
                  </a>
                </div>
              </div>
              <div class="col-lg-4 order-lg-3 text-lg-right align-self-lg-center">
                <div class="card-profile-actions py-4 mt-lg-0">
                  <a href="/user" class="btn btn-sm btn-primary">用户中心</a>
                  <a href="/user/shop" class="btn btn-sm btn-default float-right">商店</a>
                </div>
              </div>
              <div class="col-lg-4 order-lg-1">
                <div class="card-profile-stats d-flex justify-content-center">
                  <div>
                    <span class="heading">{$user->money}</span>
                    <span class="description">剩余金币</span>
                  </div>
                  <div>
                    <span class="heading">L{$user->class}</span>
                    <span class="description">等级</span>
                  </div>
                  <div>
                    <span class="heading">{$user->online_ip_count()}</span>
                    <span class="description">在线设备数</span>
                  </div>
                </div>
              </div>
            </div>
			
<div class="mt-5 py-5 text-center">
              <div class="row justify-content-center">
                <div class="col-lg-11">
<div class="table-responsive">
						{$logs->render()}
						<table class="table">
						    <tr>
						        <th>ID</th>
						        <th>节点名称</th>
						        <th>规则ID</th>
						        <th>描述</th>
							<th>正则表达式</th>
							<th>类型</th>
							<th>时间</th>
								
						    </tr>
						    {foreach $logs as $log}
								{if $log->DetectRule() != null}
									<tr>
									<td>#{$log->id}</td>
									<td>{$log->Node()->name}</td>
									<td>{$log->list_id}</td>
									<td>{$log->DetectRule()->text}</td>
									<td>{$log->DetectRule()->regex}</td>
									{if $log->DetectRule()->type == 1}
										<td>数据包明文匹配</td>
									{/if}		
									{if $log->DetectRule()->type == 2}
										<td>数据包 hex 匹配</td>
									{/if}
									<td>{date('Y-m-d H:i:s',$log->datetime)}</td>						
									</tr>
								{/if}
						    {/foreach}
						</table>
						{$logs->render()}
					</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    </section>
    

	


{include file='user/newui_footer.tpl'}
