<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="OrderFood_Main.aspx.cs" Inherits="FoodBay.OrderFood_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="orderPage_Container">

        <table>
            <tr>
                <td>City: 
                </td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" Enabled="false" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Chooose Location: 
                </td>
                <td>
                    <asp:DropDownList ID="ddlLocation" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlLocation_SelectedIndexChanged" AutoPostBack="true" CssClass="selectbox">
                        <asp:ListItem>-- Pick One --</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td>Choose Vendor
                </td>
                <td>
                    <asp:DropDownList ID="ddlVendor" runat="server" CssClass="selectbox" AppendDataBoundItems="true">
                        <asp:ListItem>-- Pick One --</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>

        </table>
    </div>
</asp:Content>
