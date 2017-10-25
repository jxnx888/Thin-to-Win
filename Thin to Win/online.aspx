<%@ Page Title="Store" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="online.aspx.cs" Inherits="Thin_to_Win.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="row">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <a href='/Order/<%# Eval("ProductID") %>'>
                            <img src='/Images/Products/<%# Eval("ImageFile") %>'style="width:300px; height:300px;" 
                                alt='<%# Eval("Name") %>' /></a>
                        <div class="caption">
                            <h3><%# Eval("Name") %></h3>
                            <p><b>Price: <%# Eval("UnitPrice", "{0:c}") %></b>
                            <br><br><%# Eval("LongDescription") %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" 
            ConnectionString='<%$ ConnectionStrings:MainDatabase %>' 
            SelectCommand="SELECT [ProductID], [Name], [LongDescription], 
            [UnitPrice], [ImageFile] FROM [Product] ORDER BY [Name]">
        </asp:SqlDataSource>
    </div>
</asp:Content>
