
Partial Class donate
    Inherits System.Web.UI.Page
    Private person As Person = New Person
    Private payment As Payment = New Payment
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        person.setName(txtName.Text.ToString)
        person.setAddress(txtAddress.Text.ToString)
        person.setPhone(txtPhone.Text.ToString)
        person.setEmail(txtEmail.Text.ToString)
        payment.setAmount(txtAmount.Text)
        payment.setPmtType(rdoPaymentType.SelectedValue)
        payment.setCCNum(txtCCNum.Text.ToString)
        payment.setCCExp(txtExpDate.Text.ToString)
        Session.Add("thePerson", person)
        Session.Add("thePayment", payment)
        Response.Redirect("receipt.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox5_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtAmount.TextChanged

    End Sub

    Protected Sub TextBox6_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtCCNum.TextChanged

    End Sub

    Protected Sub TextBox7_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtExpDate.TextChanged

    End Sub

    Protected Sub rdoPaymentType_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdoPaymentType.SelectedIndexChanged
        If rdoPaymentType.SelectedValue = 2 Then
            lblCCNum.Visible = True
            txtCCNum.Visible = True
            rfvCCNum.Visible = True
            revCCNum.Visible = True
            lblCCExp.Visible = True
            txtExpDate.Visible = True
            rfvExpDate.Visible = True
            revExpDate.Visible = True
            lblMailingInst.Visible = False
            txtMailing.Visible = False
            lblDateFormat.Visible = True
        Else
            lblCCNum.Visible = False
            txtCCNum.Visible = False
            rfvCCNum.Visible = False
            revCCNum.Visible = False
            lblCCExp.Visible = False
            txtExpDate.Visible = False
            rfvExpDate.Visible = False
            revExpDate.Visible = False
            lblMailingInst.Visible = True
            txtMailing.Visible = True
            lblDateFormat.Visible = False
        End If
    End Sub
End Class
