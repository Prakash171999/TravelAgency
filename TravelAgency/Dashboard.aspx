<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="TravelAgency._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="page-content-wrapper">                
            <!--Contents of the body goes here!-->
            <div class="container">
                <div class="row mb-3">
                    <!--First Card-->
                    <div class="col-xl-4 col-sm-6 py-4">
                        <div class="card bg-white text-white h-100">
                            <div class="card-body bg-danger">
                                <div class="rotate">
                                <i class="fa fa-users fa-4x"></i>
                                </div>
                                <h1 class="display-6">

                                </h1>
                                <h6 class="text-uppercase" style="margin-left:10px; margin-top:5px;">Staff</h6>
                                <a href="#" class="text-white">View Users</a>
                            </div>
                        </div>
                    </div>
                    <!--Second Card-->
                    <div class="col-xl-4 col-sm-6 py-4">
                        <div class="card text-white bg-success h-100">
                            <div class="card-body bg-success">
                                <div class="rotate">
                                    <i class="fa fa-upload fa-4x"></i>
                                </div>
                                <h6 class="text-uppercase">Uploads</h6>
                                <h1 class="display-6">
                                    <?php echo $upload_rows; ?>
                                </h1>
                                <a href="#" class="text-white ">View Uploads</a>
                            </div>
                        </div>
                    </div>
                    <!--Third Card-->
                    <div class="col-xl-4 col-sm-6 py-4">
                        <div class="font-light card text-white bg-primary h-100">
                            <div class="card-body bg-primary">
                                <div class="rotate">
                                    <i class="fa fa-list fa-4x"></i>
                                </div>
                                <h6 class="text-uppercase">Posts</h6>
                                <h1 class="display-6">
                                    <?php echo $content_rows; ?>
                                </h1>
                                <a href="#" class="text-white ">View Posts</a>
                            </div>
                        </div>
                    </div>
                    <!--Fourth Card-->
                    <div class="col-xl-4 col-sm-6 py-4">
                        <div class="font-light card text-white bg-warning h-100">
                            <div class="card-body bg-important">
                                <div class="rotate">
                                    <i class="fa fa-list fa-4x"></i>
                                </div>
                                <h6 class="text-uppercase">Package</h6>
                                <h1 class="display-6">
                                    <?php echo $content_rows; ?>
                                </h1>
                                <a href="#" class="text-white ">View Package</a>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
        </div>

</asp:Content>
