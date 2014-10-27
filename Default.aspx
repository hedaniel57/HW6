<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
    <form id="form_default" runat="server">
    
 <div>       
     <div>
    <h1>Wicked Easy Recipes</h1>
     </div>
        <h2>Using 5 Ingedients or Less</h2><br />
         <ul><li><a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp; <a href="New Recipe.aspx" style="color: #696969">New Recipe</a>&nbsp; |&nbsp; <a href="About Us.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp; <a href="Contact.aspx" style="color: #696969">Contact</a></h3>
            </li></ul>
      </div> 
        <br />
        <br />
        <div>
    
        <asp:SqlDataSource ID="Sql_HW6qiehe" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [qiehe_HW6]" DeleteCommand="DELETE FROM [qiehe_HW6] WHERE [Id] = @Id" InsertCommand="INSERT INTO [qiehe_HW6] ([Recipe Name], [Submitted By], [Ingredient #1], [Ingredient #2], [Ingredient #3], [Ingredient #4], [Ingredient #5], [Preparation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @column1, @column2, @column3, @column4, @column5, @Preparation, @Notes)" UpdateCommand="UPDATE [qiehe_HW6] SET [Recipe Name] = @Recipe_Name, [Submitted By] = @Submitted_By, [Ingredient #1] = @column1, [Ingredient #2] = @column2, [Ingredient #3] = @column3, [Ingredient #4] = @column4, [Ingredient #5] = @column5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" CssClass="cssgridview" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Sql_HW6qiehe">
            <Columns>
                <asp:BoundField DataField="Recipe Name" HeaderText="Recipe Name" SortExpression="Recipe Name" />
                <asp:BoundField DataField="Submitted By" HeaderText="Submitted By" SortExpression="Submitted By" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="DetailView.aspx?Id={0}" Text="View Detail" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
