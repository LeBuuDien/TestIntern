<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.6.0.js"></script>
    <script src="Scripts/jquery-3.6.0.intellisense.js"></script>
</head>
<body>
    <form id="form1" runat="server">
          <asp:ScriptManager runat="server" ID="sm1" EnablePageMethods="true" />  
        <div>
            <script type="text/javascript">
                function getValues() {
                    var txt = $("#txt1").val();
                    PageMethods.getValues(txt, getValues_Success, getValues_Fail);
                }
                function getValues_Success(msg) {
                    $("#div1").html(msg);
                }
                function getValues_Fail(msg) {
                    alert(msg.get_message());
                }   
            </script>   
                <input type="text" id="txt1"/>
            <br />
            <input type="button" onclick="getValues();" value="get Values" />
            <br />
            <div id ="div1"></div>
        </div>
    </form>
</body>
</html>
