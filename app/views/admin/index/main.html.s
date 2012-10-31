<!DOCTYPE html >
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理</title>
<style>

	
	#topFrame,#leftFrame,#contentFrame{
		border:#aaaaa solid 3px;
	}
</style>
</head>
<frameset rows="139,*" cols="*" frameborder="1" border="5" framespacing="0" >

  <frame src="/admin/index/top" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame"    />
  
	<frameset rows="*" cols="210,*" framespacing="0" frameborder="yes" border="5">
  
    	<frame src="/admin/index/left" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" />
    
    	<frame src="/admin/index/" name="mainFrame" id="mainFrame" title="contentFrame" />
    
  </frameset>
  
</frameset>

</html>
 