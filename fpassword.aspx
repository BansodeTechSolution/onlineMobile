 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fpassword.aspx.cs" Inherits="fpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<center>    <table width="40%" >
<tr align="center">
<td colspan="2">
    <h2><asp:Label ID="Label1" runat="server" Text="FORGOT PASSWORD FORM" ForeColor="Red"></asp:Label></h2></td>
</tr>
<tr align="center">
<td>
    <asp:Label ID="Label2" runat="server" Text="EMAIL ADDRESS"></asp:Label></td>
    <td><asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <br />
    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
    ControlToValidate="TextBox1" ErrorMessage="Invalid Email Format" ForeColor="Red"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr align="center">
<td>
    <asp:Label ID="Label6" runat="server" Text="YOUR QUESTION"></asp:Label></td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server"  width="175px"
            style="margin-left: 0px" >
            
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="mother name"></asp:ListItem>
            <asp:ListItem Value="father name "></asp:ListItem>
            <asp:ListItem Value="1st phone number"> </asp:ListItem>
            <asp:ListItem Value="pet name"></asp:ListItem>
            <asp:ListItem Value="college name "></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select question"
    ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr align="center">
<td>
    <asp:Label ID="Label7" runat="server" Text="ANSWER"></asp:Label></td>
    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Answer"
    ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
    </td>

</tr>
<tr align="center">
<td colspan="2">
    <asp:Button ID="Button1" runat="server" Text="RECOVER PASSWORD"  
        onclick="Button1_Click" BackColor="#FFFF66" BorderColor="#000066" 
        Font-Bold="True" Font-Italic="False" Height="25px" /></td>
</tr>


<tr align="center">
<td colspan="2" class="style1">
   <a href="login.aspx"> <asp:Label ID="Label5" runat="server" Text="LOGIN HERE"></asp:Label></a> </td>
</tr>
<tr align="center">
<td colspan="2">
    <asp:Label ID="lblerror" runat="server" Text=""></asp:Label></td>
</tr>


</table>
</center>
</asp:Content>

