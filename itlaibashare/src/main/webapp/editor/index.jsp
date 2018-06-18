<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="propath" value="${pageContext.request.contextPath }"></c:set>
<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
	 <script charset="utf-8" src="${propath }/editor/kindeditor-all.js"></script>
	<script charset="utf-8" src="${propath }/editor/lang/zh-CN.js"></script>
	<script>
	        KindEditor.ready(function(K) {
	                window.editor = K.create('#editor_id');
	        });
	</script>
  </head>
  
  <body>
    <textarea id="editor_id" name="content" style="width:700px;height:300px;">
&lt;strong&gt;HTML内容&lt;/strong&gt;
	</textarea>
  </body>
</html>
