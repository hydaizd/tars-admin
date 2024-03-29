<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>layout 后台大布局 - Layui</title>
	<link rel="stylesheet" href="../static/plugins/layui/css/layui.css">
	<script src="../static/plugins/layui/layui.js"></script>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">layui 后台布局</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item layui-this"><a href="/server/index">服务管理</a></li>
				<li class="layui-nav-item"><a href="/deploy/index">运维管理</a></li>
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item">
					<a href="javascript:;">
						<img src="http://t.cn/RCzsdCq" class="layui-nav-img">
						贤心
					</a>
					<dl class="layui-nav-child">
						<dd><a href="">基本资料</a></dd>
						<dd><a href="">安全设置</a></dd>
					</dl>
				</li>
				<li class="layui-nav-item"><a href="">退了</a></li>
			</ul>
		</div>
  
		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui树形组件） -->
				<div id="test1"></div>
			</div>
		</div>
  
		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">{{.LayoutContent}}</div>
		</div>
	</div>
	
<script>
//JavaScript代码区域
layui.use(['element','tree'], function(){
	var element = layui.element;
	var tree = layui.tree;

	//渲染
    var inst1 = tree.render({
		elem: '#test1'  //绑定元素
      	,data: [{
        	title: 'tars' //一级菜单
        	,children: [
        		{
          			title: 'tarspatch'
        		},
        		{
          			title: 'tarsconfig'
        		},
        		{
          			title: 'tarsnotify'
        		},
        		{
          			title: 'tarslog'
        		},
        		{
          			title: 'tarsstat'
        		},
        		{
          			title: 'tarsproperty'
        		},
        		{
          			title: 'tarsqueryproperty'
        		},
        		{
          			title: 'tarsquerystat'
        		}
        	]
      	},{
        	title: 'Wshop' //一级菜单
        	,children: [{
          		title: 'User' //二级菜单
        	}]
      	}]
    });
});
</script>
</body>
</html>