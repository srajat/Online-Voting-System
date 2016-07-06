<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Matdaan - Contacts</title>
    <link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,200,500,600,700' rel='stylesheet' type='text/css' />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css" />
    <link href="Content/material-cards.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
    <style>
        img {
            vertical-align: middle;
        }
        .img-responsive,
        .thumbnail > img,
        .thumbnail a > img,
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
        display: block;
        max-width: 100%;
        height: auto;
        }
        .img-rounded {
            border-radius: 6px;
        }
        .img-thumbnail {
            display: inline-block;
            max-width: 100%;
            height: auto;
            padding: 4px;
            line-height: 1.42857143;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            -webkit-transition: all .2s ease-in-out;
            -o-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
        }
        .img-circle {
            border-radius: 50%;
        }
    </style>
</head>
<body>
    <!--Nav bar-->
    <form runat="server">
    <nav class="teal" role="navigation">
        <div class="nav-wrapper container">
            <a id="logo-container" href="Default.aspx" class="brand-logo">MATDAAN</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="Elections.aspx">ELECTIONS</a></li>
                <li><a href="Register.aspx">REGISTER</a></li>
                <li><a href="Contact.aspx">CONTACT</a></li>
                <li style="text-transform:uppercase;">
                    <asp:LoginName ID="LoginName1" runat="server" />
                </li>
                <li style="text-transform:uppercase;">
                    <asp:LoginStatus ID="LoginStatus1" runat="server"/>
                </li>
            </ul>

            <ul id="nav-mobile" class="side-nav">
                <li><a href="Elections.aspx">ELECTIONS</a></li>
                <li><a href="Register.aspx">REGISTER</a></li>
                <li><a href="Contact.aspx">CONTACT</a></li>
                <li style="text-transform:uppercase;">
                    <asp:LoginStatus ID="LoginStatus2" runat="server"/>
                </li>
            </ul>
            <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
        </div>
    </nav>
        </form>
    <!--Nav bar End-->

    <div class="container">
        <div class="row">
            <div class="col s6">
                <!--First article-->
                <br />
                <article class="material-card Red">
                <h2>
                    <span>Rajat Saxena</span>
                    <strong>
                        <i class="fa fa-fw fa-star"></i>
                        IIT2014503
                    </strong>
                </h2>
                <div class="mc-content">
                    <div class="img-container">
                        <img src="images/rajat.jpg" class="img-responsive"/>
                    </div>
                    <div class="mc-description">
                        
                    </div>
                </div>
                <a class="mc-btn-action">
                    <i class="fa fa-bars"></i>
                </a>
                <div class="mc-footer">
                    <h4>
                        Social
                    </h4>
                    <a class="fa fa-fw fa-facebook" href="https://www.facebook.com/profile.php?id=100007653047635"></a>
                    <a class="fa fa-fw fa-twitter" href="https://twitter.com/rajatssaxena"></a>
                    <a class="fa fa-fw fa-linkedin" href="https://www.linkedin.com/in/rajat-saxena-850481109?trk=hp-identity-name"></a>
                    <a class="fa fa-fw fa-github" href="https://github.com/srajat"></a>
                </div>
            </article>
                <!--First article End-->
            </div>

            <div class="col s6">
                <br />
                <article class="material-card Pink">
                <h2>
                    <span>Abhinav Mishra</span>
                    <strong>
                        <i class="fa fa-fw fa-star"></i>
                        IIM2014003
                    </strong>
                </h2>
                <div class="mc-content">
                    <div class="img-container">
                        <img class="img-responsive" src="images/abhinav.jpg" />
                    </div>
                    <div class="mc-description">
                        
                    </div>
                </div>
                <a class="mc-btn-action">
                    <i class="fa fa-bars"></i>
                </a>
                <div class="mc-footer">
                    <h4>
                        Social
                    </h4>
                    <a class="fa fa-fw fa-facebook" href="https://www.facebook.com/abhinav.mishra.545402?fref=ts"></a>
                    <a class="fa fa-fw fa-twitter"></a>
                    <a class="fa fa-fw fa-linkedin"></a>
                    <a class="fa fa-fw fa-github"></a>
                </div>
            </article>
            </div>

            
        </div>
        <div class="row">
            <div class="col s6">
                <br />
                <article class="material-card Purple">
                <h2>
                    <span>Satyam Poddar</span>
                    <strong>
                        <i class="fa fa-fw fa-star"></i>
                        IIT2014505
                    </strong>
                </h2>
                <div class="mc-content">
                    <div class="img-container">
                        <img class="img-responsive" src="images/sattu.jpg" />
                    </div>
                    <div class="mc-description">
                        
                    </div>
                </div>
                <a class="mc-btn-action">
                    <i class="fa fa-bars"></i>
                </a>
                <div class="mc-footer">
                    <h4>
                        Social
                    </h4>
                    <a class="fa fa-fw fa-facebook" href="https://www.facebook.com/satyam.poddar.33?fref=ts"></a>
                    <a class="fa fa-fw fa-twitter"></a>
                    <a class="fa fa-fw fa-linkedin"></a>
                    <a class="fa fa-fw fa-github" href="https://github.com/flare505"></a>
                </div>
            </article>
            </div>
            <div class="col s6">
                <br />
                <article class="material-card Deep-Purple">
                <h2>
                    <span>Pranav Pandey</span>
                    <strong>
                        <i class="fa fa-fw fa-star"></i>
                        BIM2014501
                    </strong>
                </h2>
                <div class="mc-content">
                    <div class="img-container">
                        <img class="img-responsive" src="images/pranav.jpg">
                    </div>
                    <div class="mc-description">
                       
                    </div>
                </div>
                <a class="mc-btn-action">
                    <i class="fa fa-bars"></i>
                </a>
                <div class="mc-footer">
                    <h4>
                        Social
                    </h4>
                    <a class="fa fa-fw fa-facebook" href="https://www.facebook.com/pranav1108?fref=ts"></a>
                    <a class="fa fa-fw fa-twitter"></a>
                    <a class="fa fa-fw fa-linkedin"></a>
                    <a class="fa fa-fw fa-google-plus"></a>
                </div>
            </article>
            </div>
        </div>
    </div>

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
    <%--<script src="Scripts/bootstrap.min.js" type="text/javascript"></script>--%>
    <script>
    $(function() {
        $('.material-card > .mc-btn-action').click(function () {
            var card = $(this).parent('.material-card');
            var icon = $(this).children('i');
            icon.addClass('fa-spin-fast');
            if (card.hasClass('mc-active')) {
                card.removeClass('mc-active');
                window.setTimeout(function() {
                    icon
                        .removeClass('fa-arrow-left')
                        .removeClass('fa-spin-fast')
                        .addClass('fa-bars');
                }, 800);
            } else {
                card.addClass('mc-active');
                window.setTimeout(function() {
                    icon
                        .removeClass('fa-bars')
                        .removeClass('fa-spin-fast')
                        .addClass('fa-arrow-left');
                }, 800);
            }
        });
    });
</script>
</body>
</html>
