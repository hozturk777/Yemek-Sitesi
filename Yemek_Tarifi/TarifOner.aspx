<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 443px;
            margin-left: 40px;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style12 {
            width: 443px;
        }
        .auto-style13 {
            text-align: right;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Tarif Adı : </strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtTarifAdi" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Malzemeler : </strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Yapılış : </strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Resim : </strong></td>
            <td class="auto-style12">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Tarif Öneren :</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Mail Adresi :</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong><em>
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#003300" CssClass="auto-style11" Height="40px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>

