<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="UTF-8">
<title>QueueService test</title>
<script type="text/javascript">
	function fList() {
		f.action = 'queue/list';
		f.submit();
	}
	function fGet() {
		f.action = 'queue/get/' + f.qlog_id.value;
		f.submit();
	}
	function fAdd() {
		f.action = 'queue/add';
		f.submit();
	}
</script>
</head>
<body>
	<h1>QueueService test</h1>
	<hr style="border: solid 2px black;" />
	<form name="f" method="post">
		<div>
			<input type="button" value="전체 리스트" onclick="fList()" />
		</div>
		<hr />
		<div>
			<table border="1">
				<tr align="center">
					<th>QLOG_ID</th>
				</tr>
				<tr align="center">
					<td><input type="text" name="qlog_id"></td>
				</tr>
			</table>
			<input type="button" value="조회" onclick="fGet()" />
		</div>
		<hr />
		<div>
			<table border="1">
				<tr align="center">
					<th>QLOG_CONTACT</th>
				</tr>
				<tr align="center">
					<td><input type="text" name="qlog_contact"></td>
				</tr>
			</table>
			<input type="button" value="추가(미구현)" onclick="fAdd();" />
		</div>
		<hr />
	</form>
	<!-- 
		<div>
			<h4>QueueAwaiterDao.selectQueueAwaiterList()</h4>
			<table border="1">
				<tr align="center">
					<td>QAWT_ID</td>
					<td>QAWT_CONTACT</td>
				</tr>
				<c:forEach var="queueAwaiter" items="${queueAwaiterList}">
					<tr align="center">
						<td>${queueAwaiter.qawt_id}</td>
						<td>${queueAwaiter.qawt_contact}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<hr/>
		<div>
			<h4>QueueAwaiterDao.selectQueueAwaiterById(Integer qawtId)</h4>
			<table border="1">
				<tr align="center">
					<td>QAWT_ID</td>
					<td>QAWT_CONTACT</td>
				</tr>
				<tr align="center">
					<td>${queueAwaiter.qawt_id}</td>
					<td>${queueAwaiter.qawt_contact}</td>
				</tr>
			</table>
		</div>
		<hr/>
		<div>
			<h4>QueueAwaiterDao.selectNextAwaiter()</h4>
			<table border="1">
				<tr align="center">
					<td>QAWT_ID</td>
					<td>QAWT_CONTACT</td>
				</tr>
				<tr align="center">
					<td>${nextAwaiter.qawt_id}</td>
					<td>${nextAwaiter.qawt_contact}</td>
				</tr>
			</table>
		</div>
	 	-->
</body>
</html>
