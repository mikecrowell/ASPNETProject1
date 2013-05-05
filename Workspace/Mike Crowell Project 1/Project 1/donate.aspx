<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" Theme="Standard" CodeFile="donate.aspx.vb" Inherits="donate" title="TUFF Donate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 164px;
        }
        .style2
        {
            width: 506px;
        }
        .style3
        {
            width: 611px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center><h2>Help the cause. Donate today.</h2></center>
    <table style="width:100%;">
        <tr>
            <td align=right class="style1">
    <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                <br />
            <br />
            </td>
            <td align=left class="style2">
    <asp:TextBox ID="txtName" runat="server" Width="214px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvName" runat="server" 
        ErrorMessage="Required Field" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                <br />
            <br />
            </td>
        </tr>
        <tr>
        <td align=right class="style1">
    <asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label>
            <br />
        <br />
        </td>
        <td align=left class="style2">
    <asp:TextBox ID="txtAddress" runat="server" Width="365px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
        ErrorMessage="Required Field" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
            <br />
        <br />
        </td>
        </tr>
        <tr>
        <td align=right class="style1">
    <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
            <br />
        <br />
        </td>
        <td align=left class="style2">
                <asp:TextBox ID="txtPhone" runat="server" Width="153px"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revPhone" runat="server" 
        ErrorMessage="Invalid Format" ControlToValidate="txtPhone" 
        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" Display="Dynamic"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
        ControlToValidate="txtPhone" ErrorMessage="Required Field" 
        Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:Label ID="lblPhoneFormat" runat="server" Text=" (999-999-9999)"></asp:Label>
                <br />
        <br />
        </td>
        </tr>
         <tr>
        <td align=right class="style1">
    <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
            <br />
        <br />
        </td>
        <td align=left class="style2">
    <asp:TextBox ID="txtEmail" runat="server" Width="214px"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revEmail" runat="server" 
        ErrorMessage="Invalid Format" ControlToValidate="txtEmail" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                Display="Dynamic"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
        ControlToValidate="txtEmail" ErrorMessage="Required Field" 
        Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
        <br />
        </td>
        </tr>
         <tr>
        <td align=right class="style1">
    <asp:Label ID="lblPaymentAmount" runat="server" Text="Amount: "></asp:Label>
            <br />
        <br />
        </td>
        <td align=left class="style2">
    <asp:TextBox ID="txtAmount" runat="server" Width="94px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revAmount" runat="server" 
                ControlToValidate="txtAmount" Display="Dynamic" ErrorMessage="Invalid Format" 
                ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="rfvAmount" runat="server" 
        ErrorMessage="Required Field" ControlToValidate="txtAmount" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
        <br />
        </td>
        </tr>
        <tr>
        <td align=right class="style1">
    <asp:Label ID="lblPaymentType" runat="server" Text="Payment type:"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        <br />
        </td>
        <td align=left class="style2">
    <asp:RadioButtonList ID="rdoPaymentType" runat="server" AutoPostBack="True">
        <asp:ListItem Value="0">Cash</asp:ListItem>
        <asp:ListItem Value="1">Check</asp:ListItem>
        <asp:ListItem Value="2">Credit Card</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="rfvType" runat="server" 
        ControlToValidate="rdoPaymentType" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
            <br />
        <br />
        </td>
        </tr>
         <tr>
        <td align=right class="style1">
    <asp:Label ID="lblCCNum" runat="server" Text="Credit Card #: " Visible="False"></asp:Label>
            <br />
        <br />
        </td>
        <td align=left class="style2">
    <asp:TextBox ID="txtCCNum" runat="server" Visible="False" Width="154px"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revCCNum" runat="server" Display="Dynamic" 
                ErrorMessage="Invalid Format" ValidationExpression="[0-9]{14,16}" 
        Visible="False" ControlToValidate="txtCCNum"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="rfvCCNum" runat="server" 
        ErrorMessage="Required Field" ControlToValidate="txtCCNum" 
        Visible="False" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
        <br />
        </td>
        </tr>
         <tr>
        <td align=right class="style1">
    <asp:Label ID="lblCCExp" runat="server" Text="Expiration Date: " 
        Visible="False"></asp:Label>
        <br />
        </td>
        <td align=left class="style2">
    <asp:TextBox ID="txtExpDate" runat="server" Visible="False" Width="91px"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revExpDate" runat="server" 
        Display="Dynamic" ErrorMessage="Invalid Format" 
        ValidationExpression="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d" 
        Visible="False" ControlToValidate="txtExpDate"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="rfvExpDate" runat="server" 
        ErrorMessage="Required Field" ControlToValidate="txtExpDate" 
        Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:Label ID="lblDateFormat" runat="server" Text=" (mm/dd/yyyy)" 
                Visible="False"></asp:Label>
        <br />
        </td>
        </tr>                                                   
    </table>
    <br />
    <center><asp:Label ID="lblMailingInst" runat="server" Text="Mailing Instructions" 
        Visible="False"></asp:Label>
    <br /><br />
    <asp:TextBox ID="txtMailing" runat="server" BackColor="Transparent" 
        BorderStyle="None" BorderWidth="0px" Height="72px" ReadOnly="True" 
        TextMode="MultiLine" Visible="False" Width="365px" Rows="3">1212 Toddler Tot Lane
Attention: Laney Crowell
Waukesha, WI. 53186</asp:TextBox></center>
    <br />
    <br />
        <center>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit Your Donation" 
            BackColor="Red" ForeColor="Yellow" />
    </center>
            <br />
            <br />
            <br />
            <br />
</asp:Content>


