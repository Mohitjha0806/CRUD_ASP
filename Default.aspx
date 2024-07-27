<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

     <div class="container-fluid bg-danger-subtle">
         <div class="container py-5 ">
             <div class="row">
                 <div class="col-md-2">
                     <asp:Label Text="First Name" ID="lbl_fname" CssClass="form-label fw-semibold " runat="server" />
                 </div>
                 <div class="col-md-10">
                     <asp:TextBox runat="server" ID="txt_fname" CssClass="form-control bg-light-subtle fw-semibold border-3 border-primary-subtle" Placeholder="First Name" />
                 </div>
             </div>

             <div class="row mt-3">
                 <div class="col-md-2">
                     <asp:Label Text="last Name" ID="lbl_lname" CssClass="form-label fw-semibold " runat="server" />
                 </div>
                 <div class="col-md-10">
                     <asp:TextBox runat="server" ID="txt_lname" CssClass="form-control fw-semibold border-3 border-primary-subtle" Placeholder="Last Name" />
                 </div>
             </div>

             <div class="row mt-3">
                 <div class="col-md-2">
                     <asp:Label Text="Age" ID="lbl_age" CssClass="form-label fw-semibold " runat="server" />
                 </div>
                 <div class="col-md-10">
                     <asp:TextBox runat="server" ID="txt_age" CssClass="form-control fw-semibold border-3 border-primary-subtle" Placeholder="Age" />
                 </div>
             </div>

             <div class="row mt-3">
                 <div class="col-md-2">
                     <asp:Label Text="Salary" ID="lbl_salary" CssClass="form-label fw-semibold " runat="server" />
                 </div>
                 <div class="col-md-10">
                     <asp:TextBox runat="server" ID="txt_salary" CssClass="form-control fw-semibold border-3 border-primary-subtle" Placeholder="Salary" />
                 </div>
             </div>

             <div class="row mt-3">
                 <div class="col-md-2">
                     <asp:Label Text="Phone" ID="lbl_phone" CssClass="form-label fw-semibold " runat="server" />
                 </div>
                 <div class="col-md-10">
                     <asp:TextBox runat="server" TextMode="Phone" ID="txt_phone" CssClass="form-control fw-semibold border-3 border-primary-subtle" Placeholder="Phone Number" />
                 </div>
             </div>

             <div class="row mt-5 text-center d-flex justify-content-center ">
                 <div class="col-md-3 ">
                     <asp:Button Text="Submit" ID="submitBtn" CssClass="btn btn-success py-2 px-5" runat="server" OnClick="submitBtn_Click" AutoPostBack="true" />
                     <asp:Button Text="Clear" ID="clearBtn" CssClass="btn btn-danger py-2 px-4" runat="server" />
                 </div>
             </div>
             <asp:Label ID="lblmsg" runat="server" />
         </div>
         <div class="container py-5 ">
             <asp:GridView CssClass="table table-info table-striped table-hover border-2" ID="gv_workerGrid" runat="server" AutoGenerateColumns="false" DataKeyNames="ID"

                 OnRowDeleting="gv_workerGrid_RowDeleting"
                 OnRowEditing="gv_workerGrid_RowEditing"
                 OnRowCancelingEdit="gv_workerGrid_RowCancelingEdit"
                 OnRowUpdating="gv_workerGrid_RowUpdating" >
                 <Columns>
                     <asp:BoundField HeaderText="Worker Id" Visible="false" DataField="ID" />

                     <asp:TemplateField HeaderText="First Name">
                         <ItemTemplate>
                             <asp:Label Text='<%# Eval("FIRST_NAME") %>' runat="server" />
                         </ItemTemplate>
                         <EditItemTemplate>
                             <asp:TextBox ID="txtB_fname" runat="server" Text='<%# Bind("FIRST_NAME") %>' />
                         </EditItemTemplate>
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Last Name">
                         <ItemTemplate>
                             <asp:Label Text='<%# Eval("LAST_NAME") %>' runat="server" />
                         </ItemTemplate>
                         <EditItemTemplate>
                             <asp:TextBox runat="server" ID="txtB_lname" Text='<%# Bind("LAST_NAME") %>' />
                         </EditItemTemplate>

                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="AGE">
                         <ItemTemplate>
                             <asp:Label Text='<%# Eval("AGE") %>' runat="server" />
                         </ItemTemplate>
                         <EditItemTemplate>
                             <asp:TextBox runat="server" ID="txtB_age" Text='<%# Bind("AGE") %>' />
                         </EditItemTemplate>
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="SALARY">
                         <ItemTemplate>
                             <asp:Label Text='<%# Eval("SALARY") %>' runat="server" />
                         </ItemTemplate>
                         <EditItemTemplate>
                             <asp:TextBox runat="server" ID="txtB_salary" Text='<%# Bind("SALARY") %>' />
                         </EditItemTemplate>
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Phone Number">
                         <ItemTemplate>
                             <asp:Label Text='<%# Eval("PHONE") %>' runat="server" />
                         </ItemTemplate>
                         <EditItemTemplate>
                             <asp:TextBox runat="server" ID="txtB_phone" Text='<%# Bind("PHONE") %>' />
                         </EditItemTemplate>
                     </asp:TemplateField>

                     <asp:CommandField ShowDeleteButton="true" ControlStyle-CssClass="btn btn-danger" HeaderText="Remove Record" />
                     <asp:CommandField ShowEditButton="true" ControlStyle-CssClass="btn btn-warning" HeaderText="Update Record" />
                 </Columns>
             </asp:GridView>
         </div>
     </div>

 </form>
    <script src="bootstrap.bundle.min.js"></script>
</body>
</html>
