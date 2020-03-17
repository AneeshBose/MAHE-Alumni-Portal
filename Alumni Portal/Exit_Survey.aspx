<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProjectPage.Master" AutoEventWireup="true" CodeBehind="Exit_Survey.aspx.cs" Inherits="IT_Project.Exit_Survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="color:whitesmoke;"> Thank You. Please fill up the Exit Survey Form before you leave. </h2> <br /> <br />
    <table style="width:60%; align-content:center">  
        <tr>  
            <td><h4 style="color:whitesmoke"> *Registration Number: </h4></td>  
            <td>  
                <asp:TextBox ID="regNoId" runat="server" BackColor="White" />  
                <asp:RequiredFieldValidator ID="rfvregNo" ErrorMessage="Please enter Registration Number!" ForeColor="Red" ControlToValidate="regNoId" runat="server" ValidationGroup="bypass" /> 
            </td>    
        </tr>
        <tr>  
            <td><h4 style="color:whitesmoke"> Employment Status(optional): </h4></td>  
            <td> 
                <asp:TextBox ID="employment_stat" runat="server" BackColor="White"  />
            </td> 
        </tr> 
        <tr>  
            <td><h4 style="color:whitesmoke"> Salary(optional): </h4></td>  
            <td>  
                <asp:TextBox ID="salary" runat="server" BackColor="White"  />
           </td>
        </tr> 
         <tr>  
            <td><h4 style="color:whitesmoke"> *Degree: </h4></td>  
            <td>  
                <asp:TextBox ID="degree" runat="server" BackColor="White"  />
                <asp:RequiredFieldValidator ID="rfvbranch" runat="server" ErrorMessage="Required Field!" ForeColor="Red" ControlToValidate="degree" ValidationGroup="bypass"></asp:RequiredFieldValidator>
           </td>
        </tr> 
        <tr>  
            <td><h4 style="color:whitesmoke"> *Minor: </h4> </td>  
            <td>  
                <asp:TextBox ID="minor" runat="server" BackColor="White"  />
                <asp:RequiredFieldValidator ID="rfvminor" runat="server" ErrorMessage="Required Field!" ForeColor="Red" ControlToValidate="minor" ValidationGroup="bypass"></asp:RequiredFieldValidator>
           </td>
        </tr> 
         <tr>  
            <td><h4 style="color:whitesmoke"> Comments(optional): </h4> </td>  
            <td>  
                <asp:TextBox ID="comments" runat="server" BackColor="White"  />
           </td>
        </tr> 
        <tr>  
            <td>  
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#00ffcc" OnClick="btnSubmit_Click" ValidationGroup="bypass"/> 
            </td>  
            <td><asp:Button ID="autofill" runat="server" Text="AutoFill" BackColor="YellowGreen" OnClick="autofill_Click"></asp:Button></td>
        </tr>  
    </table>  
</asp:Content>
