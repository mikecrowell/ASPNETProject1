<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" Theme="Standard" CodeFile="gettuff.aspx.vb" Inherits="gettuff" title="Get TUFF" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-weight: bold;
        }
        .style2
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style1">
        The Get TUFF approach.</p>
    <p class="style2">
        Take control and learn how to run your household.</p>
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="Red" Text="T"></asp:Label>
        <b>antrums.</b>&nbsp; Frequent tantrums are the key to success.</p>
    <p>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="Red" Text="U"></asp:Label>
        <b>se your voice.</b>&nbsp; Speak up.&nbsp; Say no.&nbsp; Scream when necessary.</p>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="Red" Text="F"></asp:Label>
        <b>ood as leverage.</b>&nbsp; Dinner time is a great time to make your demands.</p>
    <p>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="Red" Text="F"></asp:Label>
        <b>ood as weapon.</b>&nbsp; Throwing food will make a statement and show you&#39;re 
        serious.</p>
</asp:Content>

