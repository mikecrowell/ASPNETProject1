Partial Class receipt
    Inherits System.Web.UI.Page
    Private person As Person
    Private payment As Payment
    Protected Sub form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles form1.Load
        person = Session("thePerson")
        payment = Session("thePayment")
        txtName.Text = person.getName
        txtAddress.Text = person.getAddress
        txtPhone.Text = person.getPhone
        txtEmail.Text = person.getEmail
        txtAmount.Text = FormatCurrency(payment.getAmount, 2)
        If payment.getPmtType = 2 Then
            txtCCNum.Text = payment.getCCNum
            txtCCNum.Visible = True
            lblCCNum.Visible = True
            txtExp.Text = payment.getCCExp
            txtExp.Visible = True
            lblExp.Visible = True
            txtPaymentType.Text = "Credit Card"
            lblMailing.Visible = False
            txtMailing.Visible = False
        ElseIf payment.getPmtType = 0 Then
            lblMailing.Visible = True
            txtMailing.Visible = True
            txtPaymentType.Text = "Cash"
        Else
            lblMailing.Visible = True
            txtMailing.Visible = True
            txtPaymentType.Text = "Check"
        End If


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

End Class
