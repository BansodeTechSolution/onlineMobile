<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 127px;
        }
        .style2
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
<table width="40%">
<tr><td colspan="2"><br /><br /><br /></td></tr>
<tr align="center" >
<td colspan="2"><asp:Label ID="Label1" runat="server" Text="PRODUCT DETAILS" ForeColor="Red"
        Font-Bold="True" Font-Italic="True" Font-Size="Larger"></asp:Label></td>
</tr>
<tr align="center" >
<td align="right"><asp:Label ID="Label2" runat="server" CssClass="lbl" Text="ID" ></asp:Label></td>
<td> <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Width="220px" ></asp:TextBox></td>
</tr>
<tr align="center" >
<td align="right"><asp:Label ID="Label11" runat="server" CssClass="lbl" Text="CATEGORY "></asp:Label></td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="220px" 
        CssClass="txt" DataSourceID="SqlDataSource1" DataTextField="cname" 
        DataValueField="cname" 
        >
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:con %>" 
        SelectCommand="SELECT [cname] FROM [category]"></asp:SqlDataSource>
    </td>
    <td rowspan="3">
        <asp:Image ID="Image1" runat="server" height="100" Width="100"/></td>
</tr>

<tr align="center" >
<td class="style2" align="right"><asp:Label ID="Label3" runat="server" Text="NAMES" CssClass="lbl"></asp:Label></td>
<td class="style2"> <asp:TextBox ID="TextBox2" runat="server" Width="220px" CssClass="txt"></asp:TextBox></td>
</tr>


<tr align="center" >
<td align="right"><asp:Label ID="Label4" runat="server" Text="PRICE " CssClass="lbl"></asp:Label></td>
<td> <asp:TextBox ID="TextBox3" runat="server" Width="220px" CssClass="txt"></asp:TextBox></td>

</tr>
<tr align="center" >
<td align="right"><asp:Label ID="Label5" runat="server" Text="IMG" CssClass="lbl"></asp:Label></td>
<td><asp:FileUpload ID="FileUpload1" runat="server" Width="220px" CssClass="txt" /></td>
</tr>
<tr align="center" >
<td colspan="2"><asp:Button ID="submit" runat="server" Text="ADD PRODUCT" 
        CssClass="btnsubmit" onclick="submit_Click" />
        <asp:Button ID="Button1" runat="server" Text="UPDATE PRODUCT" 
        CssClass="btnsubmit" onclick="Button1_Click"  />
        <asp:Button ID="Button2" runat="server" Text="DELETE PRODUCT" 
        CssClass="btnsubmit" onclick="Button2_Click"  /></td>
</tr>

<tr align="center" >
<td colspan="2"><asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red" CssClass="btnreg"></asp:Label></td>
</tr>
</table>
<table width="100%"><tr align="center"><td align="center" class="style1">
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
        GridLines="None" Height="271px" Width="505px" AllowPaging="True" 
        AutoGenerateSelectButton="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
            <asp:BoundField DataField="cname" HeaderText="CATEGORY" 
                SortExpression="cname" />
            <asp:BoundField DataField="price" HeaderText="PRICE" SortExpression="price" />
            <asp:BoundField DataField="img" HeaderText="IMAGE" />
            <asp:ImageField DataImageUrlField="img" HeaderText="IMAGE">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
            
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:con %>" 
        SelectCommand="SELECT * FROM [productdetails]"></asp:SqlDataSource>
    <br />

  
</td></tr></table>
</center>


</asp:Content>

