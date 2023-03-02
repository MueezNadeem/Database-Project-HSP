<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HSP_login.aspx.cs" theme="Master" Inherits="HSP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Maintenance Masters</title>


</head>
<body cssclass="body">
   
      <form id="form1" runat="server">
            
              <div class="divi">
			  <br />
       		  <asp:Image ID="Image1" cssclass="center" ImageUrl="https://mytraveloguesl202171.files.wordpress.com/2022/04/company-logo-1.png?w=1024" runat="server" height="85px" Width="400px"/>
			  <br />
		      <br />
   
	          <div class="form">
           
               <br />
           
               <div class="col">
               <asp:TextBox ID="username" cssclass="textbox" runat="server" placeholder="Username"  ></asp:TextBox>
			   <span class="focus-border"></span>

			   </div>
              
               <br />
			   <div class="col"> <asp:TextBox ID="password" TextMode="Password" cssclass="textbox" runat="server"  placeholder="Password" ></asp:TextBox>   <span class="focus-border"></span> </div><br /><br /></div> 
                  
                
               <div class="centeral"> <asp:Button ID="login" CssClass="button1" runat="server" Text="Login" Width="268px" Height="40px" OnClick="login_Click" />   </div>


			   <div class="centeral"><p><br />  <br /></p> <asp:Button ID="register" CssClass="button1" runat="server" Text="Register" Width="268px" Height="40px" OnClick="register_Click" />	   </div>
			 
               <br />
               <asp:Label class="centeral" style="color:red; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" ID="Msg" runat="server" Text=" "></asp:Label>
                
               <br />
           
       </div>
    </form>
</body>



</html>
