<%@ Page Title="Workouts" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WorkOut.aspx.cs" Inherits="Thin_to_Win.WorkOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="row">
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
            SelectCommand="SELECT [WorkOutName], [Description], [ImageFile] FROM [Workout] ORDER BY [WorkOutName]">
        </asp:SqlDataSource>
    </div>

</asp:Content>
