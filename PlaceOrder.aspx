<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<table>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="ORDER ID"></asp:Label></td>
    <td>
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
</tr>
<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="ORDER DATE"></asp:Label></td>
    <td>
    <asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
</tr>
</table>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        AutoGenerateColumns="False" ShowFooter="True">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" 
            Height="40px" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
        
        <Columns>
          <asp:BoundField DataField="sno" HeaderText="S.NO" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="id" HeaderText="PRODUCT ID" >
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
             
            <asp:BoundField DataField="name" HeaderText="PRODUCT NAME" />
             <asp:ImageField DataImageUrlField="img" HeaderText="PRODUCT IMAGE">
                <ControlStyle Height="100px" Width="100px" />
                <HeaderStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="price" HeaderText="PRICE" />
             <asp:BoundField DataField="quantity" HeaderText="QUANTITY" />
            <asp:BoundField DataField="totalprice" HeaderText="TOTAL PRICE" />

           
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" 
            Height="50px" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
<table>
 <tr><td>TYPE YOUR ADDRESS</td>
 <td>
   
     <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="45px" 
         Width="183px"></asp:TextBox></td></tr>
          <tr><td>MOBILE NUMBER</td>
 <td>
   
     <asp:TextBox ID="TextBox2" runat="server"  Height="31px" 
         Width="183px"></asp:TextBox></td></tr>
         <tr><td>
             <asp:Label ID="Label5" runat="server" Text="PAYMENT MODE"></asp:Label></td>
             <td>
                 <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
                     <asp:ListItem>creadit card</asp:ListItem>
                     <asp:ListItem>debit card</asp:ListItem>
                 </asp:DropDownList>
             </td>
             </tr>
             <tr><td>
                 <asp:Label ID="Label6" runat="server" Text="CARD NUMBER"></asp:Label></td>
                 <td>
                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td></tr>
                                  <tr><td>
                 <asp:Label ID="Label7" runat="server" Text="CVV "></asp:Label></td>
                 <td>
                     <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox></td></tr>
<tr align="center"><td colspan="2">
    <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="PLACED ORDER " 
        onclick="Button1_Click" />
    <br />
    </td></tr>
</table>


</asp:Content>

