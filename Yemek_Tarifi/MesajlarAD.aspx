<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="MesajlarAD.aspx.cs" Inherits="MesajlarAD" %>

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
    .auto-style19 {
        width: 408px;
    }
    .auto-style20 {
        width: 343px;
    }
    .auto-style21 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12" Style="background-color: #cdb7b5">
        <table class="auto-style15">
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style18"><strong>MESAJLAR</strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Text='<%# Eval("MesajGonderen") %>' style="font-size: large"></asp:Label>
                        </strong></td>
                        <td class="auto-style21">
                            
                                <asp:Image ID="Image2" runat="server" CssClass="auto-style19" Height="32px" ImageUrl="~/AdminPicture/readicon.png" Width="32px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

