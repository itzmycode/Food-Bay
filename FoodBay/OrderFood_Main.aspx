<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="OrderFood_Main.aspx.cs" Inherits="FoodBay.OrderFood_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="orderPage_Container">
        <div class="dVendorSelection">
            <table class="tblOrderPage" border="0">
                <tr>
                    <td>
                        <label for="City">City</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server" Enabled="false" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="Location">Choose Location</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlLocation" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlLocation_SelectedIndexChanged" AutoPostBack="true" CssClass="selectbox">
                            <asp:ListItem>-- Pick One --</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="Vendor">Choose Vendor</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlVendor" runat="server" CssClass="selectbox" AppendDataBoundItems="true">
                            <asp:ListItem>-- Pick One --</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>

            </table>
        </div>
        <div class="dVendorDetails">
            <table class="tblVendor" border="0">
                <tr>
                    <td>
                        <label for="VendorName">Vendor Name</label>
                    </td>
                    <td>
                        <asp:Label ID="lblVendorName" runat="server" Text="ISS"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="VendorLocation">Vendor Location</label>
                    </td>
                    <td>
                        <asp:Label ID="lblVendorLocation" runat="server" Text="MEPZ"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="PhoneNo">Phone No</label>
                    </td>
                    <td>
                        <asp:Label ID="lblPhoneNo" runat="server" Text="+911234567890"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div class="dItemDetails">
            Item Details Comes here
        </div>
        <div class="dPayment">
            <asp:Button ID="btnChoosePayment" runat="server" Text ="Choose Payment" CssClass="buttons" />
        </div>
    </div>
</asp:Content>
