Imports System.Threading

Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Overrides Sub InitializeCulture()

        Dim lang As String = Request("Language1")

        If lang IsNot Nothing Or lang <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang)

        End If

        Dim lang2 As String = Request("Language2")

        If lang2 IsNot Nothing Or lang2 <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang2)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang2)

        End If

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        language2.Visible = False
        lbl_hello.Visible = False
        lbl_mr.Visible = False
        lbl_ms.Visible = False
        lbl_name.Visible = False
        lbl_hope.Visible = False
        lbl_graddate.Visible = False
        lbl_wish.Visible = False
        lbl_wish2.Visible = False
        lbl_salary2.Visible = False
        lbl_wish3.Visible = False
        lbl_visit.Visible = False
        link_github.Visible = False


    End Sub

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click

        language2.Visible = True
        lbl_hello.Visible = True
        lbl_mr.Visible = True
        lbl_ms.Visible = True
        lbl_name.Visible = True
        lbl_hope.Visible = True
        lbl_graddate.Visible = True
        lbl_wish.Visible = True
        lbl_wish2.Visible = True
        lbl_salary2.Visible = True
        lbl_wish3.Visible = True
        lbl_visit.Visible = True
        link_github.Visible = True

        If rb_male.Checked Then
            lbl_ms.Text = " "
            rb_female.Checked = False

        ElseIf rb_female.Checked Then
            lbl_mr.Text = ""
            rb_male.Checked = False

        End If

        lbl_name.Text = tb_name.Text
        lbl_graddate.Text = GradDate.SelectedDate.ToShortDateString()

        Dim salary As Decimal = tb_salary.Text

        lbl_salary2.Text = String.Format("{0:c}", salary)


        language1.Visible = False
        lbl_myName.Visible = False
        tb_name.Visible = False
        lbl_gender.Visible = False
        rb_male.Visible = False
        rb_female.Visible = False
        lbl_grad.Visible = False
        GradDate.Visible = False
        lbl_salary.Visible = False
        tb_salary.Visible = False
        btn_submit.Visible = False


    End Sub


    Protected Sub language2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles language2.SelectedIndexChanged

        language2.Visible = True
        lbl_hello.Visible = True
        lbl_mr.Visible = True
        lbl_ms.Visible = True
        lbl_name.Visible = True
        lbl_hope.Visible = True
        lbl_graddate.Visible = True
        lbl_wish.Visible = True
        lbl_wish2.Visible = True
        lbl_salary2.Visible = True
        lbl_wish3.Visible = True
        lbl_visit.Visible = True
        link_github.Visible = True

        If rb_male.Checked Then
            lbl_ms.Text = " "
            rb_female.Checked = False

        ElseIf rb_female.Checked Then
            lbl_mr.Text = " "
            rb_male.Checked = False

        End If


        lbl_name.Text = tb_name.Text
        lbl_graddate.Text = GradDate.SelectedDate.ToShortDateString()

        Dim salary As Decimal = tb_salary.Text

        lbl_salary2.Text = String.Format("{0:c}", salary)


        language1.Visible = False
        lbl_myName.Visible = False
        tb_name.Visible = False
        lbl_gender.Visible = False
        rb_male.Visible = False
        rb_female.Visible = False
        lbl_grad.Visible = False
        GradDate.Visible = False
        lbl_salary.Visible = False
        tb_salary.Visible = False
        btn_submit.Visible = False

    End Sub

End Class
