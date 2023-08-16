<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Botas.YemekDuzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            text-align: left;
            width: 32%;
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Button ID="Button11" runat="server" Text="Geri" OnClick="Button11_Click" />

    </div>
    <div>

        <asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("menuad") %>'></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="Düzenleme Sayfası"></asp:Label>
            </ItemTemplate>
        </asp:DataList>

    </div>
        <table class="w-100">
    <tr>
        <td class="auto-style2" style="width: 30px; height: 50px;">
            <asp:Button ID="Button1" runat="server" Height="30px" style="font-size: medium" Text="v" Width="30px" OnClick="Button1_Click" />
        </td>
        <td class="auto-style2" style="width: 30px; height: 50px;"><strong>
            <asp:Button ID="Button2" runat="server" Height="30px" style="font-size: medium; font-weight: bold" Text="^" Width="30px" OnClick="Button2_Click" />
            </strong></td>
        <td style="background-color:#999999; height: 50px;">YEMEK LİSTESİ</td>
    </tr>
</table>
    <asp:Panel ID="Panel1" runat="server">
    <div>
        <table class="w-100">
            <tr>
                <th class="auto-style3">Yemek Ad</th>
                <th style="width:30%">Yemek Fiyat</th>
                <th style="width:30%">Kategori</th>
                <th style="width:5%">Aktiflik</th>
                <th style="width:5%">Sil</th>
            </tr>
        </table>
    </div>
    <asp:DataList ID="DataList2" runat="server" Width="1379px">
        <ItemTemplate>
            <table class="w-100">

                <tr>
                    <td class="auto-style2"; style="width:57%">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("yemekad") %>'></asp:Label>
                    </td>
                    <td  style="width: 23%;";class="w-75">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("yemekfiyat") %>'></asp:Label>
                    </td>
                    <td class="auto-style4": style="width:10%">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("kategoriad") %>'></asp:Label>
                    </td>
                    <td class="auto-style1": style="width:5%">
                        <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Aç/Kapa" />
                        
                    </td>
                    <td class="auto-style1": style="width:5%">
                        <a href="YemekDuzenle.aspx?yemekid=<%# Eval("yemekid") %>&islem=sil"><asp:Image ID="Image2" runat="server" ImageUrl="~/Photos/çarpı.png" Width="30px" /></a>
                          
                        
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server" style="margin-bottom: 0px">
        <table class="w-100">
            <tr>
                <td class="auto-style2" style="width: 44px; height: 50px;">
                    <asp:Button ID="Button3" runat="server" Height="30px" style="font-size: medium" Text="v" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style2" style="width: 41px; height: 50px;"><strong>
                    <asp:Button ID="Button4" runat="server" Height="30px" style="font-size: medium; font-weight: bold" Text="^" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td style="background-color:#999999">YEMEK EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="w-100">
            <tr>
                <td style="height: 32px"></td>
                <td style="height: 32px"></td>
            </tr>
            <tr>
                <td>Yemek İsim</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="242px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yemek Fiyat</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="239px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Resim</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Kategori</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="225px">
                    </asp:DropDownList>
                </td>
            </tr>
            
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" style="font-size: medium" Text="Ekle" Width="116px" OnClick="Button5_Click" />
                    <asp:Label ID="WarningLabel" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        
    </asp:Panel>
    <table class="w-100">
    <tr>
        <td class="auto-style2" style="width: 44px; height: 50px;">
            <asp:Button ID="Button6" runat="server" Height="30px" style="font-size: medium" Text="v" Width="30px" OnClick="Button6_Click" />
        </td>
        <td class="auto-style2" style="width: 41px; height: 50px;"><strong>
            <asp:Button ID="Button7" runat="server" Height="30px" style="font-size: medium; font-weight: bold" Text="^" Width="30px" OnClick="Button7_Click" />
            </strong></td>
        <td style="background-color:#999999">KATEGORİ LİSTESİ</td>
    </tr>
</table>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="1104px">
                <ItemTemplate>
                    <table class="w-100">
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("kategoriad") %>'></asp:Label>
                            </td>
                            
                            <td class="auto-style5" style="text-align: right">
                                <a href="YemekDuzenle.aspx?kategoriid=<%# Eval("kategoriid") %>&islem=ksil"><asp:Image ID="Image2" runat="server" ImageUrl="~/Photos/çarpı.png" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="w-100">
            <tr>
                <td class="auto-style2" style="width: 44px; height: 50px;">
                    <asp:Button ID="Button8" runat="server" Height="30px" style="font-size: medium" Text="v" Width="30px" OnClick="Button8_Click" />
                </td>
                <td class="auto-style2" style="width: 41px; height: 50px;"><strong>
                    <asp:Button ID="Button9" runat="server" Height="30px" style="font-size: medium; font-weight: bold" Text="^" Width="30px" OnClick="Button9_Click" />
                    </strong></td>
                <td style="background-color:#999999">KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server">
        <table class="w-100">
            <tr>
                <td style="height: 32px"></td>
                <td style="height: 32px"></td>
            </tr>
            <tr>
                <td>Kategori İsim</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="242px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button10" runat="server" style="font-size: medium" Text="Ekle" Width="116px" OnClick="Button10_Click" />
                </td>
            </tr>
        </table>
        
    </asp:Panel>
    
    </form>
</body>
</html>
