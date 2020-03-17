<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProjectPage.Master" AutoEventWireup="true" CodeBehind="ProxyContent.aspx.cs" Inherits="IT_Project.ProxyContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="" Font-Size="XX-Large" ForeColor="WhiteSmoke"></asp:Label> <br /> <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Stud_Reg.aspx" ForeColor="WhiteSmoke" Font-Size="X-Large">Student Registration</asp:HyperLink> <br /> 
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin_Login.aspx" ForeColor="WhiteSmoke" Font-Size="X-Large">Administrator Login</asp:HyperLink>
</asp:Content>
