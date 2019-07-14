<form class="layui-form layui-form-pane" action="">
	<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">应用</label>
			<div class="layui-input-inline">
	        	<input type="text" name="title" required  lay-verify="required" placeholder="全英文" autocomplete="off" class="layui-input">
	      	</div>
		</div>
		<div class="layui-inline">
	      <label class="layui-form-label">服务名称</label>
	      <div class="layui-input-inline">
	        	<input type="text" name="number" autocomplete="off" class="layui-input" placeholder="服务名只能包含英文字母、数字，并以字母开头">
	      </div>
	    </div>
	</div>
	<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">服务类型</label>
			<div class="layui-input-inline">
				<select name="interest" lay-filter="aihao">
			        <option value="">tars_cpp</option>
			        <option value="0">tars_java</option>
		      	</select>
	      	</div>
		</div>
		<div class="layui-inline">
	      <label class="layui-form-label">模板</label>
	      <div class="layui-input-inline">
	        	<select name="interest" lay-filter="aihao">
			        <option value="">tars.default</option>
			        <option value="0">tars.tarspatch/option>
		      	</select>
	      </div>
	    </div>
	</div>
	<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">节点</label>
			<div class="layui-input-inline">
	        	<input type="text" name="title" required  lay-verify="required" placeholder="节点" autocomplete="off" class="layui-input">
	      	</div>
		</div>
		<div class="layui-inline">
	      	<label class="layui-form-label">SET</label>
	      	<div class="layui-input-inline">
	      		<input type="text" name="title" lay-verify="required" placeholder="SET名" class="layui-input" style="width:90px;display:inline-block;">
	      		<input type="text" name="title" lay-verify="required" placeholder="SET区域" class="layui-input" style="width:90px;display:inline-block;">
	      		<input type="text" name="title" lay-verify="required" placeholder="SET组" class="layui-input" style="width:90px;display:inline-block;">
	        	<input type="checkbox" name="" title="启用Set" lay-skin="primary" checked>
	      	</div>
	    </div>
	</div>
	<table class="layui-table" lay-skin="line">
	  	<colgroup>
	    	<col width="150">
	    	<col width="150">
	    	<col width="120">
	    	<col width="150">
	    	<col width="150">
	    	<col width="150">
	    	<col width="150">
	    	<col width="150">
	    	<col width="150">
	    	<col width="150">
	  	</colgroup>
	  	<thead>
	    	<tr>
		      	<th>OBJ</th>
		      	<th>OBJ绑定地址</th>
		      	<th>端口</th>
		      	<th>端口类型</th>
		      	<th>协议</th>
		      	<th>线程数</th>
		      	<th>最大连接数</th>
		      	<th>队列最大长度</th>
		      	<th>队列超时时间(ms)</th>
		      	<th>操作</th>
	    	</tr> 
	  	</thead>
	  	<tbody>
	    	<tr>
	      		<td><input type="text" name="title" lay-verify="required" placeholder="全英文" class="layui-input"></td>
	      		<td><input type="text" name="title" lay-verify="required" placeholder="IP" class="layui-input"></td>
	      		<td><input type="text" name="title" lay-verify="required" placeholder="IP" class="layui-input"></td>
	      		<td>
	      			<input type="radio" name="sex" value="tcp" title="TCP" checked="">
      				<input type="radio" name="sex" value="udp" title="UDP">
      			</td>
	      		<td>
	      			<input type="radio" name="sex" value="tcp" title="TARS" checked="">
      				<input type="radio" name="sex" value="udp" title="非TARS">
	      		</td>
	      		<td><input type="text" name="title" lay-verify="required" placeholder="IP" class="layui-input"></td>
	      		<td><input type="text" name="title" lay-verify="required" placeholder="IP" class="layui-input"></td>
	      		<td><input type="text" name="title" lay-verify="required" placeholder="IP" class="layui-input"></td>
	      		<td><input type="text" name="title" lay-verify="required" placeholder="IP" class="layui-input"></td>
	      		<td><a href="#">添加</a></td>
	    	</tr>
	    </tbody>
	</table>    	
	<div class="layui-form-item">
		<div class="layui-input-block">
			<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
			<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		</div>
	</div>
	
</form>
 
<script>
layui.use('form', function(){
	var form = layui.form;

	//监听提交
	form.on('submit(formDemo)', function(data){
		layer.msg(JSON.stringify(data.field));
		return false;
	});
});
</script>

<style>
.layui-form-item .layui-input-inline{width:400px;}
</style>