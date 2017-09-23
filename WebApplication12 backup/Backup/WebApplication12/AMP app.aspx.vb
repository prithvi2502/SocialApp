
Public Class WebForm12


    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click

    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        If (TextBox2.Text < 14) Then
            Label13.Visible = True
            Label13.Text = "Ok! it looks like you are a young one! I Have to perfect set a games for you."
            TextBox2.Enabled = False
            ImageButton3.Enabled = False
            Label18.Visible = True
            Label14.Visible = True
            Label14.Text = "Ok here is question that can tell me alot about you. Do you play games to relax your mind or do you play games to exercise. I am asking you this because I want to know if you like playing games that involve you to get up and play or just sit down and play. "
            Label17.Visible = True
            Label17.Text = "So Do you like games for relaxation (type in controllers) or active games (kinect, PS3 move, Wii)(type in active) "
            TextBox3.Visible = True
            ImageButton4.Visible = True
        End If
        If (TextBox2.Text >= 14) Then
            Label13.Visible = True
            TextBox2.Enabled = False
            ImageButton3.Enabled = False
            Label18.Visible = True
            Label14.Visible = True
            Label17.Visible = True
            TextBox3.Visible = True
            ImageButton4.Visible = True

        End If



    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        If TextBox3.Text = "action" Then
            Label20.Visible = True
            Label20.Text = "Which type of action game do you like?"
            RadioButton1.Visible = True
            RadioButton1.Text = "First person or Third Person shooter (FPS) "
            RadioButton2.Visible = True
            RadioButton2.Text = "Fighter games"
            RadioButton3.Visible = True
            RadioButton3.Text = "Adventure and multiplayer"
            ImageButton5.Visible = True
            TextBox3.Enabled = False
            ImageButton4.Enabled = False

        End If

        If TextBox3.Text = "others" Then
            Label20.Visible = True
            Label20.Text = "What type of game system do you like: Xbox360 by microsoft, Playstation 3 by sony, Nintendo systems, and Computers. "
            RadioButton1.Visible = True
            RadioButton1.Text = "Xbox 360"
            RadioButton2.Visible = True
            RadioButton2.Text = "Playstation 3"
            RadioButton3.Visible = True
            RadioButton2.Text = "Nintendo systems"
            radiobutton4.Visible = True
            radiobutton4.Text = "PC"
            ImageButton8.Visible = True
            TextBox3.Enabled = False
            ImageButton4.Enabled = False
        End If
        If TextBox3.Text <> "action" Then
            Label19.Visible = True
        End If
        If TextBox3.Text <> "others" Then
            Label19.Visible = True
        End If
        If TextBox3.Text <> "controllers" Then
            Label19.Visible = True
        End If
        If TextBox3.Text = "controllers" Then
            Label20.Visible = True
            Label20.Text = "Controllers! ok so I have a couple games in mind that you will like, but I wann a narrow it down. What type of game do you like?"
            RadioButton1.Visible = True
            RadioButton1.Text = "Action"
            RadioButton2.Visible = True
            RadioButton2.Text = "RPG"
            RadioButton3.Visible = True
            RadioButton3.Text = "Fighter"
            radiobutton4.Visible = True
            radiobutton4.Text = "Adventure"
            radiobutton5.Visible = True
            radiobutton5.Text = "Strategy"
            radiobutton6.Visible = True
            radiobutton6.Text = "Sports"
            ImageButton9.Visible = True
            TextBox3.Enabled = False
            ImageButton4.Enabled = False
        End If
    End Sub


    Protected Sub ImageButton5_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click
        If RadioButton2.Checked Then
            Label21.Visible = True
            Label22.Visible = True
            Label22.Text = "Do you prefer games that envolve anime?"
            TextBox4.Visible = True
            Label23.Visible = True
            Label23.Text = "Do you like blood and or intense violence? (remember your privacy is protected)"
            TextBox5.Visible = True
            ImageButton7.Visible = True
            ImageButton5.Enabled = False
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False

        End If
        If RadioButton1.Checked Then
            Label21.Visible = True
            Label22.Visible = True
            Label22.Text = "Do you like blood and or intense violence? (remember your privacy is protected)"
            TextBox4.Visible = True
            Label23.Visible = True
            Label23.Text = "Are you a war strategist or a gamer or a casual gamer?"
            TextBox5.Visible = True
            ImageButton7.Visible = True
            ImageButton5.Enabled = False
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False

        End If
        If RadioButton3.Checked Then
            label21.visible = True
            Label22.Visible = True
            Label22.Text = "Do you like blood and or intense violence? (remember your privacy is protected)"
            TextBox4.Visible = True
            Label23.Visible = True
            Label23.Text = "Are you a war strategist or a gamer or a casual gamer?"
            TextBox5.Visible = True
            ImageButton7.Visible = True
            ImageButton5.Enabled = False
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False
        End If
    End Sub




    Protected Sub ImageButton8_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        If RadioButton1.Checked Then
            Label21.Visible = True
            Label22.Visible = True
            label22.Text = "Do you like sports games (yes, no)"
            TextBox4.Visible = True
            Label23.Visible = True
            Label23.Text = "Do you like sandbox style games and or RPG games (yes, no)"
            TextBox5.Visible = True
            ImageButton7.Visible = True
            ImageButton5.Visible = False
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False
        End If
        If RadioButton2.Checked Then
            Label21.Visible = True
            Label22.Visible = True
            Label22.Text = "Do you like sports games (yes, no)"
            TextBox4.Visible = True
            Label23.Visible = True
            Label23.Text = "Do you like sandbox style games and or RPG games? (yes, no)"
            TextBox5.Visible = True
            ImageButton7.Visible = True
            ImageButton5.Visible = False
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False
        End If
        If RadioButton3.Checked Then
            Label21.Visible = True
            Label22.Visible = True
            Label22.Text = "Do you like RPG games? (yes, no)"
            TextBox4.Visible = True
            Label23.Visible = True
            Label23.Text = "Do you like stragic games ? (yes, no)"
            TextBox5.Visible = True
            ImageButton7.Visible = True
            ImageButton5.Visible = False
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False
        End If
        If radiobutton4.Checked Then
            Label22.Visible = True
            Label22.Text = "Do you like sports games (yes, no)"
            TextBox4.Visible = True
            Label23.Visible = True
            Label23.Text = "Do you like sandbox style games and RPG games (yes, no)"
            TextBox5.Visible = True
            ImageButton7.Visible = True
            ImageButton5.Visible = False
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False
        End If
    End Sub
    Protected Sub ImageButoon9_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton9.Click
        If RadioButton1.Checked Then
            Label21.Visible = True
            Label22.Visible = True
            Label22.Text = "If you like action games then do you have and interest in lego games? (yes or no)"
            TextBox4.Visible = True
            Label23.Visible = True
            Label23.Text = "Do you like sport action for video games(yes or no)"
            TextBox5.Visible = True
            ImageButton7.Visible = True
            ImageButton5.Visible = False
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False
            radiobutton4.Enabled = False
            radiobutton5.Enabled = False
            radiobutton6.Enabled = False
            ImageButton9.Enabled = False


        End If
        If RadioButton2.Checked Then
            Label21.Visible = True
            Label22.Visible = True
            Label22.Text = "Tell me something, do you like cartoony gmaes. Eg. Pokemon. (Yes or no)."
            TextBox4.Visible = True
            Label23.Visible = True
            Label23.Text = "Do you like Lego games? In know it seems specific but I have to ask you to narrow down the list of games you might like."
            TextBox5.Visible = True
            ImageButton7.Visible = True
            ImageButton5.Visible = False
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False
            radiobutton4.Enabled = False
            radiobutton5.Enabled = False
            radiobutton6.Enabled = False
            ImageButton9.Enabled = False
        End If
        If RadioButton3.Checked Then
            Label21.Visible = True
            Label22.Visible = True
            Label22.Text = "A fighter hunn? Ok! let me ask you this do you like anime by any chance or have watched any anime before? (Please put bellow the type of anime DragonBall Z, Naruto, YUGIOH, Bleach, or One piece. Pick either 1 or 2 of these if all just type in one of the boxes all)"
            TextBox4.Visible = True
            Label24.Visible = True
            TextBox6.Visible = True
            Label23.Visible = True
            Label23.Text = "Do you like some what of a violence in games. What I mean to say "
            TextBox5.Visible = True
            ImageButton7.Visible = True
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False
            radiobutton4.Enabled = False
            radiobutton5.Enabled = False
            radiobutton6.Enabled = False
            ImageButton9.Enabled = False
        End If
        If radiobutton4.Checked Then
            Label21.Visible = True
            Label22.Visible = True
            Label22.Text = "Do you like Sand Box style games? If you are wondering Sand box games are games in which you can do anything you want."
            TextBox4.Visible = True
            Label23.Visible = True
            Label23.Text = "Do you like to have fighting elements in yourgames"
            TextBox5.Visible = True
            ImageButton7.Visible = True
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False
            radiobutton4.Enabled = False
            radiobutton5.Enabled = False
            radiobutton6.Enabled = False
            ImageButton8.Enabled = False
        End If
        If radiobutton5.Checked Then
            Label21.Visible = True
            Label22.Visible = True
            Label22.Text = "In our database we have alot of games that might suit you but some of them involve having computer. So my question to you is that do you like video games that are playable on computers?"
            TextBox4.Visible = True
            Label23.Visible = True
            Label23.Text = "I have another question do you like games do you like a little rpg in your strategy games, trust me you will like? I call theses games strpg."
            TextBox5.Visible = True
            ImageButton7.Visible = True
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False
            radiobutton4.Enabled = False
            radiobutton5.Enabled = False
            radiobutton6.Enabled = False
            ImageButton8.Enabled = False
        End If
        If radiobutton6.Checked Then
            Label21.Visible = True
            Label22.Visible = True
            Label22.Text = "Pick a sport you like Football, Ice hockey, Soccer, Basketball, Baseball, and Tennis. (Pick the ones you like bellow) "
            RadioButton10.Visible = True
            RadioButton11.Visible = True
            RadioButton12.Visible = True
            RadioButton13.Visible = True
            RadioButton14.Visible = True
            radiobutton15.Visible = True
            Label23.Visible = True
            Label23.Text = "Do you like cartoon orientated sports? Trust me they are fun to play.(yes/no)"
            TextBox5.Visible = True
            ImageButton7.Visible = True
            RadioButton1.Enabled = False
            RadioButton2.Enabled = False
            RadioButton3.Enabled = False
            radiobutton4.Enabled = False
            radiobutton5.Enabled = False
            radiobutton6.Enabled = False
            ImageButton8.Enabled = False


        End If
    End Sub
End Class