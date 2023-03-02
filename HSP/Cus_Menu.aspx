<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cus_Menu.aspx.cs" Theme="Master" Inherits="HSP.WebForm2" %>

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
				<div class="centeral"> <asp:Button ID="Hire" CssClass="button-36" runat="server" Text="Hire a Professional" Width="268px" Height="40px" OnClick="Hire_Click"/>  </div>  <br />
           		<div class="centeral"> <asp:Button ID="Pro" CssClass="button-36" runat="server" Text="Visit Profile" Width="268px" Height="40px" OnClick="Hire_Click"/>  </div>  <br />
				<div class="centeral"> <asp:Button ID="Button2" CssClass="button-36" runat="server" Text="Track Booking" Width="268px" Height="40px"/>  </div>  <br />
				<div class="centeral"> <asp:Button ID="Button3" CssClass="button-36" runat="server" Text="Visit History" Width="268px" Height="40px"/>  </div>  <br />
				<div class="centeral"> <asp:Button ID="Button4" CssClass="button-36" runat="server" Text="Give Feeback" Width="268px" Height="40px"/>  </div>  <br />

       </div>
    </form>
</body>



</html>