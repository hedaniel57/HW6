
Partial Class DetailView
    Inherits System.Web.UI.Page

    Protected Sub Form_DetailView_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles Form_DetailView.ItemDeleted

        Dim deletedData As String = e.Values("Recipe Name").ToString()
        lbl_deletedData.text = deletedData & "has been deleted from database."
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")

        'Response.Redirect("./Default.aspx")
    End Sub
    Protected Sub Form_DetailView_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles Form_DetailView.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub
End Class
