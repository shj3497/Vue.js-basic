<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Vue_1</title>
<!-- vue를 CDN 불러오기 babel 스크립트 사용해서 하는것 -->
<!-- <script type="text/javascript" src="https://unpkg.com/vue@2.5.16/dist/vue.js"></script> -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

</head>
<body>
<%
	String s = "Hello Vue.js ~~!!";
%>
	<div id="simple">
		<h2>{{message}}</h2>
		<h2 v-text="message"></h2>
		<h2 v-html="message"></h2>
	</div>

	<script>
		// Model
		var sVal = "<%= s %>";
		var model = { message: sVal};
		
		// ViewModel
		var simple = new Vue({
			el:'#simple',
			data : model
		});

	</script>
</body>
</html>