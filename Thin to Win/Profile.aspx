<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Thin_to_Win._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <h2><%: Title %>.</h2>
   <div class="form-horizontal">
        <h4>Manage Your Profile!</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">

            <p><asp:Label ID="lblError" runat="server" EnableViewState="false" 
                        CssClass="text-danger"></asp:Label></p>
            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MainDatabase %>" 
                SelectCommand="Select * from Customer Where [Email] = @Email"
                UpdateCommand="UPDATE [Customer] 
                       SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Height] = @Height,
                       [Gender] = @Gender, [Weight] = @Weight , [BMI] = @BMI , [Type] = @Type
                        WHERE [Email] = @Email">
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" />
                    <asp:Parameter Name="LastName" />
                    <asp:Parameter Name="Age" />
                    <asp:Parameter Name="Height" />
                    <asp:Parameter Name="Gender" />
                    <asp:Parameter Name="Weight" />
                    <asp:Parameter Name="Type" />
                    <asp:Parameter Name="BMI" />

                </UpdateParameters>
            </asp:SqlDataSource>


        <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" ></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                CssClass="text-danger" ErrorMessage="First Name field is required." />
        </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="LastName" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                    CssClass="text-danger" ErrorMessage="Last Name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Age" CssClass="col-md-2 control-label">Age</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Age" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Age"
                    CssClass="text-danger" ErrorMessage="Age field is required." />

            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Height" CssClass="col-md-2 control-label">Height (In Inches)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Height" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Age"
                    CssClass="text-danger" ErrorMessage="Height field is required." />

            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Weight" CssClass="col-md-2 control-label">Weight (lbs)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Weight" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Weight"
                    CssClass="text-danger" ErrorMessage="Height field is required." />
                <asp:RangeValidator runat="server" ControlToValidate="Weight" CssClass="text-danger"
                    ErrorMessage="Enter a Valid Weight" MaximumValue="400" MinimumValue="0"></asp:RangeValidator>

            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Gender" CssClass="col-md-2 control-label">Gender</asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="Gender" runat="server" CssClass="form-control">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Gender"
                    CssClass="text-danger" ErrorMessage="Gender field is required." />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Save" CssClass="btn btn-default" OnClick="Update_Click" />
            </div>
        </div>

    </div>

</asp:Content>
