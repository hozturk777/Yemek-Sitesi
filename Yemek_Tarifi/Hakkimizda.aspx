<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-size: 15px;
            text-decoration: none;
            font-family: 'Segoe UI';
            font-style: normal;
            /*font-size: medium;*/
        }
        .auto-style10 {
            text-align: center;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <div class="auto-style9"><br />
    </strong>
        <div class="auto-style10">
            <strong>
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style9" Width="677px" Height="200px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Hakkimizda") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
            </strong>
        </div>
    </div>
    <br />
    <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Yemekler/blogimagetools.jpg" Width="677px" />
</asp:Content>

