<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="YorumlarAD.aspx.cs" Inherits="YorumlarAD" %>

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

        .auto-style20 {
            width: 231px;
        }

        .auto-style22 {
            font-size: large;
        }

        .auto-style21 {
            text-align: right;
        }

        .auto-style19 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12" Style="background-color: #cdb7b5">
        <table class="auto-style15">
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style18"><strong>ONAYLI YORUM LİSTESİ</strong></td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="35px" Text="+" Width="35px" OnClick="Button1_Click" />
                </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style17" Height="35px" Text="-" Width="35px" OnClick="Button2_Click" />
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style21">
                            <a href="YorumDetayAD.aspx?Yorumid=<%#Eval("Yorumid") %>">
                                <asp:Image ID="Image2" runat="server" CssClass="auto-style19" Height="30px" ImageUrl="~/AdminPicture/update.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style21">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/AdminPicture/delete.png" Width="35px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style12" Style="background-color: #cdb7b5">
        <table class="auto-style15">
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style18"><strong>ONAYSIZ YORUM LİSTESİ</strong></td>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Height="35px" Text="+" Width="35px" OnClick="Button3_Click" />
                </strong></td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style17" Height="35px" Text="-" Width="35px" OnClick="Button4_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="674px" Style="margin-top: 10px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style20"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style21">
                            <a href="YorumDetayAD.aspx?Yorumid=<%#Eval("Yorumid") %>"><asp:Image ID="Image2" runat="server" CssClass="auto-style19" Height="30px" ImageUrl="~/AdminPicture/update.png" Width="30px" /></a> 
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

