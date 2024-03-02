<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="viewfeedback.aspx.cs" Inherits="viewfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
    <asp:GridView ID="GridView1" runat="server" Width="60%" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="emailid" HeaderText="EMAIL ADDRESS" 
                SortExpression="emailid" />
            <asp:BoundField DataField="suggestion" HeaderText="SUGGESTION" 
                SortExpression="suggestion" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:con %>" 
        SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
</center>
</asp:Content>

