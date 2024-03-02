<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">


<center><table width="40%" >
<tr align="center">
<td colspan="2"><h2><asp:Label ID="Label1" runat="server" Text="LOGIN FORM" ForeColor="Red"></asp:Label></h2></td>
</tr>
<tr align="center">
<td><asp:Label ID="Label2" runat="server" Text="USER NAME"></asp:Label></td>
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
    ControlToValidate="TextBox1" ErrorMessage="Invalid Email Format" ForeColor="Red"></asp:RegularExpressionValidator>

</td>
</tr>
<tr align="center">
<td><asp:Label ID="Label3" runat="server" Text="PASSWORD"></asp:Label>


</td>
<td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><br />
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Password"
    ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
</td>
   
</tr>
<tr align="center">
<td colspan="2">
    <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" 
        BackColor="#FFCC00" BorderColor="Black" Font-Bold="True" Font-Italic="True" 
        Height="25px" />
    <br />
    <asp:Label ID="lblerror" runat="server" Text=""></asp:Label></td>
</tr>

<tr align="center">
<td colspan="2"><br /><a href="fpassword.aspx"><asp:Label ID="Label4" 
        runat="server" Text="FORGOT PASSWORD" Font-Bold="True" Font-Italic="True" 
        ForeColor="Black"></asp:Label></a></td>
</tr>

<tr align="center">
<td colspan="2"><br /><a href="reg.aspx" ><asp:Label ID="Label5" runat="server" 
        Text="NEW REGISTRATION" Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label></a></td>
</tr>

</table>
</center>


</asp:Content>


