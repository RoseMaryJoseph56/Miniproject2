<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="SeatDetails.aspx.cs" Inherits="webonline.SeatDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="js/jquery-latest.js"></script>
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <style>
        #holder {
            height: 500px;
            width: 500px;
            background-color:white;
            border: 1px solid #A4A4A4;
            margin-left: 10px;
        }

        #place {
            position: relative;
            margin: 20px;
        }

            #place a {
                font-size: 0.6em;
                color: white;
            }

            #place li {
                list-style: none outside none;
                position: absolute;
            }

                #place li:hover {
                    background-color: yellow;
                }

            #place .seat {
                background: url("img/newAvailableSeat.png") no-repeat scroll 0 0 transparent;
                height: 33px;
                width: 33px;
                display: block;
            }

            #place .selectedSeat {
                background-image: url("img/bookedseats.png");
            }

            #place .selectingSeat {
                background-image: url("img/newSelectedSeat.png");
            }

            #place .ladiesSeat {
                background-image: url("img/ladiesSeat.png");
            }

            #place .notAvailableSeats {
                background-image: url("img/notAvailableSeat.png");
            }

            #place .BlockedSeats {
                background-image: url("img/BlockedSeat.png");
            }

            #place .AvailableSeats {
                background-image: url("img/newAvailableSeat.png");
            }

            #place .row-3, #place .row-4 {
                margin-top: 10px;
            }

        #seatDescription li {
            vertical-align: middle;
            list-style: none outside none;
            padding-left: 35px;
            height: 35px;
            float: left;
        }

        .details {
            display: none;
            visibility: hidden;
            background-color: #eeeeee;
            font-family: Verdana;
        }

        .inlineList {
            display:flexbox;
            flex-direction: row;
            /* Below sets up your display method: flex-start|flex-end|space-between|space-around */
            justify-content: flex-start;
            /* Below removes bullets and cleans white-space */
            list-style: none;
            padding: 0;
            /* Bonus: forces no word-wrap */
            white-space: nowrap;
        }

        .LiStstyle {
            Width: 50px;
            Height: 50px;
        }

        .emptySeat {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:8%">
         <div class="col-lg-2"><a href="#" style="padding: 5px;" class="btn btn-success" id="hrefBackUrl" runat="server" title="Back To Search List"><i class="fa fa-backward"></i>&nbsp;Back To Search List</a></div>
            <div class="col-lg-4" style="overflow:auto">
                        <div class="panel panel-danger">
                            <div class="panel panel-heading">
                                <div class="panel panel-title">
                                    <h2>Journey  Details </h2>
                                </div>
                            </div>
                            <div class="panel-body">
                                Onward Journey
                        From
                        <asp:Label ID="lblForm" runat="server" Font-Bold="true"></asp:Label>
                                To 
                        <asp:Label ID="lblTo" runat="server" Font-Bold="true" /><br />
                                on
                        <asp:Label ID="lbldate" runat="server" Font-Bold="true"></asp:Label><br />
                                <br />
                                <div class="col-lg-12">
                                    <table class="table-bordered">
                                        <tr>
                                           
                                            
                                                <%-- <label id="lblSelectedSeat"></label>--%>
                                
                                            <asp:HiddenField ID="hdnSeatCount" runat="server" ClientIDMode="Static" />
                                            
                                            <asp:HiddenField ID="hdnFare" runat="server" ClientIDMode="Static" />
                                            <asp:HiddenField ID="hdnTotalFare" runat="server" ClientIDMode="Static" />
                                        </tr>
                                         <tr>
                                            <td>Per Seat Fare</td>
                                            <td><span><i class="fa fa-rupee"></i></span>
                                                <asp:Label ID="lblPerSeat" runat="server" ClientIDMode="Static" Font-Bold="true" Text="0.00" />
                                                </td>
                                                <%-- <label id="lbltotal">0.00</label></td>--%>
                                        </tr>
                                        <tr>
                                            <td>Amount</td>
                                            <td><span><i class="fa fa-rupee"></i></span>
                                                <asp:Label ID="lbltotal" runat="server" ClientIDMode="Static" Font-Bold="true" Text="0.00" />
                                                </td>
                                                <%-- <label id="lbltotal">0.00</label></td>--%>
                                        </tr>
                                    </table>
                                </div>
                                <div style="margin-top: 5%" class="col-lg-12">
                                    <asp:Label ID="lblBoardingPoint" runat="server" Font-Bold="true" Text="Boarding Points"></asp:Label>
                                    <asp:DropDownList ID="ddlBoardingpoints" runat="server" ClientIDMode="Static" Style="width: 100%"></asp:DropDownList><br />
                                    <br />
                                    <asp:Label ID="lblDroppingPoints" runat="server" Font-Bold="true" Text="Dropping Points" Style="display: none"></asp:Label>
                                    <asp:DropDownList ID="ddlDroppingpoints" runat="server" Style="display: none; width: 70%">
                                        <asp:ListItem Value="0" Text="Select Dropping Point"></asp:ListItem>
                                    </asp:DropDownList><br />
                                    <br />
                                    <asp:Button ID="btnPayment" runat="server" Text="Make Payment" CssClass="btn btn-danger" OnClick="btnPayment_Click" ClientIDMode="Static" />
                                </div>
                            </div>
                        </div>
                    </div>


</asp:Content>
