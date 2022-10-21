<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style9 {
        font-size: x-large;
    }
    .auto-style10 {
        font-size: large;
    }
    .auto-style11 {
        font-size: large;
        text-align: left;
    }
        .auto-style12 {
            font-size: medium;
        }
        .auto-style13 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style12">
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                    </strong>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <span class="auto-style9"><strong>Malzemeler : </strong></span><strong>
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style12" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                    </strong>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <strong><span class="auto-style9">Tarif : </span>
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style12" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Image ID="Image2" runat="server" Height="220px" Width="360px" ImageUrl="~/Yemekler/pilav.jpg" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <table class="auto-style1">
                        <tr>
                            <td><strong>Puan :</strong> <strong>
                                <asp:Label ID="Label11" runat="server" CssClass="auto-style12" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                </strong></td>
                            <td class="auto-style13"><strong>Tarih :</strong> <strong>
                                <asp:Label ID="Label12" runat="server" CssClass="auto-style12" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                                </strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

