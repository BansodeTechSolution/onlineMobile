<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="vieworder.aspx.cs" Inherits="vieworder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
    <asp:GridView ID="GridView1" runat="server" Width="80%" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="orderid" 
                SortExpression="orderid" />
            <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" />
            <asp:BoundField DataField="productid" HeaderText="productid" 
                SortExpression="productid" />
            <asp:BoundField DataField="productname" HeaderText="productname" 
                SortExpression="productname" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" 
                SortExpression="quantity" />
            <asp:BoundField DataField="dateoforder" HeaderText="dateoforder" 
                SortExpression="dateoforder" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:con %>" 
        SelectCommand="SELECT * FROM [orderdetails]"></asp:SqlDataSource>
</center>
</asp:Content>

