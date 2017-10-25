<%@ Page Title="Diets" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Diet.aspx.cs" Inherits="Thin_to_Win.Diet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <a href='/Images/Diet/<%# Eval("ImageFile") %>' 
                                alt='<%# Eval("DietName") %>' >
                            <img src='/Images/Diet/<%# Eval("ImageFile") %>' 
                                alt='<%# Eval("DietName") %>' style="height:395px; width:279px"/></a>
                        <div class="caption text-center">
                            <h3><%# Eval("DietName") %></h3>
                            <p><b><br><%# Eval("Description") %></b></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" 
            ConnectionString='<%$ ConnectionStrings:MainDatabase %>' 
            SelectCommand="SELECT [DietName], [Description], [ImageFile] FROM [Diet] ORDER BY [DietName]">
        </asp:SqlDataSource>
    </div>


</asp:Content>
