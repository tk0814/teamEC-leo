<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<link rel="stylesheet" href="./css/style.css">
		<link rel="stylesheet" href="./css/purchaseHistory.css">
		<title>商品購入履歴一覧画面</title>

	</head>

<body>

		<jsp:include page="header.jsp"/>
	<div id="contents">
	<h1>商品購入履歴画面</h1>

	<s:if test="purchaseHistoryInfoDTOList!=null && purchaseHistoryInfoDTOList.size()>0">

		<table id="item_box">
			<tr>
				<th nowrap><s:label value="商品名"/></th>
				<th nowrap><s:label value="ふりがな"/></th>
				<th nowrap><s:label value="商品画像"/></th>
				<th nowrap><s:label value="発売会社名"/></th>
				<th nowrap><s:label value="発売年月日"/></th>
				<th nowrap><s:label value="値段"/></th>
				<th nowrap><s:label value="個数"/></th>
				<th nowrap><s:label value="合計金額"/></th>
				<th nowrap><s:label value="宛先名前"/></th> <!-- 性と名の間は全角スペースを空ける -->
				<th nowrap><s:label value="宛先住所"/></th>
			</tr>
				<s:iterator value="purchaseHistoryInfoDTOList">
				<tr>
					<td nowrap><s:property value="productName"/></td>
					<td nowrap><s:property value="productNameKana"/></td>
					<td nowrap><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>'width="50px" height="50px"/></td>
					<td nowrap><s:property value="releaseCompany"/></td>
					<td nowrap><s:property value="releaseDate"/></td>
					<td nowrap><s:property value="price"/>円</td>
					<td nowrap><s:property value="productCount"/>個</td>
					<td nowrap><s:property value="subtotal"/>円</td>
					<td nowrap><s:property value="familyName"/><span>　</span><s:property value="firstName"/></td>
					<td nowrap><s:property value="userAddress"/></td>
				</tr>

				</s:iterator>
		</table>

		<div class="submit_btn_box">
			<s:form action="DeletePurchaseHistoryAction">
				<s:submit value="履歴削除" class="btn"/>
			</s:form>
		</div>

	</s:if>

	<s:else>
		<div class="select_box">
		商品購入履歴情報がありません。
		</div>
	</s:else>

	</div>

</body>
</html>