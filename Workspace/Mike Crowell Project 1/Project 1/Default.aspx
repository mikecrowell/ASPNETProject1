<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" title="TUFF Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 600px; border-collapse:collapse;"><tr><td style="width: 50%;">
     <center><h2 style="color: red">Get T.U.F.F.!!</h2>
    <b style="color: red; width: 313px;">Fight for your toddler rights!</b>
</center>  
   </td><td style="width: 50%;"></td></tr></table>

    
    <br />
    <table>
    <tr>
    <td>
    <center>
    <p style="width: 293px; height: 170px; margin-bottom: 114px">T.U.F.F. is a non profit organization 
        run by toddlers for toddlers, dedicated to helping toddlers worldwide gain their freedom from parental oppression.
        <br />
        <br />
    &nbsp;<asp:Button ID="Button1" runat="server" PostBackUrl="~/donate.aspx" 
            Text="Help by donating to the cause today" Width="248px" BackColor="Red" 
            ForeColor="Yellow" />
        <br />
        </p>
        </center>
    </td>
    <td>
    <div class="tip">
        <table>
        <tr>
        <td colspan="2">
         <center><b>Elaine's TUFF tip of the day</b></center>
        </td>
        </tr>
        <tr>
        <td>
        <i>A tantrum a day will always get your way.</i>
        </td>
        <td>
     <asp:Image ID="ImageTip" runat="server" Height="237px" ImageAlign="Middle" 
        ImageUrl="App_Themes/Standard/images/elainetip.gif" Width="200px" />       
        </td>
        </tr>
        </table>
    </div> 
    </td>
    </tr>
    </table>
        <center>
    <asp:Image ID="imgFamily" runat="server" Height="299px" ImageAlign="Middle" 
        ImageUrl="App_Themes/Standard/images/elaine1.jpg" Width="269px" />
        <br />
    <b>Elaine Allison Crowell<br />
    Fighting for toddler rights since 2009
        <br />
        </b>
        <br />
        <br />
    <br />
    
    </center>
 
     
</asp:Content>

