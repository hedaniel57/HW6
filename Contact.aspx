<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
</head>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
<body>
    <form id="form_contact" runat="server" >

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
      <div class="contact">
        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>
       
        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" style="height: 26px" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

    </form>
    </div>
    <div class="footer"> 
        @ 2014 6k183  Software Design and Development
    </div>
</body>
</html>
