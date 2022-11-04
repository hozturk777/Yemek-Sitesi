<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="YemeklerAD.aspx.cs" Inherits="YemeklerAD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style17 {
            font-size: x-large;
        }

        .auto-style18 {
            font-size: x-large;
            text-align: center;
            width: 500px;
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

        .auto-style23 {
            font-size: medium;
            font-weight: bold;
            margin-left: 100px;
        }

        .auto-style26 {
            font-size: large;
            text-align: right;
            height: 26px;
            width: 266px;
        }

        .auto-style27 {
            height: 26px;
        }
        .auto-style28 {
            font-size: large;
            text-align: right;
            width: 266px;
        }
        .auto-style29 {
            font-size: large;
            width: 266px;
        }
        .auto-style30 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style12" style="background-color: #cdb7b5">
        <table class="auto-style15">
        </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style18"><strong>YEMEK LİSTESİ</strong></td>
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
        <asp:DataList ID="DataList1" runat="server" Width="674px" style="margin-top: 10px">
            <itemtemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style20"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style21">
                            <a href="YemekDüzenleAD.aspx?Yemekid=<%#Eval("Yemekid") %>">
                                <asp:Image ID="Image2" runat="server" CssClass="auto-style19" Height="30px" ImageUrl="~/AdminPicture/update.png" Width="30px" />
                            </a>
                        </td>
                        <td class="auto-style21">
                            <a href="YemeklerAD.aspx?YemekId=<%#Eval("YemekId") %>&islem=sil">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/AdminPicture/delete.png" Width="35px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #cdb7b5">
        <table class="auto-style9">
            <tr>
                <td class="auto-style18"><strong>YEMEK EKLE</strong></td>
                <td><strong>
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style17" Height="35px" Text="+" Width="35px" OnClick="Button6_Click" />
                </strong></td>
                <td><strong>
                    <asp:Button ID="Button7" runat="server" CssClass="auto-style17" Height="35px" Text="-" Width="35px" OnClick="Button7_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" style="margin-top: 10px">
        <table class="auto-style9">
            <tr>
                <td class="auto-style28"><strong>Yemek&nbsp; Ad :</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26"><strong>Malzemeler : </strong></td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Yemek Tarifi : </strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Kategori : </strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style23" Text="Ekle" Width="100px" OnClick="Button5_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


