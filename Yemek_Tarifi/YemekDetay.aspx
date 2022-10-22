<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-size: xx-large;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            font-size: small;
        }
        .auto-style14 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style14">
        <strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Label"></asp:Label>
        </strong>
    </div>
    <p class="auto-style14">
        &nbsp;</p>
    <p>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style11" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text='<%# Eval("Yorumİcerik") %>'></asp:Label>
                            </strong>&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;<strong><asp:Label ID="Label7" runat="server" CssClass="auto-style13" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>
                            <div style="background-color: #8b7d7b; height: 5px;">
                            </div>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>

