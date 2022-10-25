 <%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            font-size: large;
            text-align: right;
            width: 250px;
        }
        .auto-style12 {
            width: 250px;
            height: 23px;
        }
        .auto-style13 {
            height: 23px;
        }
        .auto-style14 {
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Ad Soyad :</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Mail Adresiniz :</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Konu :</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Mesaj :</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="Txtİcerik" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Text="Gönder" Width="307px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

