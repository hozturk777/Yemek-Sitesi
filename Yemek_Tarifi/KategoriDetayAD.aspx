<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="KategoriDetayAD.aspx.cs" Inherits="KategoriDetayAD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            font-size: large;
            text-align: right;
        }
        .auto-style18 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style19 {
            font-size: large;
            text-align: right;
            height: 26px;
        }
        .auto-style20 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>KATEGORİ AD : </strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>ADET : </strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>RESİM : </strong></td>
            <td class="auto-style20">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Text="Güncelle" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

