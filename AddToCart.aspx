<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddToCart.aspx.cs" Inherits="AddToCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center>

 WELCOME   <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
<br />
    YOU HAVE&nbsp;
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    NUMBER OF PROCDUCT IN CART.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:HyperLink ID="HyperLink1" runat="server" Text="Continues Shopping" NavigateUrl="~/product.aspx">continue shooping</asp:HyperLink>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" Height="208px" 
         Width="521px" ForeColor="#FFFFCC" 
    onrowdeleting="GridView1_RowDeleting" ShowFooter="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" HorizontalAlign="Center" 
        >
        <Columns>
          <asp:BoundField DataField="sno" HeaderText="S.NO" >
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="id" HeaderText="PRODUCT ID" >
             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
             <asp:ImageField DataImageUrlField="img" HeaderText="PRODUCT IMAGE">
                <ControlStyle Height="100px" Width="100px" />
                <HeaderStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="name" HeaderText="PRODUCT NAME" />
            <asp:BoundField DataField="price" HeaderText="PRICE" />
             <asp:BoundField DataField="quantity" HeaderText="QUANTITY" />
            <asp:BoundField DataField="totalprice" HeaderText="TOTAL PRICE" />
           
            <asp:CommandField SelectText="MODIFY" ShowSelectButton="True" />
           
            <asp:CommandField DeleteText="REMOVE" 
                ShowDeleteButton="True" />
           
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
    <br />
   
    <asp:Button ID="Button1" runat="server" Height="43px" Text="CHECKOUT" 
        Width="133px" onclick="Button1_Click"  />
    <br />
    <asp:Label ID="lblerror" runat="server" Text=""></asp:Label></center>
</asp:Content>

