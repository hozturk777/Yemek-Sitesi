﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="YorumDetayAD.aspx.cs" Inherits="YorumDetayAD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            height: 23px;
        }
        .auto-style18 {
            font-size: large;
            text-align: right;
        }
        .auto-style19 {
            height: 23px;
            font-size: large;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Ad Soyad : </strong></td>
            <td>
                <asp:TextBox ID="TxtAdSoyad" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>Mail Adresi : </strong></td>
            <td class="auto-style17">
                <asp:TextBox ID="TxtMail" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>İçerik : </strong></td>
            <td>
                <asp:TextBox ID="TxtIcerik" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yemek : </strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnOnayla" runat="server" Text="Onayla" Width="150px" OnClick="BtnOnayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

