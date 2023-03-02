<%@ Page Language="C#" AutoEventWireup="true" theme="Master" CodeBehind="UserProfile.aspx.cs" Inherits="HSP.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>UserProfile</title>
    </head>
<body cssclass="body">
   
      <form id="form1" runat="server">
            
 
          <div class="divi" style="overflow-y:auto; overflow-x:hidden">
              			   <br /> <asp:Image ID="Image1" cssclass="center" ImageUrl="https://mytraveloguesl202171.files.wordpress.com/2022/04/company-logo-1.png?w=1024" runat="server" height="85px" Width="400px"/> <br />


                     <div class="form">         
               <div  style="justify-content:center; display:flex"><asp:Image ID="Image2" cssclass="center" ImageUrl="https://mytraveloguesl202171.files.wordpress.com/2022/05/sign-and-symbol-face-mask-01.jpg?w=527" runat="server" height="200px" Width="200px"/></div> <br />

			   <div class="column">  <asp:TextBox ID="Name"  ReadOnly="true"  cssclass="textbox" runat="server" placeholder="ID : "  ></asp:TextBox>              <span class="focus-border"></span></div><br />
			   <div class="column">  <asp:TextBox ID="Contact"  ReadOnly="true"     cssclass="textbox" runat="server" placeholder="Name :"  ></asp:TextBox>                     <span class="focus-border"></span></div><br />
			   <div class="column">  <asp:TextBox ID="Address" ReadOnly="true"    cssclass="textbox" runat="server" placeholder="Username"  ></asp:TextBox>                 <span class="focus-border"></span></div><br />
               <div class="column">  <asp:TextBox ID="DoB"  ReadOnly="true"      CssClass ="textbox" runat="server" placeholder="Password"  ></asp:TextBox>                       <span class="focus-border"></span></div><br />
			   <div class="column">  <asp:TextBox ID="Qualification" ReadOnly="true"  cssclass="textbox" runat="server" placeholder="Address"></asp:TextBox>       <span class="focus-border"></span></div><br />
			   <div class="column">  <asp:TextBox ID="TextBox1" ReadOnly="true"  cssclass="textbox" runat="server" placeholder="Contact"></asp:TextBox>       <span class="focus-border"></span></div><br />
			   <div class="column">  <asp:TextBox ID="TextBox2" ReadOnly="true"  cssclass="textbox" runat="server" placeholder="DoB"></asp:TextBox>       <span class="focus-border"></span></div><br />
               <div class="column">  <asp:TextBox ID="TextBox3" ReadOnly="true"  cssclass="textbox" runat="server" placeholder="Cash"></asp:TextBox>       <span class="focus-border"></span></div><br />
               <div class="column">  <asp:TextBox ID="TextBox4" ReadOnly="true"  cssclass="textbox" runat="server" placeholder="No of Bookings"></asp:TextBox>       <span class="focus-border"></span></div><br />
               <div class="column">  <asp:TextBox ID="TextBox5" ReadOnly="true"  cssclass="textbox" runat="server" placeholder="No of Pending Bookings"></asp:TextBox>       <span class="focus-border"></span></div><br />

               </div>  
		      </div>      

    </form>
</body>



</html>