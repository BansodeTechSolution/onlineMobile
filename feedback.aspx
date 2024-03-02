<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table width="100%"><tr align="center"><td>
<table style="height: 174px; width: 59%">
<tr align="center">
<td colspan="2"><asp:Label ID="Label1" runat="server" Text="FEEDBACK FORM"></asp:Label></td></tr>
<tr align="center">
<td><asp:Label ID="Label2" runat="server" Text="EMAIL ADDRESS"></asp:Label></td>
<td><asp:TextBox ID="TextBox1" runat="server" Width="174px" ReadOnly="True"></asp:TextBox></td></tr>
<tr align="center">
<td><asp:Label ID="Label3" runat="server" Text="ANY SUGGESTION"></asp:Label></td>
<td><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox></td></tr>
<tr align="center">
<td><asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" /></td>
<td><asp:Button ID="Button2" runat="server" Text="CLEAR" onclick="Button2_Click" /></td></tr>
</table>
</td></tr>
<tr align="center"><td colspan="2"> 
    <asp:Label ID="lblerror" runat="server" Text=""></asp:Label></td></tr>

</table>


</asp:Content>

