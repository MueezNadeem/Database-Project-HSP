<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Hiring.aspx.cs" Theme="Master" Inherits="HSP.Hiring" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hiring</title>
</head>
<body cssclass="body">
    <form id="form1" runat="server">
        <div class="divi1">
            <div class="inside2">
              
           <asp:Image ID="Image1" ImageUrl="https://mytraveloguesl202171.files.wordpress.com/2022/04/company-logo-1.png?w=1024" runat="server" height="85px" Width="400px" />
            </div>
          </div>

         <div class="divi2">
          
             <div class="diviex">
                <asp:TextBox ID="WorkerID" Placeholder="Worker ID" runat="server"></asp:TextBox>
                <asp:TextBox ID="Service" Placeholder="Service" runat="server"></asp:TextBox>
                 <asp:TextBox ID="Charges" Placeholder="Charges Per Hours"  runat="server"></asp:TextBox>
                <asp:TextBox ID="Hours" Placeholder="Enter Hours Required"  runat="server"></asp:TextBox>
                 <asp:Button ID="Book" style="margin-left:16px;" CssClass="button-36" runat="server" Text="Book" height="25px" Width="150px"  OnClick ="Book_Clicked" />
                 </div>
                </div>
          


        <div class="divi2">
            <div class="inside3">
                  <asp:DropDownList cssclass="box" ID="DropDownList1" runat="server" AutoPostBack="true"   height="25px" Width="200px">
                      <asp:ListItem Text="Sort By" Value="0"></asp:ListItem>
                      <asp:ListItem Text="Rating Decs" Value="1"></asp:ListItem>
                      <asp:ListItem Text="Charges Asc" Value="2"></asp:ListItem>
                  </asp:DropDownList>
                <asp:Button ID="Button1" style="margin-left:16px;" CssClass="button-36" runat="server" Text="Filter" OnClick="DropDownList1_SelectedIndexChanged" height="25px" Width="200px" />
             </div>
        </div>
         <div class="divi3">
             <div class="inside" style="overflow-x:auto;width:90%;">
                 
           <asp:GridView CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass ="header" RowStyle-CssClass="rows" ID="GridView1" runat="server">
             <Columns>
                 <asp:TemplateField>
                     <ItemTemplate> <asp:CheckBox ID="chk" runat="server" AutoPostBack="True"  OnCheckedChanged="chk_CheckedChanged"/></ItemTemplate>
                 </asp:TemplateField>
             </Columns>
               </asp:GridView>    
                     
                 </div>
        </div>
       
    </form>
</body>
</html>
