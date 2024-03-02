<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center>
    <asp:Label ID="lblerror" runat="server" ></asp:Label>
<table width="60%">
<tr><td colspan="2" align="center"><asp:Label ID="Label1" runat="server" Text="CHANGE PASSWORD "></asp:Label>
<br /></td>

</tr>
    <tr align="center"><td > <asp:Label ID="Label2" runat="server" Text="EMAIL ADDRESS"></asp:Label>
    <br />
    </td>
    <td><asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox><br /></td></tr>
     <tr align="center"><td > <asp:Label ID="Label5" runat="server" Text="CURRENT PASSWORD"></asp:Label>
     
     <br /></td>
    <td><asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox><br /></td></tr>
<tr align="center"><td><asp:Label ID="Label3" runat="server" Text="NEW PASSWORD "></asp:Label><br /></td>
<td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td></tr>
    <tr align="center"><td> <asp:Label ID="Label4" runat="server" Text="CONFIRM PASSWORD"></asp:Label><br /></td>
    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td></tr>
<tr align="center"><td>
    <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" /></td>
    <td>
    <asp:Button ID="Button2" runat="server" Text="CLEAR" onclick="Button2_Click" /></td></tr>
</table>
</center>

</asp:Content>

