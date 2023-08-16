<%@ Page Title="" Language="C#" MasterPageFile="~/MenuDuzenle.Master" AutoEventWireup="true" CodeBehind="AyriDuzenleyici.aspx.cs" Inherits="Botas.AyriDuzenleyici" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                <th style="width:50%">Yemek Ad</th>
                <th style="width:20%">Yemek Fiyat</th>
                <th style="width:20%">Kategori</th>
                <th style="width:5%">Aktiflik</th>
                <th style="width:5%">Sil</th>
            </tr>
        </table>
    </div>
    <asp:DataList ID="DataList2" runat="server" Width="1104px">
        <ItemTemplate>
            <table class="w-100">

                <tr>
                    <td class="w-50"; style="width:20%">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("yemekad") %>'></asp:Label>
                    </td>
                    <td  style="width: 20%;";class="w-75">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("yemekfiyat") %>'></asp:Label>
                    </td>
                    <td class="auto-style4": style="text-align:center;width:20%">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("kategoriid") %>'></asp:Label>
                    </td>
                    <td class="auto-style5": style="text-align:center";width:20%">
                        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"   />
                    </td>
                    <td class="auto-style5">
                        <a href="AyriDuzenleyici.aspx?yemekid=<%# Eval("yemekid") %>&islem=sil">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Photos/çarpı.png" Width="30px" />
                        </a>
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
                                <a href="AyriDuzenleyici.aspx?kategoriid=<%# Eval("kategoriid") %>&islem=ksil"><asp:Image ID="Image2" runat="server" ImageUrl="~/Photos/çarpı.png" Width="30px" /></a>
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
    
    
    
</asp:Content>


