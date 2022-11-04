<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="YemekDüzenleAD.aspx.cs" Inherits="YemekDüzenleAD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style28 {
            font-size: large;
            text-align: right;
            width: 266px;
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
        .auto-style29 {
            font-size: large;
            width: 266px;
        }
        .auto-style30 {
            text-align: left;
        }
    
        .auto-style23 {
            font-size: medium;
            font-weight: bold;
            margin-left: 100px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9" __designer:mapid="197">
        <tr __designer:mapid="198">
            <td class="auto-style28" __designer:mapid="199"><strong __designer:mapid="19a">Yemek&nbsp; Ad :</strong></td>
            <td __designer:mapid="19b">
                <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="19d">
            <td class="auto-style26" __designer:mapid="19e"><strong __designer:mapid="19f">Malzemeler : </strong></td>
            <td class="auto-style27" __designer:mapid="1a0">
                <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="1a2">
            <td class="auto-style28" __designer:mapid="1a3"><strong __designer:mapid="1a4">Yemek Tarifi : </strong></td>
            <td __designer:mapid="1a5">
                <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="1a7">
            <td class="auto-style28" __designer:mapid="1a8"><strong __designer:mapid="1a9">Kategori : </strong></td>
            <td __designer:mapid="1aa">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr __designer:mapid="1ac">
            <td class="auto-style29" __designer:mapid="1ad">&nbsp;</td>
            <td class="auto-style30" __designer:mapid="1ae"><strong __designer:mapid="1af">
                <asp:Button ID="Button5" runat="server" CssClass="auto-style23" Text="Güncelle" Width="100px" OnClick="Button5_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

