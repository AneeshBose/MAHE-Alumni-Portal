<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewFilters.aspx.cs" Inherits="IT_Project.ViewFilters" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> Alumni Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Logout" runat="server" Text="Logout" BackColor="SkyBlue" OnClick="Logout_Click" />
            </h2>  <br /> <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Reg_no" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Reg_no" HeaderText="Registration Number" ReadOnly="True" SortExpression="Reg_no" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                    <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectDBConnectionString %>" SelectCommand="SELECT * FROM [Alumni] WHERE (([Branch] LIKE @Branch) AND ([Company] LIKE @Company) AND ([Year] LIKE @Year))" OnSelected="SqlDataSource1_Selected">
                <SelectParameters>
                    <asp:SessionParameter Name="Branch" SessionField="branch" Type="String"/>
                    <asp:SessionParameter Name="Company" SessionField="company" Type="String"/>
                    <asp:SessionParameter Name="Year" SessionField="year" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <h2> Exit Survey Responses </h2> <br /> <br />

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AllowSorting="true" AllowPaging="true" PageSize="10" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="reg_id" DataSourceID="SqlDataSource2" GridLines="Vertical" HeaderStyle-ForeColor="WhiteSmoke">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="reg_id" HeaderText="Registration Id" ReadOnly="True" SortExpression="reg_id" />
                    <asp:BoundField DataField="employment_status" HeaderText="Employment Status" SortExpression="employment_status" />
                    <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
                    <asp:BoundField DataField="degree" HeaderText="Degree" SortExpression="degree" />
                    <asp:BoundField DataField="minor" HeaderText="Minor" SortExpression="minor" />
                    <asp:BoundField DataField="comments" HeaderText="Comments" SortExpression="comments" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectDBConnectionString %>" 
                SelectCommand="SELECT * FROM [Exit_Survey] WHERE reg_id in (SELECT Reg_no FROM Alumni WHERE (([Branch] LIKE @Branch) AND ([Company] LIKE @Company) AND ([Year] LIKE @Year)))">
                <SelectParameters>
                    <asp:SessionParameter Name="Branch" SessionField="branch" Type="String"/>
                    <asp:SessionParameter Name="Company" SessionField="company" Type="String"/>
                    <asp:SessionParameter Name="Year" SessionField="year" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
