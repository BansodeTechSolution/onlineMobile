<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    &nbsp;
    
  <center>
      <b>YOUR HAVE PRODUCT IN YOUR CART 
          <asp:Label ID="lblcount" runat="server" Text=""></asp:Label></b>
      <br />
      <asp:Label ID="lblerror" runat="server" Text="" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:Label>
      <table>
          <tr>
              <td>
                  <ul>
                      <asp:DataList ID="dd" runat="server" DataSourceID="SqlDataSource1">
                          <ItemTemplate>
                              <li><a href="product.aspx?category=<%#Eval("cname") %>"><%#Eval("cname")%></a></li>
                          </ItemTemplate>
                      </asp:DataList>
                  </ul>
              </td>
              <td>
                  <asp:DataList ID="DataList1" runat="server"
                      BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                      CellSpacing="2" GridLines="Both"
                      RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand"
                      HorizontalAlign="Center">
                      <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                      <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                      <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                      <ItemTemplate>
                          <table class="style1">
                              <tr>
                                  <td style="text-align: center">NAME :-
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td style="text-align: center">
                                      <asp:Image ID="Image1" runat="server" Height="214px"
                                          ImageUrl='<%# Eval("img") %>' Width="207px" />
                                  </td>
                              </tr>

                              <tr>
                                  <td style="text-align: center">RS...
                        <asp:Label ID="Label2" runat="server" Style="text-align: center"
                            Text='<%# Eval("price") %>'></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td style="text-align: center">
                                      <asp:Label ID="Label3" runat="server" Style="text-align: center"
                                          Text="QUNATITY"></asp:Label>
                                      &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                                          <asp:ListItem Value="1"></asp:ListItem>
                                          <asp:ListItem Value="2"></asp:ListItem>
                                          <asp:ListItem Value="3"></asp:ListItem>
                                          <asp:ListItem Value="4"></asp:ListItem>
                                          <asp:ListItem Value="5"></asp:ListItem>
                                      </asp:DropDownList>
                                  </td>
                              </tr>
                              <tr>
                                  <td style="text-align: center">

                                      <asp:Button ID="Button1" runat="server" CommandName="addtocart"
                                          Text="ADD TO CART" CommandArgument='<%# Eval("id") %>' />

                                  </td>
                              </tr>

                          </table>
                          <br />
                          <br />
                      </ItemTemplate>
                      <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                  </asp:DataList></td>
          </tr>
      </table>



      <asp:SqlDataSource ID="SqlDataSource1" runat="server"
          ConnectionString="<%$ ConnectionStrings:con %>"
          SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
  </center>
</asp:Content>


