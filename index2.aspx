<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="index2.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       <center><table style="width: 63%" border="0" cellpadding="1" cellspacing="0">
       <tr><td colspan="2"><h1>WELCOME THIS IS ADMIN HOME PAGE</h1></td></tr>
<tr>
    <td align="left" valign="top">
        <img id="imgtop" runat="server" src="~/img/iphone11.jpg" alt="one" height="180" style="width: 270px" />
    </td>
    <td align="right" style="text-align:justify; width:200px">
       
            <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="Small" Font-Bold="False" Font-Italic="False" Width="355px" Height="124px" >
            



                </asp:Label>
       
    </td>
</tr>
<tr>
    <td colspan="2" style="height:5">
        &nbsp;</td>
</tr>
<tr>
    <td style="height: 169px">
        <div style="text-align:justify">
            &nbsp;<img id="imgbottom" runat="server" src="~/img/samsunggalxyon7.jpeg" alt="one" width="270" height="180" /></div>
    </td>
        <td align="right" valign="top" style="text-align:justify; width:200px; height: 169px;">
            <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="Small" Font-Bold="False" Font-Italic="False" Width="355px">
         
                </asp:Label></td>
</tr>
    <tr>
        <td colspan="2">
            <p style="text-align: justify">
                <span style="font-family: Verdana"><span style="font-size: 9pt">
                Our web site is updated regularly with information, new products and gift ideas
                so do return to see our latest gifts by post. If you dont have time to look through
                now then why not click to

                <script language="JavaScript">
<!--                    Begin
                    function addbookmark() {
                        bookmarkurl = "http://www.gifts-cabin.co.uk"
                        bookmarktitle = "The Gifts Cabin"
                        if (document.all)
                            window.external.AddFavorite(bookmarkurl, bookmarktitle)
                    }
// End -->
                </script>

                </span></span>

                <a href="javascript:addbookmark()"><font color="#0000c0"><span style="font-size: 9pt;
                    font-family: Verdana">Add " Shoppee" to your
                    list of favourites </span></font></a>
            </p>
        </td>
    </tr>
</table>
</center>





</asp:Content>

