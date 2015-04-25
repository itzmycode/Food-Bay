<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="OrderFood_Main.aspx.cs" Inherits="FoodBay.OrderFood_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="orderPage_Container">
        <div class="runningText">
            <marquee behavior="alternate">Order once placed cannot be refunded at any circumstances.</marquee>
        </div>
        <div class="dVendorSelection">
            <table class="tblOrderPage" border="0">
                <tr>
                    <td class="">
                        <label for="City">Choose Your City</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCity" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" CssClass="selectbox">
                            <asp:ListItem>-- Pick One --</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <label for="Location">Choose Location</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlLocation" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlLocation_SelectedIndexChanged" AutoPostBack="true" CssClass="selectbox">
                            <asp:ListItem>-- Pick One --</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td class="">
                        <label for="Vendor">Choose Vendor</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlVendor" runat="server" CssClass="selectbox" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlVendor_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem>-- Pick One --</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>

            </table>
        </div>
        <div class="dVendorDetails">
            <table class="tblVendor" id="tblVendorDetails" runat="server" visible="false">
                <tr>
                    <td class="tdHeader">
                        <label for="VendorName">Vendor Name</label>
                    </td>
                    <td>
                        <asp:Label ID="lblVendorName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tdHeader">
                        <label for="VendorLocation">Vendor Location</label>
                    </td>
                    <td>
                        <asp:Label ID="lblVendorLocation" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tdHeader">
                        <label for="VendorPOC">Vendor POC</label>
                    </td>
                    <td>
                        <asp:Label ID="lblVendorPOC" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tdHeader">
                        <label for="PhoneNo">Phone No</label>
                    </td>
                    <td>
                        <asp:Label ID="lblPhoneNo" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tdHeader">
                        <label for="OpenTime">Open Time</label>
                    </td>
                    <td>
                        <asp:Label ID="lblOpenTime" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tdHeader">
                        <label for="CloseTime">Close Time</label>
                    </td>
                    <td>
                        <asp:Label ID="lblCloseTime" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tdHeader">
                        <label for="WeekendsAvailable">Weekends Available</label>
                    </td>
                    <td>
                        <asp:Label ID="lblWeekEnd" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div class="dButtons">
            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="buttons reset" OnClick="btnReset_Click" />
        </div>
        <div class="dItemDetails" id="dItemDetails" runat="server" visible="false">
            <asp:Repeater ID="rptFoodItems" runat="server">
                <ItemTemplate>
                    <div class="detail">
                        <table class="tblItems">
                            <tr>
                                <td class="tdHeader">
                                    <label>Food Item</label></td>
                                <td><%# DataBinder.Eval(Container.DataItem,"FoodItemName") %></td>
                            </tr>
                            <tr>
                                <td class="tdHeader">
                                    <label>Price</label></td>
                                <td><%# DataBinder.Eval(Container.DataItem,"FoodItemPrice") %></td>
                            </tr>
                            <tr>
                                <td class="tdHeader">
                                    <label>
                                        Quantity</label></td>
                                <td>
                                    <input type='image' src="Images/Minus.png" class='qtyminus' field='<%# DataBinder.Eval(Container.DataItem,"FoodItemId") %>' />
                                    <input type='text' name='<%# DataBinder.Eval(Container.DataItem,"FoodItemId") %>' value='0' class='qty' id="<%# DataBinder.Eval(Container.DataItem,"FoodItemId") %>" />

                                    <input type='image' src="Images/Plus.png" class='qtyplus' field='<%# DataBinder.Eval(Container.DataItem,"FoodItemId") %>' />
                                </td>
                            </tr>
                        </table>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="dPayment" id="dPayment" runat="server" visible="false">
            <asp:Button ID="btnChoosePayment" runat="server" Text="Choose Payment" CssClass="buttons" />
        </div>
    </div>
    <script type="text/javascript">
        var prm = Sys.WebForms.PageRequestManager.getInstance();

        prm.add_endRequest(function () {
            debugger;
            $('.qtyplus').click(function (e) {
                // Stop acting like a button
                e.preventDefault();
                // Get the field name
                fieldName = $(this).attr('field');
                // Get its current value
                var currentVal = parseInt($('input[name=' + fieldName + ']').val());
                // If is not undefined
                if (!isNaN(currentVal)) {
                    // Increment
                    $('input[name=' + fieldName + ']').val(currentVal + 1);
                } else {
                    // Otherwise put a 0 there
                    $('input[name=' + fieldName + ']').val(0);
                }
            });
            // This button will decrement the value till 0
            $(".qtyminus").click(function (e) {
                // Stop acting like a button
                e.preventDefault();
                // Get the field name
                fieldName = $(this).attr('field');
                // Get its current value
                var currentVal = parseInt($('input[name=' + fieldName + ']').val());
                // If it isn't undefined or its greater than 0
                if (!isNaN(currentVal) && currentVal > 0) {
                    // Decrement one
                    $('input[name=' + fieldName + ']').val(currentVal - 1);
                } else {
                    // Otherwise put a 0 there
                    $('input[name=' + fieldName + ']').val(0);
                }
            });

        });


    </script>
</asp:Content>
