<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="placeorderbill.aspx.cs" Inherits="placeorderbill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 295px;
        }
        .style2
        {
            height: 57px;
        }
        .style3
        {
            width: 100%;
            height: 42px;
        }
        .style4
        {
            height: 64px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<table width="100%" border="1">
<tr align="center" >
<td>
    <asp:Label ID="Label1" runat="server" Text="ORDER ID"></asp:Label></td>
    <td>
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
    <td>
    <asp:Label ID="errorlbl" runat="server" Text=""></asp:Label>

    <asp:Button ID="Button1" runat="server" Text="DOWNLOAD INVOICE" Height="28px" 
        onclick="Button1_Click" Width="218px" />
        </td>
</tr></table> 

    <asp:Panel ID="Panel1" runat="server">
        <table class="style1" border="1">
            <tr align="center">
                <td style="text-align: center">
                    &nbsp;RETAIL INVOICE&nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                    ORDER NO:-&nbsp;
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    <br />
                    ORDER DATE :-
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr align="center">
                <td>
                    <table class="style3" border="1">
                        <tr align="center">
                            <td class="style4">
                                BUYER ADDRESS<br />
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                            <td class="style4">
                                SELLER ADDRESS<br />
                                XYZ COMPANY PVT<br /> VASHI<br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr align="center">
                <td align="center">
                    &nbsp;<asp:GridView ID="GridView1" runat="server" Height="101px" 
                        style="text-align: center" Width="463px" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="sno" HeaderText="S.NO" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="productid" HeaderText="PRODUCTID" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="productname" HeaderText="PRODCUT NAME" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="quantity" HeaderText="QUANTITY" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="price" HeaderText="PRICE" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="totalprice" HeaderText="TOTAL PRICE">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    &nbsp;</td>
            </tr>
            <tr align="center">
                <td>
                    GRAND TOTAL :-
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
            <tr align="center">
                <td>
                    &nbsp;<br /> DECLARATION: - We declare that this shows Actual price of the goods 
                    decribed inclusive of taxes and that all particulars are true and correct.<br /> 
                    In case you find selling price on this invoicce to be more than MRP metioned on 
                    product, please inform MRP@.com<br />
                    <br />
                    THIS IS A COMPUTER GENERATED INVOICE AND DOES NOT REQUIRED SIGNATURE.</td>
            </tr>
            
        </table>
    </asp:Panel>

</asp:Content>

