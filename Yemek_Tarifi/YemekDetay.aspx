<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-size: xx-large;
        text-decoration: underline;
    }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            font-size: x-large;
        text-decoration: underline;
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
    .auto-style18 {
        text-align: right;
        width: 274px;
    }
    .auto-style19 {
        margin-left: 40px;
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
    <p>
        &nbsp;</p>
    <asp:Panel ID="Panel1" runat="server">
        <div style="background-color: #cd919e;">
            <strong>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style12" Text="YORUM YAPMA PANELİ"></asp:Label>
            </strong>
        </div>
        <asp:Panel ID="Panel2" runat="server">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style18"><strong>
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style12" Text="Ad Soyad : "></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18"><strong>
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style12" Text="Mail : "></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18"><strong>
                        <asp:Label ID="Label11" runat="server" CssClass="auto-style12" Text="Yorumunuz : "></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="80px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style19">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" Width="199px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

