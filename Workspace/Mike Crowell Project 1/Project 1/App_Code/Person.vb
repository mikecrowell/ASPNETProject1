Imports Microsoft.VisualBasic

<Serializable()> Public Class Person
    Private name As String
    Private address As String
    Private phone As String
    Private email As String

    Public Sub setName(ByVal name As String)
        Me.name = name
    End Sub

    Public Function getName() As String
        Return name
    End Function

    Public Sub setAddress(ByVal address As String)
        Me.address = address
    End Sub

    Public Function getAddress() As String
        Return address
    End Function

    Public Sub setPhone(ByVal phone As String)
        Me.phone = phone
    End Sub

    Public Function getPhone() As String
        Return phone
    End Function

    Public Sub setEmail(ByVal email As String)
        Me.email = email
    End Sub

    Public Function getEmail() As String
        Return email
    End Function


End Class
