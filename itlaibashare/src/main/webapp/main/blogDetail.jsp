<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>博客列表</title>
<%@include file="/common/common.jspf" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="${proPath}/editor/plugins/code/prettify.css"/>  
 
<style type="text/css">	
	pre.prettyprint {     
	    border: 1px solid rgb(204, 204, 204);  
	    background-color:#F8F8F8;  
	    margin-left: 2em;  
	    padding: 0.5em;  
	    font-size: 110%;  
	    display: block;  
	    font-family: "Consolas", "Monaco", "Bitstream Vera Sans Mono", "Courier New", Courier, monospace;  
	    margin: 1em 0px;  
	    white-space: pre-wrap;  
	}  
</style>
</head>
	
<body>
<!-- about -->
<%@include file="/common/topdh.jspf" %>

<div class="projects" id="projects">
	<div class="container">
	<span class="about-top-w3"><a  name="publicresource"> </a></span>
		<div class="row" >
	        <div class="col-xs-8 ">
				<h4 class="title-w3ls">
				<a href="${proPath }/blog/select">博客列表</a>		
				</h4>
			</div>
    	</div>
		<div class="news-bottom">
			<div class="news-one-wthree-agile">									
					<div class="col-md-12" style="margin-top:10px"> 
						<a  style="text-align: center;">
							<h2>${blogEssay.blogTitle }</h2>
						</a>
						
						<p style="padding-top: 100px">${blogEssay.blogContent }</p>							
					</div>
					<div class="col-md-12" style="margin-top:40px"></div>					
					<div class="col-md-2" style="margin-top:10px">						 
						<p>${blogEssay.blogClassify }</p>
					</div>
					<div class="col-md-8" style="margin-top:10px"></div>
					<div class="col-md-2" style="margin-top:10px"> 
						<p>${blogEssay.blogCreateTime }</p>
					</div> 
			</div>						
		</div>	
	</div>
</div>
<%-- <div>
		<div class="col-md-1" style="margin-top:10px;"> </div>		
		<div class="col-md-5" style="margin-top:10px;text-align: left;"> 
			<c:choose>
				<c:when test="${page.start eq 0 }">
					<a>上一篇</a>
				</c:when>
				<c:otherwise>
					<a href="${page.url}">上一篇</a>
				</c:otherwise>
			</c:choose>		
		</div>
		
		<div class="col-md-5" style="margin-top:10px;text-align: right;"> 		
			<c:choose>	
				<c:when test="${(page.count+page.start >= page.rows)}">
					<a>下一篇</a>
				</c:when>
				<c:otherwise>			
					<a href="${page.url}">下一篇</a>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-md-1" style="margin-top:10px;"> </div>
	</div> --%>
<!-- //about -->
<br><br>
	<div class="footer">
		<div class="container">
			<p>© 2018 网站所有权归本人所有，如转载请注明出处|  <a href="#">itlaiba.com</a></p>
		</div>
	</div>
</body>
<script type="text/javascript" src="${proPath}/editor/plugins/code/prettify.js"></script>  
<script>
	$(function(){
		prettyPrint();
	});	
</script> 
</html>