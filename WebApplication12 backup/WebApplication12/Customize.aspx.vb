Imports System.Data.SqlClient

Public Class WebForm9
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            TextBox40.Text = emailAddress
        End If
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        If Label53.Text = String.Empty Or Label54.Text = String.Empty Or Label55.Text = String.Empty Or Label56.Text = String.Empty Or Label57.Text = String.Empty Or Label58.Text = String.Empty Then
            ModalPopupExtender2.Show()

        Else

            Dim myConn As New SqlConnection
            Dim cmd As SqlCommand
            Dim sqlstring, Email, fname, lname As String

            Email = TextBox40.Text
            fname = Label53.Text
            lname = Label54.Text

            myConn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
            myConn.Open()

            sqlstring = "INSERT INTO Emaildata (Email, fname, lname) VALUES ('" + Email + "', '" + fname + "', '" + lname + "')"

            cmd = New SqlCommand(sqlstring, myConn)

            cmd.ExecuteNonQuery()
            myConn.Close()
        End If
    End Sub




    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        If RadioButton1.Checked = True Then
            If Label82.Text = "Label" Then
                Label82.Visible = True
                Label82.Text = RadioButton1.Text
            ElseIf Label83.Text = "Label" Then
                Label83.Visible = True
                Label83.Text = RadioButton1.Text
            ElseIf Label84.Text = "Label" Then
                Label84.Visible = True
                Label84.Text = RadioButton1.Text
            ElseIf Label85.Text = "Label" Then
                Label85.Visible = True
                Label85.Text = RadioButton1.Text
            ElseIf Label86.Text = "Label" Then
                Label86.Visible = True
                Label86.Text = RadioButton1.Text
            ElseIf Label87.Text = "Label" Then
                Label87.Visible = True
                Label87.Text = RadioButton1.Text
            ElseIf Label88.Text = "Label" Then
                Label88.Visible = True
                Label88.Text = RadioButton1.Text
            End If
        End If
        If RadioButton2.Checked = True Then
            If Label82.Text = "Label" Then
                Label82.Visible = True
                Label82.Text = RadioButton2.Text
            ElseIf Label83.Text = "Label" Then
                Label83.Visible = True
                Label83.Text = RadioButton2.Text
            ElseIf Label84.Text = "Label" Then
                Label84.Visible = True
                Label84.Text = RadioButton2.Text
            ElseIf Label85.Text = "Label" Then
                Label85.Visible = True
                Label85.Text = RadioButton2.Text
            ElseIf Label86.Text = "Label" Then
                Label86.Visible = True
                Label86.Text = RadioButton2.Text
            ElseIf Label87.Text = "Label" Then
                Label87.Visible = True
                Label87.Text = RadioButton2.Text
            ElseIf Label88.Text = "Label" Then
                Label88.Visible = True
                Label88.Text = RadioButton2.Text
            End If
        End If
        If RadioButton3.Checked = True Then
            If Label82.Text = "Label" Then
                Label82.Visible = True
                Label82.Text = RadioButton3.Text
            ElseIf Label83.Text = "Label" Then
                Label83.Visible = True
                Label83.Text = RadioButton3.Text
            ElseIf Label84.Text = "Label" Then
                Label84.Visible = True
                Label84.Text = RadioButton3.Text
            ElseIf Label85.Text = "Label" Then
                Label85.Visible = True
                Label85.Text = RadioButton3.Text
            ElseIf Label86.Text = "Label" Then
                Label86.Visible = True
                Label86.Text = RadioButton3.Text
            ElseIf Label87.Text = "Label" Then
                Label87.Visible = True
                Label87.Text = RadioButton3.Text
            ElseIf Label88.Text = "Label" Then
                Label88.Visible = True
                Label88.Text = RadioButton3.Text
            End If
        End If
        If RadioButton4.Checked = True Then
            If Label82.Text = "Label" Then
                Label82.Visible = True
                Label82.Text = RadioButton4.Text
            ElseIf Label83.Text = "Label" Then
                Label83.Visible = True
                Label83.Text = RadioButton4.Text
            ElseIf Label84.Text = "Label" Then
                Label84.Visible = True
                Label84.Text = RadioButton4.Text
            ElseIf Label85.Text = "Label" Then
                Label85.Visible = True
                Label85.Text = RadioButton4.Text
            ElseIf Label86.Text = "Label" Then
                Label86.Visible = True
                Label86.Text = RadioButton4.Text
            ElseIf Label87.Text = "Label" Then
                Label87.Visible = True
                Label87.Text = RadioButton4.Text
            ElseIf Label88.Text = "Label" Then
                Label88.Visible = True
                Label88.Text = RadioButton4.Text
            End If
        End If
        If RadioButton5.Checked = True Then
            If Label82.Text = "Label" Then
                Label82.Visible = True
                Label82.Text = RadioButton5.Text
            ElseIf Label83.Text = "Label" Then
                Label83.Visible = True
                Label83.Text = RadioButton5.Text
            ElseIf Label84.Text = "Label" Then
                Label84.Visible = True
                Label84.Text = RadioButton5.Text
            ElseIf Label85.Text = "Label" Then
                Label85.Visible = True
                Label85.Text = RadioButton5.Text
            ElseIf Label86.Text = "Label" Then
                Label86.Visible = True
                Label86.Text = RadioButton5.Text
            ElseIf Label87.Text = "Label" Then
                Label87.Visible = True
                Label87.Text = RadioButton5.Text
            ElseIf Label88.Text = "Label" Then
                Label88.Visible = True
                Label88.Text = RadioButton5.Text
            End If
        End If
        If RadioButton6.Checked = True Then
            If Label82.Text = "Label" Then
                Label82.Visible = True
                Label82.Text = RadioButton6.Text
            ElseIf Label83.Text = "Label" Then
                Label83.Visible = True
                Label83.Text = RadioButton6.Text
            ElseIf Label84.Text = "Label" Then
                Label84.Visible = True
                Label84.Text = RadioButton6.Text
            ElseIf Label85.Text = "Label" Then
                Label85.Visible = True
                Label85.Text = RadioButton6.Text
            ElseIf Label86.Text = "Label" Then
                Label86.Visible = True
                Label86.Text = RadioButton6.Text
            ElseIf Label87.Text = "Label" Then
                Label87.Visible = True
                Label87.Text = RadioButton6.Text
            ElseIf Label88.Text = "Label" Then
                Label88.Visible = True
                Label88.Text = RadioButton6.Text
            End If
        End If
        If RadioButton7.Checked = True Then
            If Label82.Text = "Label" Then
                Label82.Visible = True
                Label82.Text = RadioButton7.Text
            ElseIf Label83.Text = "Label" Then
                Label83.Visible = True
                Label83.Text = RadioButton7.Text
            ElseIf Label84.Text = "Label" Then
                Label84.Visible = True
                Label84.Text = RadioButton7.Text
            ElseIf Label85.Text = "Label" Then
                Label85.Visible = True
                Label85.Text = RadioButton7.Text
            ElseIf Label86.Text = "Label" Then
                Label86.Visible = True
                Label86.Text = RadioButton7.Text
            ElseIf Label87.Text = "Label" Then
                Label87.Visible = True
                Label87.Text = RadioButton7.Text
            ElseIf Label88.Text = "Label" Then
                Label88.Visible = True
                Label88.Text = RadioButton7.Text
            End If
        End If
        If Label82.Text = RadioButton1.Text Then
            If RadioButton8.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton8.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton8.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton8.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton8.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton8.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton8.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton8.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton8.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton8.Text
                End If
            End If
            If RadioButton9.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton9.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton9.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton9.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton9.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton9.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton9.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton9.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton9.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton9.Text
                End If
            End If
            If RadioButton10.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton10.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton10.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton10.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton10.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton10.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton10.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton10.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton10.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton10.Text
                End If
            End If
            If RadioButton11.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton11.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton11.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton11.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton11.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton11.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton11.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton11.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton11.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton11.Text
                End If
            End If
            If RadioButton12.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton12.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton12.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton12.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton12.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton12.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton12.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton12.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton12.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton12.Text
                End If
            End If
            If RadioButton13.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton13.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton13.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton13.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton13.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton13.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton13.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton13.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton13.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton13.Text
                End If
            End If
            If RadioButton14.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton14.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton14.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton14.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton14.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton14.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton14.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton14.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton14.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton14.Text
                End If
            End If
            If RadioButton15.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton15.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton15.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton15.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton15.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton15.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton15.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton15.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton15.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton15.Text
                End If
            End If
            If RadioButton16.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton16.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton16.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton16.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton16.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton16.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton16.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton16.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton16.Text
                ElseIf Label97a.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton16.Text
                End If
            End If
        End If
        If Label83.Text = RadioButton1.Text Then
            If RadioButton18.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton8.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton8.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton8.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton8.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton8.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton8.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton8.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton8.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton8.Text
                End If
            End If
            If RadioButton19.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton19.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton9.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton9.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton9.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton9.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton9.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton9.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton9.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton9.Text
                End If
            End If
            If RadioButton20.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton10.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton10.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton10.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton10.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton10.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton10.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton10.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton10.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton10.Text
                End If
            End If
            If RadioButton21.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton11.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton11.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton11.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton11.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton11.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton11.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton11.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton11.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton11.Text
                End If
            End If
            If RadioButton22.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton12.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton12.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton12.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton12.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton12.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton12.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton12.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton12.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton12.Text
                End If
            End If
            If RadioButton23.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton13.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton13.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton13.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton13.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton13.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton13.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton13.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton13.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton13.Text
                End If
            End If
            If RadioButton24.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton14.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton14.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton14.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton14.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton14.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton14.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton14.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton14.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton14.Text
                End If
            End If
            If RadioButton25.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton15.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton15.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton15.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton15.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton15.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton15.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton15.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton15.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton15.Text
                End If
            End If
            If RadioButton26.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton16.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton16.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton16.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton16.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton16.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton16.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton16.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton16.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton16.Text
                End If
            End If
        End If
        If Label82.Text = RadioButton2.Text Then
            If RadioButton18.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton18.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton18.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton18.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton18.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton18.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton18.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton18.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton18.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton18.Text
                End If
            End If
            If RadioButton9.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton19.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton19.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton19.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton19.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton19.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton19.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton19.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton19.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton19.Text
                End If
            End If
            If RadioButton10.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton20.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton20.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton20.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton20.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton20.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton20.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton20.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton20.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton20.Text
                End If
            End If
            If RadioButton11.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton21.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton21.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton21.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton21.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton21.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton21.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton21.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton21.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton21.Text
                End If
            End If
            If RadioButton12.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton22.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton22.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton22.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton22.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton22.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton22.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton22.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton22.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton22.Text
                End If
            End If
            If RadioButton13.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton23.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton23.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton23.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton23.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton23.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton23.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton23.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton23.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton23.Text
                End If
            End If
            If RadioButton14.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton24.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton24.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton24.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton24.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton24.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton24.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton24.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton24.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton24.Text
                End If
            End If
            If RadioButton15.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton25.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton25.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton25.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton25.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton25.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton25.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton25.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton25.Text
                ElseIf Label97.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton25.Text
                End If
            End If
            If RadioButton16.Checked = True Then
                If Label89.Text = "Label" Then
                    Label89.Visible = True
                    Label89.Text = RadioButton26.Text
                ElseIf Label90.Text = "Label" Then
                    Label90.Visible = True
                    Label90.Text = RadioButton26.Text
                ElseIf Label91.Text = "Label" Then
                    Label91.Visible = True
                    Label91.Text = RadioButton26.Text
                ElseIf Label92.Text = "Label" Then
                    Label92.Visible = True
                    Label92.Text = RadioButton26.Text
                ElseIf Label93.Text = "Label" Then
                    Label93.Visible = True
                    Label93.Text = RadioButton26.Text
                ElseIf Label94.Text = "Label" Then
                    Label94.Visible = True
                    Label94.Text = RadioButton26.Text
                ElseIf Label95.Text = "Label" Then
                    Label95.Visible = True
                    Label95.Text = RadioButton26.Text
                ElseIf Label96.Text = "Label" Then
                    Label96.Visible = True
                    Label96.Text = RadioButton26.Text
                ElseIf Label97a.Text = "Label" Then
                    Label97a.Visible = True
                    Label97a.Text = RadioButton26.Text
                End If
            End If
        End If
        If Label83.Text = RadioButton2.Text Then
            If RadioButton18.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton18.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton18.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton18.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton18.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton18.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton18.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton18.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton18.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton18.Text
                End If
            End If
            If RadioButton19.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton19.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton19.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton19.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton19.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton19.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton19.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton19.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton19.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton19.Text
                End If
            End If
            If RadioButton20.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton20.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton20.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton20.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton20.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton20.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton20.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton20.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton20.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton20.Text
                End If
            End If
            If RadioButton21.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton21.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton21.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton21.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton21.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton21.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton21.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton21.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton21.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton21.Text
                End If
            End If
            If RadioButton22.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton22.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton22.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton22.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton22.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton22.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton22.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton22.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton22.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton22.Text
                End If
            End If
            If RadioButton23.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton23.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton23.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton23.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton23.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton23.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton23.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton23.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton23.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton23.Text
                End If
            End If
            If RadioButton24.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton24.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton24.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton24.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton24.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton24.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton24.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton24.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton24.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton24.Text
                End If
            End If
            If RadioButton25.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton25.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton25.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton25.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton25.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton25.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton25.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton25.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton25.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton25.Text
                End If
            End If
            If RadioButton26.Checked = True Then
                If Label97.Text = "Label" Then
                    Label97.Visible = True
                    Label97.Text = RadioButton26.Text
                ElseIf Label98.Text = "Label" Then
                    Label98.Visible = True
                    Label98.Text = RadioButton26.Text
                ElseIf Label99.Text = "Label" Then
                    Label99.Visible = True
                    Label99.Text = RadioButton26.Text
                ElseIf Label100.Text = "Label" Then
                    Label100.Visible = True
                    Label100.Text = RadioButton26.Text
                ElseIf Label101.Text = "Label" Then
                    Label101.Visible = True
                    Label101.Text = RadioButton26.Text
                ElseIf Label102.Text = "Label" Then
                    Label102.Visible = True
                    Label102.Text = RadioButton26.Text
                ElseIf Label103.Text = "Label" Then
                    Label103.Visible = True
                    Label103.Text = RadioButton26.Text
                ElseIf Label104.Text = "Label" Then
                    Label104.Visible = True
                    Label104.Text = RadioButton26.Text
                ElseIf Label105a.Text = "Label" Then
                    Label105a.Visible = True
                    Label105a.Text = RadioButton26.Text
                End If
            End If
        End If

    End Sub

    Protected Sub RadioButton39_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButton39.CheckedChanged

    End Sub
End Class