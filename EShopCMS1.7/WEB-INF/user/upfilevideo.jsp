<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <s:head/>
</head>

<body>
<style>
body{
font-size:12px;
}
</style>
<script language="javascript">
<s:set name="fname" value="getFileName()"/>
<s:if test="#fname!=null">
parent.document.getElementById("vedioname").value='<s:property value="getFileName()"/>';
</s:if>

function check()
{
if(document.getElementById("myFile").value==null)
{
return false;
}
return true;
}
</script>

<table width="100%" border="00" cellspacing="1" cellpadding="0" style="border:0px #0099FF inset">
  <tr>
    <td width="31%"><table width="100%" border="0" cellspacing="1" cellpadding="0" style="border:0px #0099FF doble;">
      <tr>
        <td width="100%" height="25" align="left"  >
        <s:form method="post" name="uploadForm" action="upfilevideo.jspx"
        enctype="multipart/form-data" onsubmit="return check();"
        theme="simple">
        <input type="file" name="myFile" lable="选择后上传" />
        <br><s:submit value="选择文件后上传" />
    </s:form>
        
        
       </td>
      </tr>
     

    </table></td>
  </tr>
</table>
</body>
</html>
