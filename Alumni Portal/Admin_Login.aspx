<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="IT_Project.Admin_Login" %>

    <html xmlns="http://www.w3.org/1999/xhtml">  
      
    <head runat="server">  
        <title>Login Form</title>  
        <link href="Bootstrap/main.css" rel="stylesheet" />
        <%--<link href="Bootstrap/font-awesome.min.css" rel="stylesheet" />--%>
    </head>  
      
    <body style="background-image:url('mu_1.jpg'); background-repeat: no-repeat; background-size: cover;" >  
        <form id="form1" runat="server">  
            <div style="text-align:center"> 
                <h1 style="text-align:center; color:darkgoldenrod"> Administrator Login </h1>
                <div style="width:50%; margin: 0 auto; text-align:left;">
                    <table style="width:100%; border-spacing: 0 10em;">  
                        <tr>  
                            <td><b> Username: </b></td>  
                            <td>  
                                <asp:TextBox ID="txtUserName" runat="server" BackColor="WhiteSmoke"/>  
                                <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username!" ForeColor="Red" ControlToValidate="txtUserName" runat="server" /> 
                            </td>    
                        </tr>
                        <tr>  
                            <td><b> Password: </b></td>  
                            <td>  
                                <asp:TextBox ID="txtPWD" runat="server" TextMode="Password" BackColor="WhiteSmoke"/>  
                                <asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtPWD" ForeColor="Red" ErrorMessage="Please enter Password!" /> 
                            </td>  
                        </tr>  
                        <tr>  
                            <td>  
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#00ffcc" OnClick="btnSubmit_Click" /> 
                            </td>  
                        </tr>  
                    </table>  
                </div>
            </div>  
        </form>  
    </body>  
    </html>  
