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

                <div class="row mt-5">
                    <div class="col-md-3">
                        <asp:Button Text="Submit" CssClass="btn btn-success py-2 px-5" runat="server" />
                        <asp:Button Text="Clear" CssClass="btn btn-danger py-2 px-4" runat="server" />
                    </div>

                </div>
            </div>
        </div>

    </form>
    <script src="bootstrap.bundle.min.js"></script>
</body>
</html>
