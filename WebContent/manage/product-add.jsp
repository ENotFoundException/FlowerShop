<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��̨���� - ��������-���ϻ���</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../scripts/function-manage.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" /></div>
	<div class="help"><a href="../indexSelect">����ǰ̨ҳ��</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="index.jsp">��ҳ</a></li>
			<li><a href="user">�û�</a></li>
			<li class="current"><a href="productSelect">��Ʒ</a></li>
			<li><a href="ordersel">����</a></li>
			<li><a href="SelManage">����</a></li>
			<li><a href="newsselect">����</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="welcome wrap">
		����Ա${name.EU_USER_ID}���ã���ӭ�ص�������̨��
	</div>
</div>
<div id="position" class="wrap">
	�����ڵ�λ�ã�<a href="index.jsp">��������-���ϻ���</a> &gt; ������̨
</div>
<div id="main" class="wrap">
	<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>�û�����</dt>
				<dd><em><a href="user-add.jsp">����</a></em><a href="user">�û�����</a></dd>
				<dt>��Ʒ��Ϣ</dt>
				<dd><em><a href="productClassAdd">����</a></em><a href="productClass">�������</a></dd>
				<dd><em><a href="productAdd">����</a></em><a href="productSelect">��Ʒ����</a></dd>
				<dt>��������</dt>
				<dd><a href="ordersel">��������</a></dd>
				<dt>���Թ���</dt>
				<dd><a href="SelManage">���Թ���</a></dd>
				<dt>���Ź���</dt>
				<dd><em><a href="news-add.jsp">����</a></em><a href="newsselect">���Ź���</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>������Ʒ</h2>
		<div class="manage">
			<form action="doProductAdd" method="post" enctype="multipart/form-data">
				<table class="form">
					<tr>
						<td class="field">��Ʒ���ƣ�</td>
						<td><input type="text" class="text" name="productName"  /></td>
					</tr>
					<tr>
						<td class="field">�������ࣺ</td>
						<td>
							<select name="parentId">
								<c:forEach var="f" items="${flist}">
									<option value="${f.EPC_ID }" disabled="disabled">${f.EPC_NAME }</option>
									<c:forEach var="c" items="${clist}">
										<c:if test="${f.EPC_ID==c.EPC_PARENT_ID}">
											<option value="${f.EPC_ID }-${c.EPC_ID }">&nbsp;&nbsp;${c.EPC_NAME }</option>
										</c:if>
									</c:forEach>
								</c:forEach>
							</select>
						</td>
					</tr>
					<tr>
						<td class="field">��ƷͼƬ��</td>
						<td><input type="file" class="text" name="photo" /></td>
					</tr>
					<tr>
						<td class="field">��Ʒ�۸�</td>
						<td><input type="text" class="text tiny" name="productPrice" /> Ԫ(����)</td>
					</tr>
					<tr>
						<td class="field">������</td>
						<td><input type="text" class="text" name="productDesc" /></td>
					</tr>
					<tr>
						<td class="field">��棺</td>
						<td><input type="text" class="text tiny" name="productStock" /></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="����" /></label></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<%@ include file="/include/footer.jsp" %>
</body>
</html>
