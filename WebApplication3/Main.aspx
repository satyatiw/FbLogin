<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="WebApplication3.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
      
    <style type="text/css">


        body
        {
            background-image:url("images/bg1.jpg");
            background-size:cover;
        }
        th {
            text-align:left;
            
        }
        #t1 td {
            height:40px;
        }
   

        #div1
        {
        
            border:1px solid black;
            background-color:#3b5998;
            height:100px;
            width:100%;
            
           }

        #div2
        {
           
            float:right;
        }
        #div3
        {
            float:right;
            position:relative;
        }
        #div4 {

        }
 
    </style>

    <script>
        function myFunction() {
  var x = document.getElementById("T2");
  if (x.value==''){
  document.getElementById("T2").style.borderColor='red';
  }
}
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="div1">
   <asp:Image ID="Image2" runat="server" ImageUrl="images/f2.png" style="width:200px; height:60px; "  />
            
            <div id="div2">
                       
            <table >
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="L1" runat="server" Text="Emain or Phone" Style="color:white;" ></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="L2" runat="server" Text="Password"  Style="color:white;"></asp:Label>
                   </td>
                </tr>
                <tr>
                   
                    <td >
                        <asp:TextBox ID="T1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="T2" runat="server" TextMode="Password" onfocusout="myFunction()"></asp:TextBox>
                    </td>
                
                <td>
                    <asp:Button ID="B1" runat="server" Text="Login" OnClick="B1_Click"   />
                </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="L4" runat="server" Text="Wrong Credentials"  Style="color:white;"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="L3" runat="server" Text="Forgotten account...?"  Style="color:white;"></asp:Label>
                    </td>
                </tr>
                
            </table>
        </div>
            </div>

        <div id="div3" >

            
              <h1 style="font-family:Courier New, Courier, monospace; font-size:xx-large;">  Create a new Account.</h1>
              <h2 style="font-family: 'Lucida Sans',sans-serif; font-size:14px; "> Its Quick & Easy.</h2> 
                  
            <table id="t1">  
                <tr>
                    <td>
                        <asp:TextBox ID="T3" runat="server" Placeholder="First Name"  style="border-radius: 15px; padding: 20px;  width: 120px; height: 10px;"></asp:TextBox>

                    </td>
                    <td>
                        <asp:TextBox ID="T4" runat="server" Placeholder="Last Name"  style="border-radius: 15px; padding: 20px;  width: 120px; height: 7px;"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="T3" ErrorMessage="Enter FirstName" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" BorderColor="Red" runat="server" ControlToValidate="T4" ErrorMessage="Enter LastName" ForeColor="Red" SetFocusOnError="true" ></asp:RequiredFieldValidator>
                  
                    </td>
                </tr>
                <tr>
                    <td>
                       <asp:TextBox ID="T5" runat="server" Placeholder="Email Id or Phone" style="border-radius: 15px; padding: 20px;  width: 200px; height:7px;"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RequiredFieldValidator3" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="T5" ErrorMessage="Invalid Email Format" ForeColor="Red"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="T6" runat="server" Placeholder="New Password" TextMode="Password" style="border-radius: 15px; padding: 20px;  width: 200px; height: 7px;"></asp:TextBox>
                    </td>
                   <td>
                         <asp:RegularExpressionValidator ControlToValidate="T6"  ID="REV1" runat="server" ForeColor="Red"
         ErrorMessage="Password is not strong enough" 
         ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:TextBox ID="T7" runat="server" Placeholder="Confirm Password" TextMode="Password" style="border-radius: 15px; padding: 20px;  width: 200px; height: 7px;"></asp:TextBox>
                  
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="T7" runat="server" ForeColor="Red" ControlToCompare="T6" ErrorMessage="No Match"></asp:CompareValidator>
                         <asp:RegularExpressionValidator ControlToValidate="T6"  ID="RegularExpressionValidator1" runat="server" ForeColor="Red"
         ErrorMessage="Password is not strong enough" 
         ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$"></asp:RegularExpressionValidator>
                    </td>
                    </td>
                </tr>      
            
                <tr>
                    <td>
                         Gender 
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="RL1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                             <asp:ListItem Value="Female">FeMale</asp:ListItem>
                             <asp:ListItem Value="Others">Others</asp:ListItem>
                        </asp:RadioButtonList>
                        </td>
                    </tr>
                <tr>
                    <td>Select City
                   
                    <asp:DropDownList ID="DDL1" runat="server" style=" width: 120px; height: 30px;">
                        <asp:ListItem Value="">Please Select</asp:ListItem>
                         <asp:ListItem Value="N">Noida</asp:ListItem>
                         <asp:ListItem Value="G">Ghaziabad</asp:ListItem>
                         <asp:ListItem Value="O">Orai</asp:ListItem>
                         <asp:ListItem Value="A">Agra</asp:ListItem>
                        <asp:ListItem Value="J">Jhansi</asp:ListItem>
                    </asp:DropDownList>
                       </td> 
                       </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CB1" runat="server" Checked="true" /> I Agree to the terms and Conditions.
                    </td>
                    
                       
                    
               </tr>
                <tr>
                    
                    <td>
                    <asp:Button ID="B2" runat="server" Text="SignUp" Style="margin-top:40px;margin-left:40px; height:30px;width:100px;" OnClick="B2_Click" />
               </td>
                                        <td>
                    <asp:Button ID="B3" runat="server" Text="Clear" Style="margin-top:40px;margin-left:40px; height:30px;width:100px;" OnClick="B3_Click"/>
               </td>
                </tr>
                     </table>
            </div>
        <div id="div4" style="float:left;">
            <table>
                <tr>
                    <td>
         <asp:Label ID="L5" runat="server" Text="Satyam Tiwari" style= " margin-top:40px; margin-left:40px;"/>
                  </td></tr>
            
                <tr>
                    <td>
        <asp:Image ID="I2" runat="server" ImageUrl="images/pp1.jpg" style=" margin-left:40px; height:200px; width:200px;"/>
                  </td></tr>
                </table>
                 </div>
           
    </form>
</body>
</html>
