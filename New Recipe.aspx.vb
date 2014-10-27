
Partial Class New_Recipe
    Inherits System.Web.UI.Page

   
    Protected Sub Form_NewRecipe_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles Form_NewRecipe.ItemInserted
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub Form_NewRecipe_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles Form_NewRecipe.ItemUpdated
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Form_NewRecipe.Focus()
    End Sub
End Class

