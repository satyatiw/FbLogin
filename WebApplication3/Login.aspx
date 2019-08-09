<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID=L1 runat="server" Text="Username" ></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="T1" runat="server" ></asp:TextBox>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:Label ID="L2" runat="server" Text="Password" ></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="T2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:Button ID="B1" Text="Login" runat="server" OnClick="B1_Click" style="width: 47px"></asp:Button>
                    </td>
                </tr>
              
            <tr>
                <td>
                    <asp:Label ID="L3" runat="server" Text="Wrong Credentials"></asp:Label>
                </td>
            </tr>
              </table>
        </div>
    </form>
</body>
</html>
