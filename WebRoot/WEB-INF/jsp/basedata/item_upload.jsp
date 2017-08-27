<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>       
<html>
<head>
<title></title>
<link rel="stylesheet" href="../style/drp.css">
<script src="../script/client_validate.js"></script>
<script language="javascript">
	function upload() {
		with (document.getElementById("itemForm")) {
			method = "post";
			action = "item.do?command=upload&pageNo=${itemForm.pageNo}&pageSize=${itemForm.pageSize}";
			submit();
		}
	}
	
	function goBack() {
		window.self.location = "item.do?command=list&pageNo=${itemForm.pageNo}&pageSize=${itemForm.pageSize}";
	}
</script>
</head>

<body  class="body1">
<form name="itemForm" id="itemForm" enctype="multipart/form-data">
   <input type="hidden" name="itemNo" value="${ item.itemNo }">
  <div align="center"> 
    <table width="95%" border="0" cellspacing="2" cellpadding="2">
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
  <table width="95%" border="0" cellspacing="0" cellpadding="0" height="8">
    <tr> 
        <td width="522" class="p1" height="25" nowrap><img src="../images/mark_arrow_03.gif" width="14" height="14">&nbsp;<b><bean:message key="drp.basedata"/>&gt;&gt;<bean:message key="drp.basedata.item"/>&gt;&gt;<bean:message key="drp.button.uploadImage"/></b></td>
    </tr>
  </table>
    <hr width="97%" align="center" size=0>
    <table width="95%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="22%" height="29"><div align="right"><bean:message key="drp.basedata.item.itemNo"/>:&nbsp; </div></td>
        <td width="78%">${ item.itemNo }</td>
      </tr>
      <tr>
        <td height="26"><div align="right"><bean:message key="drp.basedata.item.itemName"/>:&nbsp;</div></td>
        <td>${ item.itemName }</td>
      </tr>
      <tr>
        <td height="26"><div align="right"><bean:message key="drp.basedata.item.spec"/>:&nbsp;</div></td>
        <td>${ item.spec }</td>
      </tr>
      <tr>
        <td height="26"><div align="right"><bean:message key="drp.basedata.item.pattern"/>:&nbsp;</div></td>
        <td>${ item.pattern }</td>
      </tr>
      <tr>
        <td height="26"><div align="right"><bean:message key="drp.basedata.item.category"/>:&nbsp;</div></td>
        <td>${ item.category.name }</td>
      </tr>
      <tr>
        <td height="26"><div align="right"><bean:message key="drp.basedata.item.unit"/>:&nbsp;</div></td>
        <td>${ item.unit.name }</td>
      </tr>
      <tr>
        <td height="74"><div align="right"><bean:message key="drp.basedata.item.image"/>:&nbsp;</div></td>
        <td><img src="../images/item/${ item.itemNo }.gif" width="85" height="49"></td>
      </tr>
      <tr> 
        <td width="22%" height="29"> <div align="right"><font color="#FF0000">*</font><bean:message key="drp.basedata.item.selectimage"/>:&nbsp; 
          </div></td>
        <td width="78%"><input name="fileName" type="file"  class="text1" id=""uploadFile"" size="40" maxlength="40">        </td>
      </tr>
    </table>
    <hr width="97%" align="center" size=0>
    <div align="center">
      <input name="btnUpload" class="button1" type="button" id="btnUpload" value="<bean:message key="drp.button.uploadImage"/>" onClick="upload()" >
      &nbsp;&nbsp;&nbsp;&nbsp; 
      <input name="btnBack" class="button1" type="button" id="btnBack" value="<bean:message key="drp.button.goback"/>"  onClick="goBack()">
    </div>
  </div>
</form>
</body>
</html>