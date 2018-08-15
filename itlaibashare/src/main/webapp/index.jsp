<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

<title>it资源共享</title>

<%@include file="/common/common.jspf" %>

</head>

	

<body>

<!-- about -->

<%@include file="/common/topdh.jspf" %>

<c:if test="${empty myresources }">

	<script type="text/javascript">		

		window.location="${proPath}/resource/sys";					

	</script>

</c:if>
<!-- 个人简历 -->
<%@include file="/common/jianli.jspf" %>
<!-- projects -->

<div class="projects" id="projects">

	<div class="container">

	<span class="about-top-w3"><a name="stationmaster">资源下载</a> </span>

		<h4 class="title-w3ls">个人项目

			<%-- <span style="float: right;font-size: 0.8em"><a href="${proPath }/base/gourl/main/myresources">更多</a></span> --%>

		</h4>

		<div class="news-bottom">		

			<c:forEach items="${myresources }" var="myresource">

				<div class="news-one-wthree-agile" style="overflow: hidden;">

					<div class="col-md-6 news-left">

				        <div class="biseller-column">

							<a class="lightbox">

								<img  src="${proPath}/img/${myresource.myresourceImg } " alt=""/>

							</a> 

							<div class="lightbox-target" id="one">

							 <img src="${proPath }/main/images/scm.png" alt=""/>

							 <p class="pop">${myresource.myresourceContent }</p>

							   <a class="lightbox-close" href="#"> </a>

								<div class="clearfix"> </div>

							</div>

					   </div>

				</div>					

				<div class="col-md-6 news-right"> 

					<a href="#one"><h4>${myresource.myresourceTitle }</h4></a>

						<span class="para-w3-agile" style="font-size: 10px">${myresource.myresourceContent }

						</span>

						<br>	

						<a href="${myresource.myresourceUrl }" style="float: left;color: green">源码下载</a>

						<a href="${myresource.myresourceSayurl }" style="float: right;color: green">项目预览</a>						

					</div>	

					<div class="clearfix"></div>	

				</div>

			</c:forEach>	

	</div>

</div>
</div>




<!---->

<div class="projects" id="projects">

	<div class="container">

	<span class="about-top-w3"><a  name="publicresource">资源下载 </a></span>

		<h4 class="title-w3ls">资源下载

			<span style="float: right;font-size: 0.6em"><a href="${proPath }/resource/syspage">更多资源</a></span>

		</h4>

		<div class="news-bottom">

				<div class="news-one-wthree-agile">					

					<c:forEach items="${blobs }" var="resource">				

						<div class="col-md-12 news-left"> 

						<a><h4>${resource.resourceName }</h4></a>

							<p class="para-w3-agile">${resource.resourceIntroduce }</p>	

							<a href="${resource.resourceUrl }" style="float: right;color: green">资源下载</a>

						</div>

					</c:forEach> 

				</div>						

			</div>	

	</div>

</div>







<!-- //projects -->



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