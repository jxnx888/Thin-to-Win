<%@ Page Title="BMI Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Thin_To_Win.Calculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<main style="background-color:white">
    <div class="well"> 
        <h1 class="text-center">BMI Calcualtor</h1>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summary text-danger" HeaderText="Please re-enter the following entries:" />


    <div class="form-group">
        <asp:Label  ID="lblAge" runat="server" Cssclass="control-label col-md-5">Age: </asp:Label>
        <div class="col-md-2">
            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <asp:RequiredFieldValidator ID="rfvAge" runat="server" ErrorMessage="Age" CssClass="text-danger" Display="Dynamic" ControlToValidate="txtAge" >* Required</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge"  CssClass="text-danger" Type="Integer" MinimumValue="12" MaximumValue="110"  ErrorMessage="Age must be between 12 and 110"></asp:RangeValidator>
        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="lblGender" runat="server" CssClass="control-label col-md-5" >Gender: </asp:Label>
        <div class="col-md-3">
            <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Vertical"  CssClass="col-md-3" >
                <asp:ListItem Value="Female">Female</asp:ListItem>
                <asp:ListItem Value="Male">Male</asp:ListItem>
            </asp:RadioButtonList>

        </div>
    </div>

    <div class="form-group">
        <asp:Label ID="lblWeight" runat="server" Cssclass="control-label col-md-5">Weight: </asp:Label>
        <div class="col-md-2">
            <asp:TextBox ID="txtWeight" runat="server" CssClass="form-control" TextMode="Number" PlaceHolder="lb" ></asp:TextBox>
        </div>
        <div class="col-md-3">
            <asp:RequiredFieldValidator ID="rfvWeight" runat="server" ErrorMessage="Weight" CssClass="text-danger" Display="Dynamic" ControlToValidate="txtWeight" >* Required</asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="form-group row">
        <asp:Label ID="lblHeightFt" runat="server" Cssclass="control-label col-md-5" Text="Label">Height: </asp:Label>
        <div class="col-md-1">
            <asp:TextBox ID="txtHeightFt" runat="server" Cssclass="form-control" TextMode="Number" PlaceHolder="ft"></asp:TextBox>
        </div>
        <div class="col-md-1">
            <asp:TextBox ID="txtHeightIn" runat="server" Cssclass="form-control" TextMode="Number" PlaceHolder="in"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="rfvHeightFt" runat="server" ErrorMessage="Height in Ft" CssClass="text-danger" Display="Dynamic" ControlToValidate="txtHeightFt">* Required</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvHeightIn" runat="server" ErrorMessage="Height in In" CssClass="text-danger" Display="Dynamic" ControlToValidate="txtHeightIn">* Required</asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="well text-center">
        <h3>Your BMI is: </h3>
        <div class="form-group">
            <div class="col-md-12">
                <asp:Label ID="lblYourBMI" runat="server" Font-Size="XX-Large" Font-Bold="True" ForeColor="#99CC00"></asp:Label>
            </div>
            <div class="col-md-12">           
                <asp:Label ID="lblCategory" runat="server" Font-Size="X-Large" Font-Bold="True" ForeColor="#99CC00"></asp:Label>
            </div>
         </div>    
    </div>

    <div class="form-group">
        <div class="col-md-offset-5 col-md-6">
            <asp:Button ID="btnCalcualte" runat="server" Text="Calculate" OnClick="btnCalcualte_Click" CssClass="btn btn-success btn-lg" />
  
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"  CssClass="btn btn-success btn-lg" CausesValidation="false"/>
        </div>
    </div>
</main>

</asp:Content>
