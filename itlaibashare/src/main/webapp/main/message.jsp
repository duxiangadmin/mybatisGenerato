<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>it留言</title>
<%@include file="/common/common.jspf" %>
<style type="text/css">

</style><%-- 
<c:if test="${empty messags }">
	<script type="text/javascript">
		window.location="${proPath}/message/selectpage"
	</script>
</c:if> --%>
</head>
	
<body>
<!-- about -->
<%@include file="/common/topdh.jspf" %>

<div class="projects" id="projects">
	<div class="container">
	<span class="about-top-w3"><a  name="problem">留言</a></span>
		<h4 class="title-w3ls">留言列表</h4>		
		<div class="news-bottom">
				<div class="news-one-wthree-agile">					
					<c:forEach items="${messags }" var="message">			
						<div class="col-md-12 news-left" style="border-bottom:1px solid green;margin:5px"> 
						<a href="#one"><h4>${message.messageTitle }</h4></a>
							<!-- 这里的word-wrap:break-word，可以实现内容自动换行
								text-indent:2em实现首行缩进两个字符
							 -->
							<p class="para-w3-agile" style="word-wrap:break-word;text-indent:2em">${message.messageContent }</p>
							<a style="float: left;color: green;display: block;">留言时间：${message.messageTime }</a>	
							<a style="float: right;color: green;display: block;">留言人：${message.messageUser }</a>
							<!-- <a href="" style="float: right;color: green">回复</a> -->
						</div>					
					</c:forEach>
				</div>						
			</div>	
	</div>
</div>
<div style="text-align:center">
		<a title="总页数">&nbsp;<b>共${page.tp }页</b><b>${page.rows }记录</b></a>
		<a href="?start=0">首  页</a>	
		
		<c:choose>
			<c:when test="${page.start eq 0 }">
				<a>上一页</a>
			</c:when>
			<c:otherwise>
				<a href="?start=${page.start-page.count}#problem">上一页</a>
			</c:otherwise>
		</c:choose>
		
		
		<%--我们需要计算页码列表的开始和结束位置，即两个变量begin和end
			计算它们需要通过当前页码！
			1. 总页数不足6页--> begin=1, end=最大页
			2. 通过公式设置begin和end，begin=当前页-1，end=当前页+3
			3. 如果begin<1，那么让begin=1，end=6
			4. 如果end>tp, 让begin=tp-5, end=tp
			 --%>
			 <c:choose>
			 	<c:when test="${page.tp <= 6 }">
			 		<c:set var="begin" value="1"/>
			 		<c:set var="end" value="${page.tp }"/>
			 	</c:when>
			 	<c:otherwise>
			 		<c:set var="begin" value="${page.start-2 }"/>
			 		<c:set var="end" value="${page.start + 3}"/>
			 		<c:if test="${begin < 1 }">
			 		  <c:set var="begin" value="1"/>
			 		  <c:set var="end" value="6"/>
			 		</c:if>
			 		<c:if test="${end > page.tp }">
			 		  <c:set var="begin" value="${page.tp-5 }"/>
			 		  <c:set var="end" value="${page.tp }"/>
			 		</c:if> 		
			 	</c:otherwise>
			 </c:choose>
			 
			 <c:forEach begin="${begin }" end="${end }" var="i">
			   <c:choose>
			   	  <c:when test="${i eq page.start }">
			   	    <span class="spanBtnSelect">${i }</span>
			   	  </c:when>
			   	  <c:otherwise>   	  	
			   	  	<%-- <a href="<c:url value='?start=${i }'"/> ${i }</a>  --%> 
			   	  	<a href="<c:url value="?start=${(i-1)*page.count }"/>" >${i }</a>  	    
			   	  </c:otherwise>
			   </c:choose>
			</c:forEach>
		<%-- 显示点点点 --%>
	    <c:if test="${end < page.tp }">
	      <span class="spanApostrophe">...</span>
	    </c:if>
		
				
		<c:choose>	
			<c:when test="${(page.count+page.start > page.rows)}">
				<a>下一页</a>
			</c:when>
			<c:otherwise>			
				<a href="?start=${page.start+page.count}#problem">下一页</a>
			</c:otherwise>
		</c:choose>
		
		<%-- <a href="?start=${page.start+page.count}">下一页</a> --%>
		<a href="?start=${page.last}">末  页</a>
	</div>

<!-- contact -->
<%@include file="/common/buttom.jspf" %>
<!-- //footer -->
<script src="${proPath }/main/js/bars.js"></script>

<!-- 处理技能进度条的 -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>