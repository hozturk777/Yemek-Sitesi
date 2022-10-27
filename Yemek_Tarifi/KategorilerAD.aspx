<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="KategorilerAD.aspx.cs" Inherits="KategorilerAD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style17 {
            font-size: x-large;
        }
        .auto-style18 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style19 {
            margin-left: 0px;
        }
        .auto-style20 {
            width: 231px;
        }
        .auto-style21 {
            text-align: right;
        }
        .auto-style22 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12" style="background-color: #cdb7b5">
    <table class="auto-style15">
    </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style18"><strong>KATEGORİ LİSTESİ</strong></td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="35px" OnClick="Button1_Click" Text="+" Width="35px" />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style17" Height="35px" OnClick="Button2_Click" Text="-" Width="35px" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
<asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="674px">
        <ItemTemplate>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style20"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style21">
                        <asp:Image ID="Image2" runat="server" CssClass="auto-style19" Height="30px" ImageUrl="~/AdminPicture/update.png" Width="30px" />
                    </td>
                    <td class="auto-style21">
                        <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/AdminPicture/delete.png" Width="35px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>

