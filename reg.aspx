<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
   
    <center>
    <table width="60%">
<tr align="center">
<td colspan="2">
   <h3> <asp:Label ID="Label1" runat="server" Text="REGISTRATION FORM" ForeColor="Red" 
           Font-Bold="True" Font-Italic="True"></asp:Label></h3></td>
</tr>
<tr align="center">
<td>
    <asp:Label ID="Label2" runat="server" Text="EMAIL ADDRESS" Font-Bold="False" 
        Font-Italic="False"></asp:Label></td>
    <td><asp:TextBox ID="TextBox1" runat="server" Width="253px"></asp:TextBox><br />
    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
    ControlToValidate="TextBox1" ErrorMessage="Invalid Email Format" ForeColor="Red"></asp:RegularExpressionValidator>
   </td>
</tr>
<tr align="center">
<td>
    <asp:Label ID="Label3" runat="server" Text="PASSWORD" Font-Bold="False"></asp:Label></td>
    <td><asp:TextBox ID="TextBox2" runat="server" Width="253px" TextMode="Password"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Password" 
        ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </td>

</tr>
<tr align="center">
<td>
    <asp:Label ID="Label4" runat="server" Text="COMFIRM PASSWORD"></asp:Label></td>
    <td><asp:TextBox ID="TextBox3" runat="server" Width="253px" TextMode="Password"
          ></asp:TextBox><br />
          <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="please Enter same password"
        ForeColor="Red" ControlToCompare="TextBox2" ControlToValidate="TextBox3"></asp:CompareValidator>
       </td>

</tr>
<tr align="center">
<td>
    <asp:Label ID="Label6" runat="server" Text="YOUR QUESTION"></asp:Label></td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="mother name"></asp:ListItem>
            <asp:ListItem Value="father name "></asp:ListItem>
            <asp:ListItem Value="first phone number"></asp:ListItem>
            <asp:ListItem Value="pet name"></asp:ListItem>
            <asp:ListItem Value="college name "></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Select Any Question"
         ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr align="center">
<td>
    <asp:Label ID="Label7" runat="server" Text="ANSWER"></asp:Label></td>
    <td><asp:TextBox ID="TextBox4" runat="server" Width="253px"></asp:TextBox>
    <br />
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Answer"
        ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
       </td>

</tr>
<tr align="center">
<td colspan="2">
    <asp:Button ID="Button1" runat="server" Text="SIGN IN" 
        onclick="SignInClick" style="height: 26px" /></td>
</tr>


<tr align="center">
<td colspan="2" class="style1">
  <br /> <a href="login.aspx"> <asp:Label ID="Label5" runat="server" Text="LOGIN HERE" ForeColor="Black" Font-Bold="True" Font-Italic="True"></asp:Label></a> </td>
</tr>
<tr align="center">
<td colspan="2">
   <br /> <asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red" Font-Bold="True" Font-Italic="True"></asp:Label></td>
</tr>


</table>
</center>
</asp:Content>


