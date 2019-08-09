<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
          body
        {
            background-image:url("images/bg4.jpg") ;
           
            background-size:cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Img1" runat="server" ImageUrl="images/log.jpg" style="height:200px;width:200px;margin-left:600px;"/>

            <table>
                <tr>
                    <td>
                        <asp:Label ID="L1" runat="server" Text="" Style="font-size:40px;"></asp:Label>
                    </td>
                
                </tr>
                <tr>
                    <td>
                    <asp:Button ID="B1" runat="server" Text="LogOut" OnClick="B1_Click" Style="margin-left:100px;margin-top:100px;height:50px;width:100px;" ></asp:Button>
                    </td>
                    </tr>
                </table>
        </div>
    </form>
</body>
</html>
