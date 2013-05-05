<%@ Page Language="VB" AutoEventWireup="false" CodeFile="receipt.aspx.vb" Inherits="receipt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TUFF - Your Receipt</title>
</head>
<body>
    <form id="form1" runat="server" visible="True">
    <div>
    
        Receipt of Payment<br />
        (Print for your records)<br />
        <br />
    
    </div>
<p>
    &nbsp;</p>
        <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
        <asp:TextBox ID="txtName" runat="server" BackColor="Transparent" 
            BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label>
        <asp:TextBox ID="txtAddress" runat="server" BackColor="Transparent" 
            BorderStyle="None" ReadOnly="True" Width="364px"></asp:TextBox>
        <br />
        <asp:Label ID="lblPhone" runat="server" Text="Phone: "></asp:Label>
        <asp:TextBox ID="txtPhone" runat="server" BackColor="Transparent" 
            BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" BackColor="Transparent" 
            BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="lblAmount" runat="server" Text="Amount: "></asp:Label>
        <asp:TextBox ID="txtAmount" runat="server" BackColor="Transparent" 
            BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="lblPaymentType" runat="server" Text="Payment Type: "></asp:Label>
        <asp:TextBox ID="txtPaymentType" runat="server" BackColor="Transparent" 
            BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="lblCCNum" runat="server" Text="Credit Card #" 
        Visible="False"></asp:Label>
        <asp:TextBox ID="txtCCNum" runat="server" BackColor="Transparent" 
            BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="lblExp" runat="server" Text="Exp Date: " Visible="False"></asp:Label>
        <asp:TextBox ID="txtExp" runat="server" BackColor="Transparent" 
            BorderStyle="None" ReadOnly="True" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblMailing" runat="server" Text="Mailing Instructions:  "></asp:Label>
        <br />
        <asp:TextBox ID="txtMailing" runat="server" BackColor="Transparent" 
            BorderStyle="None" Height="131px" ReadOnly="True" Rows="6" TextMode="MultiLine" 
            Width="328px" Visible="False" style="overflow:hidden">Please mail payment to: 
T.U.F.F. 
Attn: Laney Crowell 
1212 Toddler Tot Lane 
Waukesha, WI. 53186</asp:TextBox>
<p>
    &nbsp;</p>
    </form>
</body>
</html>
