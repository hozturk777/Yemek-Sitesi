<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style9 {
            width: 100%;
        }

        .auto-style16 {
            height: 68px;
            text-align: center;
        }

        .auto-style10 {
            font-size: x-large;
            text-decoration: none;
            font-family: 'Segoe UI';
            font-style: normal;
        }

        .auto-style13 {
            height: 24px;
        }

        .auto-style17 {
            font-size: 20px;
            text-decoration: none;
            font-family: 'Segoe UI';
            font-style: normal;
            color: #cd5555;
        }

        .auto-style11 {
            font-size: medium;
        }

        .auto-style12 {
            /*font-size: medium;*/
            text-decoration: none;
            font-family: 'Segoe UI';
            font-style: normal;
            color: black;
            font-size: 15px;
        }

        .auto-style18 {
            width: 159px;
        }

        .auto-style21 {
            font-size: 15px;
        }

        .auto-style24 {
            font-size: 20px;
            text-decoration: none;
            font-family: 'Segoe UI';
            font-style: normal;
            color: #003300;
            text-align: center;
            width: 263px;
        }
    
        .auto-style19 {
            color: #000000;
            font-size: 15px;
        }

        .auto-style23 {
            font-size: 20px;
            text-decoration: none;
            font-family: 'Segoe UI';
            font-style: normal;
            color: #003300;
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style9">
            <tr>
                <td class="auto-style16"><strong><a href="YemekDetay.aspx?YemekId=<%# Eval("YemekId") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a>
                    <br />
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style13"><strong><span class="auto-style17">Malzemeler :</span><span class="auto-style11"> </span>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    <br />
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td><span class="auto-style17"><strong>Tarif : </strong></span><strong>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;<table class="auto-style9">
                    <tr>
                        <td class="auto-style18"><span class="auto-style17"><strong>Kategori :</strong></span>&nbsp;<strong><asp:Label ID="Label6" runat="server" CssClass="auto-style21" Text='<%# Eval("KategoriId") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style24"><span><strong class="auto-style17">Puan :</strong></span>&nbsp;<strong><asp:Label ID="Label9" runat="server" CssClass="auto-style19" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style23"><span class="auto-style17"><strong>Tarih :</strong></span>&nbsp;<strong><asp:Label ID="Label8" runat="server" CssClass="auto-style19" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <div style="background-color: #8b7d7b; height: 5px;">
                    </div>
                    </div>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

