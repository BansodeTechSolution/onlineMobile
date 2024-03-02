<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditOrder.aspx.cs" Inherits="EditOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
<table width="50%">
<tr align="center">
<td><asp:Label ID="Label1" runat="server" Text="S.NO."></asp:Label></td>
<td><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td></tr>
<tr align="center">
<td><asp:Label ID="Label2" runat="server" Text="PRODUCT ID"></asp:Label></td>
<td><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td></tr>
<tr align="center">
<td><asp:Label ID="Label3" runat="server" Text="PRODUCT NAME"></asp:Label></td>
<td><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td></tr>
<tr align="center">
<td><asp:Label ID="Label4" runat="server" Text="PRICE"></asp:Label></td>
<td><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td></tr>
<tr align="center">
<td><asp:Label ID="Label5" runat="server" Text="QUANTITY"></asp:Label></td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
        <asp:ListItem Value="5"></asp:ListItem>
    </asp:DropDownList>
</td></tr>
<tr align="center">
<td><asp:Label ID="Label6" runat="server" Text="TOTAL PRICE"></asp:Label></td>
<td><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td></tr>
<tr><td align="center" colspan="2">
    <asp:Button ID="Button1" runat="server" Text="MODIFY" Width="115px" 
        onclick="Button1_Click" />&nbsp;
    <br />
    <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
    </td></tr>
</table>
</center>

</asp:Content>

