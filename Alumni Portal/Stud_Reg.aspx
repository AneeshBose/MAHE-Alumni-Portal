<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProjectPage.Master" AutoEventWireup="true" CodeBehind="Stud_Reg.aspx.cs" Inherits="IT_Project.Stud_Reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:azure"> Welcome, Student. </h1>

    <asp:Label ID="Label1" runat="server" Text="Please enter your details(* fields are compulsory)" ForeColor="White"></asp:Label> <br />
    <table style="width:60%; align-content:center">  
        <tr>  
            <td><h4 style="color:whitesmoke"> *Registration Number: </h4></td>  
            <td>  
                <asp:TextBox ID="regNoId" runat="server" BackColor="White" />  
                <asp:RequiredFieldValidator ID="rfvregNo" ErrorMessage="Please enter Registration Number!" ForeColor="Red" ControlToValidate="regNoId" runat="server" /> 
            </td>    
        </tr>
        <tr>  
            <td><h4 style="color:whitesmoke"> *Name: </h4></td>  
            <td> 
                <asp:TextBox ID="name" runat="server" BackColor="White"  />
                <asp:RequiredFieldValidator ID="rvfName" runat="server" ErrorMessage="Name cannot be empty!" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>
            </td> 
        </tr> 
        <tr>  
            <td><h4 style="color:whitesmoke"> *Year: </h4></td>  
            <td>  
                <asp:TextBox ID="year" runat="server" BackColor="White"  />
                <asp:RequiredFieldValidator ID="rfvyear" runat="server" ErrorMessage="Year cannot be empty!" ForeColor="Red" ControlToValidate="year"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvyear" runat="server" ErrorMessage="Enter a valid year!" ForeColor="Red" ControlToValidate="year" Type="Integer" MinimumValue="1996" MaximumValue="2020"></asp:RangeValidator>
           </td>
        </tr> 
         <tr>  
            <td><h4 style="color:whitesmoke"> *Branch: </h4></td>  
            <td>  
                <asp:TextBox ID="branch" runat="server" BackColor="White"  />
                <asp:RequiredFieldValidator ID="rfvbranch" runat="server" ErrorMessage="Required Field!" ForeColor="Red" ControlToValidate="branch"></asp:RequiredFieldValidator>
           </td>
        </tr> 
        <tr>  
            <td><h4 style="color:whitesmoke">Company:</h4> </td>  
            <td>  
                <asp:TextBox ID="comp" runat="server" BackColor="White"  />
           </td>
        </tr> 
        <tr>  
            <td>  
                <asp:Button ID="btnSubmit" runat="server" Text="Register" BackColor="#00ffcc" OnClick="btnSubmit_Click"/> 
            </td>  
        </tr>  
    </table>  
</asp:Content>
