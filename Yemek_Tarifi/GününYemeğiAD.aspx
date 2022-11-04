<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="GününYemeğiAD.aspx.cs" Inherits="GününYemeğiAD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style18 {
            font-size: x-large;
            text-align: center;
            width: 500px;
        }

        .auto-style17 {
            font-size: x-large;
        }
        .auto-style19 {
            text-align: center;
        }
    .auto-style20 {
        width: 383px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12" Style="background-color: #cdb7b5">
        <table class="auto-style15">
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style18"><strong>YEMEK LİSTESİ</strong></td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="35px" Text="+" Width="35px" />
                </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style17" Height="35px" Text="-" Width="35px" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="674px" Style="margin-top: 10px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style20"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style22" style="font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style19">
                            <a href="YemekDüzenleAD.aspx?Yemekid=<%#Eval("Yemekid") %>">
                                <asp:Image ID="Image2" runat="server" CssClass="auto-style19" Height="30px" ImageUrl="~/AdminPicture/update.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

