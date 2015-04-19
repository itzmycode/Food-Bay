<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="OrderFood.aspx.cs" Inherits="FoodBay.OrderFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="repeaterOrderFood" runat="server">
        <ItemTemplate>
            <div class="box box1 ">
                <a href="OrderFood_Main.aspx?cityName=<%#Eval("CityName") %>">
                    <h2><%#Eval("CityName") %></h2>
                </a>
            </div>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <div class="box box3">
                 <a href="OrderFood_Main.aspx?cityName=<%#Eval("CityName") %>">
                    <h2><%#Eval("CityName") %></h2>
                </a>
            </div>
        </AlternatingItemTemplate>
    </asp:Repeater>
</asp:Content>
