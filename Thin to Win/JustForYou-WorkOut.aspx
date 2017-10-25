<%@ Page Title="Your Workout" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JustForYou-WorkOut.aspx.cs" Inherits="Thin_to_Win.JustForYou_WorkOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="form-group">
         
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MainDatabase %>" 
                SelectCommand="Select * from Customer Where [Email] = @Email">
            </asp:SqlDataSource>
         <div class="col-sm-12 text-center">
            <h3>Welcome 
            <asp:Label ID="WelcomeFirst" runat="server" CssClass="text-info" Font-Size="XX-Large"></asp:Label> <asp:Label ID="WelcomeLast" runat="server" CssClass="text-info" Font-Size="XX-Large"></asp:Label> !
            </h3>
            <h3>Your BMI is: 
                <asp:Label ID="lblBMINum" runat="server"  style="color:#99cc00"></asp:Label></h3>
            <h3>Your BMI type: 
                <asp:Label ID="lblBMI" runat="server"  style="color:#99cc00"></asp:Label></h3>
        </div>
     </div>
    

    <div class="row">
        <div class="text-center">
        <h1>Your Recommended WorkOut</h1>
    </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="col-sm-4">
                    <div class="thumbnail">
                         <a href='/Images/WorkOut/<%# Eval("ImageFile") %>' 
                                alt='<%# Eval("WorkOutName") %>' >
       
                            <img src='/Images/WorkOut/<%# Eval("ImageFile") %>' 
                                alt='<%# Eval("WorkOutName") %>' style="height:395px; width:279px"/></a>
                        <div class="caption text-center">
                            <h3><%# Eval("WorkOutName") %></h3>
                            <p><b><br><%# Eval("Description") %></b></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" 
            ConnectionString='<%$ ConnectionStrings:MainDatabase %>' 
            SelectCommand="SELECT [ImageFile], [Description], [WorkOutName] FROM [Workout] WHERE ([Type] = @Type)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblBMI" Name="Type" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        
    </div>

</asp:Content>
