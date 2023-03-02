<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HSP_Reg.aspx.cs" Theme="Master" Inherits="HSP.HSP_Reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Maintenance Masters</title>
	</head>

<body cssclass="body">
   
      <form id="form1" runat="server">
            
               <div class="Reg_div">
			   <br /> <asp:Image ID="Image1" cssclass="center" ImageUrl="https://mytraveloguesl202171.files.wordpress.com/2022/04/company-logo-1.png?w=1024" runat="server" height="85px" Width="400px"/> <br />
   
	           <div class="form">         
   
               <div class="col">  <asp:TextBox ID="firtname"   CssClass  ="textbox" runat="server" placeholder="First Name"  ></asp:TextBox>             <span class="focus-border"></span></div><br />
			   <div class="col">  <asp:TextBox ID="lastname"   cssclass="textbox" runat="server" placeholder="Last Name"  ></asp:TextBox>              <span class="focus-border"></span></div><br />
			   <div class="col">  <asp:TextBox ID="Email"   cssclass="textbox" runat="server" placeholder="Email xyz@Masters"  ></asp:TextBox>              <span class="focus-border"></span></div><br />

				   <div class="col">  <asp:TextBox ID="password"   cssclass="textbox" runat="server" placeholder="Password"  ></asp:TextBox>              <span class="focus-border"></span></div><br />

				   
			   <div class="col">  <asp:TextBox ID="phone"      cssclass="textbox" runat="server" placeholder="Phone"  ></asp:TextBox>                     <span class="focus-border"></span></div><br />
			   <div class="col">  <asp:TextBox ID="address"    cssclass="textbox" runat="server" placeholder="Address"  ></asp:TextBox>                 <span class="focus-border"></span></div><br />
               <div class="col">  <asp:TextBox ID="cnic"       CssClass ="textbox" runat="server" placeholder="Cnic"  ></asp:TextBox>                       <span class="focus-border"></span></div><br />
		       <div class="col">  <asp:TextBox ID="dob"       textmode="Date"    CssClass="textbox" runat="server" placeholder="Date of birth"></asp:TextBox>                 <span class="focus-border"></span></div><br />

				   

               </div>       
			
				   
			  <div class="centeral"> <asp:Label class="text" ID="Label1" runat="server" Text="Male  : "></asp:Label>
			  <asp:RadioButton  ID="R1" OnCheckedChanged="RadioButton_checked"  AutoPostBack="True" runat="server" /><asp:Label class="text" ID="Label2" runat="server" Text="Female  : "></asp:Label>
			  <asp:RadioButton  ID="R2" OnCheckedChanged="RadioButton_checked"  AutoPostBack="True" runat="server" /></div>
			
			   <br />

              <div class="centeral"> <asp:DropDownList ID="Accounttype" CssClass="text rcorners1"  runat="server" Height="30px" Width="232px" AutoPostBack="true">
			  <asp:ListItem Text="Register as" Value="0"></asp:ListItem>
              <asp:ListItem Text="Customer" Value="2"></asp:ListItem>
              <asp:ListItem Text="Worker" Value="3"></asp:ListItem>
              </asp:DropDownList></div><br />   


		      <div class="centeral"> <asp:Button ID="Register" CssClass="button1" runat="server" Text="Register" Width="268px" Height="40px" OnClick="Register_Click"/>  </div>
			 

                
               <br />
           
       </div>
    </form>
</body>



</html>