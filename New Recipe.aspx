<%@ Page Language="VB" AutoEventWireup="false" CodeFile="New Recipe.aspx.vb" Inherits="New_Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
    <form id="formn_newrecipe" runat="server">
<div>
<div>
    <h1>Wicked Easy Recipes</h1>
    </div>
        <h2>Using 5 Ingedients or Less</h2><br />
        <ul><li><a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp; <a href="New Recipe.aspx" style="color: #696969">New Recipe</a>&nbsp; |&nbsp; <a href="About Us.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp; <a href="Contact.aspx" style="color: #696969">Contact</a></h3>
            </li></ul>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [qiehe_HW6] WHERE [Id] = @Id" InsertCommand="INSERT INTO [qiehe_HW6] ([Recipe Name], [Submitted By], [Ingredient #1], [Ingredient #2], [Ingredient #3], [Ingredient #4], [Ingredient #5], [Preparation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @column1, @column2, @column3, @column4, @column5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [qiehe_HW6]" UpdateCommand="UPDATE [qiehe_HW6] SET [Recipe Name] = @Recipe_Name, [Submitted By] = @Submitted_By, [Ingredient #1] = @column1, [Ingredient #2] = @column2, [Ingredient #3] = @column3, [Ingredient #4] = @column4, [Ingredient #5] = @column5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Id] = @Id" ProviderName="System.Data.SqlClient">
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
    <asp:FormView ID="Form_NewRecipe" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
   
        </EditItemTemplate>
        <InsertItemTemplate>
             
            <table class="table">
                <tr>
                    <td class="formtitle">
                        Recipe Name:
                    </td>
                    <td class="formcell">
                        <asp:TextBox ID="tb_recipename" runat="server" Text='<%# Bind("[Recipe Name]") %>' />
                    </td>
                    <td class="validation">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_recipeName" runat="server" ErrorMessage="Please enter the recipe name!" CssClass="validatoionError" ControlToValidate="tb_recipename"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                 <tr>
                    <td class="formtitle">
                        Submitted By:
                    </td>
                    <td class="formcell">
                        <asp:TextBox ID="tb_submit" runat="server" Text='<%# Bind("[Submitted By]")%>' />
                    </td>
                     <td class="validation">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_Submit" runat="server" ErrorMessage="Please enter the name who submit!" CssClass="validatoionError" ControlToValidate="tb_submit"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="formtitle">
                        Ingredient #1:
                    </td>
                    <td class="formcell">
                        <asp:TextBox ID="tb_in1" runat="server" Text='<%# Bind("[Ingredient #1]") %>' />
                    </td>
                     <td class="validation">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_in1" runat="server" ErrorMessage="Please enter at least one ingredient!" CssClass="validatoionError" ControlToValidate="tb_in1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="formtitle">
                        Ingredient #2:
                    </td>
                    <td class="formcell">
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("[Ingredient #2]") %>' />
                    </td>
                </tr>
                 <tr>
                    <td class="formtitle">
                        Ingredient #3:
                    </td>
                    <td class="formcell">
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("[Ingredient #3]") %>' />
                    </td>
                </tr>
                 <tr>
                    <td class="formtitle">
                        Ingredient #4:
                    </td>
                    <td class="formcell">
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("[Ingredient #4]") %>' />
                    </td>
                </tr>
                 <tr>
                    <td class="formtitle">
                        Ingredient #5:
                    </td>
                    <td class="formcell">
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("[Ingredient #5]") %>' />
                    </td>
                </tr>
                    <tr>
                    <td class="formtitle">
                        Preparation:
                    </td>
                    <td class="formcell">
                        <asp:TextBox ID="tb_prep" runat="server" Text='<%# Bind("Preparation") %>' />
                    </td>
                        <td class="validation">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_prep" runat="server" ErrorMessage="Please enter the preparation!" CssClass="validatoionError" ControlToValidate="tb_prep"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                    <tr>
                    <td class="formtitle">
                        Notes:
                    </td>
                    <td class="formcell">
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Notes") %>' />
                    </td>
                </tr>
                </tr>

                 <tr>
                     <td class="formtitle">
                         <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                     </td>
                     <td class="formcell">
                         <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     </td>
                 </tr>

            </table>
      
            <br />
            
          
        </InsertItemTemplate>
    </asp:FormView>
    <br />
      </div> 
        
    </form>
    <div class="footer"> 
        @ 2014 6k183  Software Design and Development
    </div>
</body>
</html>
    