<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Thin_to_Win.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">

            <p><asp:Label ID="lblError" runat="server" EnableViewState="false" 
                        CssClass="text-danger"></asp:Label></p>

        <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="FirstName" CssClass="form-control"/>
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
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
                <asp:RegularExpressionValidator runat="server" ControlToValidate="Email" 
                    ErrorMessage="Enter a Valid Email Address" CssClass="text-danger"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" 
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>


        <%-- Connecting the Database --%>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MainDatabase %>" 
            SelectCommand="SELECT * FROM [Customer] ORDER BY [Email]" 

            InsertCommand="INSERT INTO [Customer] 
                ([Email], [LastName], [FirstName], [Age], [Gender], [Weight], [Height], [Password], [BMI], [Type]) 
                VALUES (@Email, @LastName, @FirstName, @Age, @Gender, @Weight, @Height, @Password, @BMI, @Type)">

            <InsertParameters>
                <asp:Parameter Name="Email" />
                <asp:Parameter Name="LastName" />
                <asp:Parameter Name="FirstName" />
                <asp:Parameter Name="Age" />
                <asp:Parameter Name="Gender" />
                <asp:Parameter Name="Weight" />
                <asp:Parameter Name="Height" />
                <asp:Parameter Name="Password" />
                <asp:Parameter Name="BMI" />
                <asp:Parameter Name="Type" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
