Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Collections.Generic

<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
<System.Web.Script.Services.ScriptService()> _
Public Class AutoComplete
    Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function GetCompletionList(ByVal prefixText As String, ByVal count As Integer) As String()
        Dim c1 As Char
        Dim c2 As Char
        Dim c3 As Char

        If (count = 0) Then
            count = 10
        End If

        Dim rnd As New Random()

        Dim items As New List(Of String)

        For i As Integer = 1 To count

            c1 = CStr(rnd.Next(65, 90))
            c2 = CStr(rnd.Next(97, 122))
            c3 = CStr(rnd.Next(97, 122))

            items.Add(prefixText + c1 + c2 + c3)
        Next i

        Return items.ToArray()
    End Function

End Class
