<%-- 
    Document   : HomePage
    Created on : Oct 26, 2020, 11:13:20 PM
    Author     : HP
--%>

<%@page import="java.nio.file.Path"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.apache.catalina.tribes.util.Arrays"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.List"%>
<%@page import="model.Mv_Product"%>
<%@page import="module.Mv_Product_Module"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css-homepage/homepage.css">
        <link rel="stylesheet" href="css-homepage/end-footer.css">
        <link rel='stylesheet' href="css-homepage/homePageJS.css">
        <link rel='stylesheet' href="css-homepage/extra-nav.css">
        <link rel='stylesheet' href="css-homepage/motor-list.css">
        <link rel='stylesheet' href="css-homepage/assistant.css">
        <link rel='stylesheet' href="css-homepage/search-form.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
        <title>MV Homepage</title>
    </head>
    <body>
        <div class="header-bg">
            <div class="header-bg-img"></div>
        </div>

        <div class="motor-list-form" id="motor-list-form">
            <ol class="motor-menu-list" id="motor-menu-list">
                <li class="motor-menu-close" onclick="closeMenuMotorList()">
                    <p></p>
                </li>
                <li class="motor-menu" onclick="itemMenuChosen(0);">
                    <p>RUSH</p>
                </li>
                <li class="motor-menu" onclick="itemMenuChosen(1);">
                    <p>BRUTALE</p>
                </li>
                <li class="motor-menu" onclick="itemMenuChosen(2);">
                    <p>DRAGSTER</p>
                </li>
                <li class="motor-menu" onclick="itemMenuChosen(3);">
                    <p>TURISMO VELOCE</p>
                </li>
                <li class="motor-menu" onclick="itemMenuChosen(4);">
                    <p>F3</p>
                </li>
                <li class="motor-menu" onclick="itemMenuChosen(5);">
                    <p>SUPERVELOCE</p>
                </li>
                <li class="motor-menu" onclick="itemMenuChosen(6);">
                    <p>ROSSO</p>
                </li>
            </ol>
            <div class="bg-motor-list">
                <div class="motor-list-container" id="motor-list-container">
                    <div class="motor-list-layout" style="background-color: transparent; opacity: 1;">
                        <div class="motor-list-grid-container">
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(0);"
                               onmouseout="removeBlurOthers(0);">
                                <div class="grid-img-tag" style="background-image: url(./img/rush1000.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>RUSH</h3>
                                        <p>RUSH 1000</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>4</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>988<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>208<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <!-- <div class="motor-tag"></div>
                                    <div class="motor-tag"></div>
                                    <div class="motor-tag"></div> -->
                        </div>
                    </div>
                    <div class="motor-list-layout" style="background-color: transparent; opacity: 0;">
                        <div class="motor-list-grid-container">
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(1);"
                               onmouseout="removeBlurOthers(1);">
                                <div class="grid-img-tag" style="background-image: url(./img/1000SerieOro.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>BRUTALE</h3>
                                        <p>1000 SERIE ORO</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>4</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>988<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>208<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(2);"
                               onmouseout="removeBlurOthers(2);">
                                <div class="grid-img-tag" style="background-image: url(./img/1000rr.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>BRUTALE</h3>
                                        <p>1000 RR</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>4</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>998<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>208<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(3);"
                               onmouseout="removeBlurOthers(3);">
                                <div class="grid-img-tag" style="background-image: url(./img/800rrscs.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>BRUTALE</h3>
                                        <p>800 RR SCS</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>140<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(4);"
                               onmouseout="removeBlurOthers(4);">
                                <div class="grid-img-tag" style="background-image: url(./img/800rr.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>BRUTALE</h3>
                                        <p>800 RR </p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>Cylinders</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>140<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(5);"
                               onmouseout="removeBlurOthers(5);">
                                <div class="grid-img-tag" style="background-image: url(./img/800rosso.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>BRUTALE</h3>
                                        <p>800 ROSSO</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>Cylinders</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>110<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="motor-list-layout" style="background-color: transparent; opacity: 0;">
                        <div class="motor-list-grid-container">
                            <a href='Dragter800RCS.html' class="motor-tag" onmouseover="hoverBlurOthers(6);"
                               onmouseout="removeBlurOthers(6);">
                                <div class="grid-img-tag" style="background-image: url(./img/800rrscs_dragster.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>DRAGSTER</h3>
                                        <p>800 RR SCS</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>Cylinders</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>140<snap>HP</snap>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(7);"
                               onmouseout="removeBlurOthers(7);">
                                <div class="grid-img-tag" style="background-image: url(./img/800rosso.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>DRAGSTER</h3>
                                        <p>800 ROSSO</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>Cylinders</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>998<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>212<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>

                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(8);"
                               onmouseout="removeBlurOthers(8);">
                                <div class="grid-img-tag" style="background-image: url(./img/800rr_dragster.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>DRAGSTER</h3>
                                        <p>800 RR</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>Cylinders</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<snap>cc</snap>
                                            </p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>140<span>hp</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(9);"
                               onmouseout="removeBlurOthers(9);">
                                <div class="grid-img-tag" style="background-image: url(./img/800rcscs_dragster.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>DRAGSTER</h3>
                                        <p>800 RC SCS</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>Cylinders</h4>
                                            <p>4</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<snap>CC</snap>
                                            </p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>150<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                    </div>
                    <div class="motor-list-layout" style="background-color: transparent; opacity: 0;">
                        <div class="motor-list-grid-container">
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(10);"
                               onmouseout="removeBlurOthers(10);">
                                <div class="grid-img-tag" style="background-image: url(./img/800lusso.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>TURISMO VELOCE</h3>
                                        <p>800 LUSSO</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>4</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>110<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(11);"
                               onmouseout="removeBlurOthers(11);">
                                <div class="grid-img-tag" style="background-image: url(./img/800lussoscs.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>TURISMO VELOCE</h3>
                                        <p>800 LUSSO SCS</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>4</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>110<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(12);"
                               onmouseout="removeBlurOthers(12);">
                                <div class="grid-img-tag" style="background-image: url(./img/rcscs.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>TURISMO VELOCE</h3>
                                        <p>RC SCS</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>4</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>110<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(13);"
                               onmouseout="removeBlurOthers(13);">
                                <div class="grid-img-tag" style="background-image: url(./img/800rosso_turismo.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>TURISMO VELOCE</h3>
                                        <p>800 ROSSO</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>4</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>110<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                    </div>
                    <div class="motor-list-layout" style="background-color: transparent; opacity: 0;">
                        <div class="motor-list-grid-container">
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(14);"
                               onmouseout="removeBlurOthers(14);">
                                <div class="grid-img-tag" style="background-image: url(./img/F3675.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>F3</h3>
                                        <p>F3 675</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>675<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>128<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(15);"
                               onmouseout="removeBlurOthers(15);">
                                <div class="grid-img-tag" style="background-image: url(./img/F3800.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>F3</h3>
                                        <p>F3 800</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>148<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(16);"
                               onmouseout="removeBlurOthers(16);">
                                <div class="grid-img-tag" style="background-image: url(./img/F3800rc.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>F3</h3>
                                        <p>F3 800 RC</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>153<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                    </div>
                    <div class="motor-list-layout" style="background-color: transparent; opacity: 0;">
                        <div class="motor-list-grid-container">
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(17);"
                               onmouseout="removeBlurOthers(17);">
                                <div class="grid-img-tag" style="background-image: url(./img/800serieore.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>SUPERVELOCE</h3>
                                        <p>800</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>148<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(18);"
                               onmouseout="removeBlurOthers(19);">
                                <div class="grid-img-tag" style="background-image: url(./img/800.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>SUPERVELOCE</h3>
                                        <p>800 SERIES ORO</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>153<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="motor-list-layout" style="background-color: transparent; opacity: 0;">
                        <div class="motor-list-grid-container">
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(19);"
                               onmouseout="removeBlurOthers(19);">
                                <div class="grid-img-tag" style="background-image: url(./img/800rosso.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>ROSSO</h3>
                                        <p>BRUTALE 800</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>110<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(20);"
                               onmouseout="removeBlurOthers(20);">
                                <div class="grid-img-tag" style="background-image: url(./img/800rosso_dragster.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>ROSSO</h3>
                                        <p>DRAGSTER 800</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>110<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href='#' class="motor-tag" onmouseover="hoverBlurOthers(21);"
                               onmouseout="removeBlurOthers(21);">
                                <div class="grid-img-tag" style="background-image: url(./img/800rosso_turismo.png);"></div>
                                <div class="grid-content-tag">
                                    <div class="motor-name-tag">
                                        <h3>ROSSO</h3>
                                        <p>TURISMO VELOCE 800</p>
                                    </div>
                                    <div class="motor-infor-tag">
                                        <div class="motor-infor-tag-left">
                                            <h4>CYLINDERS</h4>
                                            <p>3</p>
                                        </div>
                                        <div class="motor-infor-tag-center">
                                            <h3>CYLINDERS CAPACITY</h3>
                                            <p>798<span>CC</span></p>
                                        </div>
                                        <div class="motor-infor-tag-right">
                                            <h4>HOURSEPOWER</h4>
                                            <p>110<span>HP</span></p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="motor-search-nav" id="motor-search-nav">
            <div class="close-search-nav" onclick="closeSearchNav()">
            </div>
            <div class="svg-background">
                <div class="svg-container" id="svg-container">
                    <div class="svg-bg"></div>
                    <div class="svg-body" id="svg-body">
                        <!--                        <div class='mv-object-container'>
                                                    <div class="mv-product-img">
                        
                                                    </div>
                                                    <div class="mv-product-content">
                                                        <div class="mv-product-content-infor">
                                                            <h3 class="mv-pr-header">
                                                                Rush1000
                                                            </h3>
                                                            <p class="mv-pr-context">
                                                                ahihi ahihi ahihi ahihi ahihi
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>-->
                        <%
                            String createfolder = request.getParameter("createFolder");
                            String path = "C:/temp/data";
                            File f = new File(path);
                            if (!f.exists()) {
                            }
                            if (f.mkdirs()) {

                            }
                            File f1 = new File("C:/temp/data/mytext.txt");
                            f1.createNewFile();
                            Mv_Product_Module mpm = new Mv_Product_Module();
                            List<Mv_Product> mvProductsList = mpm.listMotorProduct();
                            JSONArray MV_Product_List = new JSONArray();

                            for (Mv_Product mv_Product : mvProductsList) {
//                                out.print("<div class='mv-object-container'>");
//                                out.print("<div class='mv-product-img'>");
//
//                                out.print("</div>");
//                                out.print("<div class='mv-product-content'>");
//                                out.print("<h3 class='mv-pr-header'>" + mv_Product.getMotorName() + "</h3>");
//                                out.print("<p class='mv-pr-context'>" + mv_Product.getProduct_slogan() + "</p>");
//                                out.print("</div>");
//                                out.print("</div>");
//                                Map<String, Object> MV_Product = new HashMap<>();
//                                MV_Product.put("Name", mv_Product.getMotorName());
//                                MV_Product.put("Slogan", mv_Product.getProduct_slogan());
//                                MV_Product_List.put(mv_Product.getMotorCodex(), MV_Product);
                                JSONObject prDetails = new JSONObject();
                                prDetails.put("Name", mv_Product.getMotorName());
                                prDetails.put("Slogan", mv_Product.getProduct_slogan());
                                JSONObject prObject = new JSONObject();
                                prObject.put("motor", prDetails);
                                MV_Product_List.add(prObject);
                            }
                            try {
                                FileWriter file = new FileWriter("E:/MV_Product_List.json");
                                file.write(MV_Product_List.toJSONString());
                                file.flush();
                                file.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>






                    </div>
                </div>
            </div>
            <div class="motor-search-form">
                <div class="motor-search-container">
                    <div class="search-motor-image"></div>
                    <input type="text" class="search-input-layout" placeholder="Search your motors..." id="seach-field" onkeyup="seachItemsByKeyWord()">

                </div>
            </div>
            <div  class="content-admin">
                <p>Vns-King Mv Agusta®</p>
            </div>
        </div>

        <div class="header">
            <div class="header-nav">
                <div class="header-tag">
                    <div class="header-tag-left">
                        <div class="header-tag-left-img">
                            <p><span>𝐌𝓥</span>-agusta®</p>
                        </div>
                    </div>
                    <div class="header-tag-right">
                        <!-- <div class="header-tag-right-content-search" id='header-tag-right-content-search' onclick="openSearchField()"> -->
                        <div class="header-tag-right-content-search" id='header-tag-right-content-search' onclick="openSearchNav()">
                            <div class="search-input-container" id='search-input-container'>
                                <input type="text" class="search-input" id='search-input'>
                                <div class="search-image" id='search-image'></div>
                            </div>
                        </div>
                        <div class="header-tag-right-content-2">
                            My MV-Agusta
                        </div>
                        <a class="header-tag-right-content-1" href="">
                            International website
                        </a>
                    </div>
                </div>
                <div class="main-horizontal-nav" id="main-horizontal-nav">
                    <div class="left-horizontal-nav">
                        <div class="nav-item-img" id="nav-item-img">
                            <img src="./img/menu.png" alt="#" id='menu-icon' onclick="openCloseMenu()">
                        </div>
                        <div class="left-nav-item" onclick="openMotorMenu();">
                            <a onclick="openMotorMenu();">MODELS</a>
                        </div>
                        <div class="left-nav-item">
                            <a href="#">EQUIPMENT</a>
                        </div>
                        <div class="left-nav-item">
                            <a href="#">CONFIGUATOR</a>
                        </div>
                    </div>

                    <div class="flex-center-nav" id='flex-center-nav'></div>

                    <div class="right-horizontal-nav">
                        <div class="right-nav-item">
                            <a href="#">DEALER LOCATOR</a>
                        </div>
                        <div class="right-nav-item">
                            <a href="#">TEST RIDE</a>
                        </div>
                        <div class="right-nav-item">
                            <a href="#">SHOP</a>
                        </div>
                        <div class="right-nav-item" style="display: none;" id="right-nav-hidden1">
                            <a href="#">International website</a>
                        </div>
                        <div class="right-nav-item" style="display: none;" id="right-nav-hidden2">
                            <a href="#">My MV-Agusta</a>
                        </div>
                    </div>
                </div>
                <div class="extra-nav" id="extra-nav">
                    <div class="extra-left-nav-item" onclick="openMotorMenu();">
                        <a onclick="openMotorMenu();">MODELS</a>
                    </div>
                    <div class="extra-left-nav-item">
                        <a href="#">EQUIPMENT</a>
                    </div>
                    <div class="extra-left-nav-item">
                        <a href="#">CONFIGUATOR</a>
                    </div>
                    <div class="extra-left-nav-item">
                        <a href="#">DEALER LOCATOR</a>
                    </div>
                    <div class="extra-left-nav-item">
                        <a href="#">TEST RIDE</a>
                    </div>
                    <div class="extra-left-nav-item">
                        <a href="#">SHOP</a>
                    </div>
                </div>
            </div>
            <!-- content -->
            <div class="header-form">
                <div class="header-content">
                    <div class="content-header">
                        <div class="subtitle"> Dream Matter</div>
                        <h1 class="title"> MV-Agusta F800 2020 </h1>
                        <div class="txt">
                            "234hp on 152.2kg with racing kit. A record power to weight ratio completed by the GP16 extreme
                            aerodynamic design. Discover the new MV F800"
                        </div>
                    </div>
                </div>
            </div>


            <div class="header-button-form">
                <div class="button">
                    <span class="txt">Discover it </span>
                </div>
            </div>
        </div>
        <!-- <div class="latest-news">
            <div class="news-tag">
                <div class="content">
                    <h2>The MyDucati word now as an app</h2>
                    <P>With MyDucati App you have the entire Ducati world at your fingertip and can access special content.
                        Download
                        it now and explore the full range of services to enjoy a customisd experince wherever you are
                    </P>
                    <a href="#">FIND OUT MORE</a>
                </div>
                <div class="news-img">
                    <img src="img/MV Agusta F3 (5).jpg" alt="">
                </div>
            </div>
            <div class="news-tag">
                <div class="content">
                    <h2>The MyDucati word now as an app</h2>
                    <P>With MyDucati App you have the entire Ducati world at your fingertip and can access special content.
                        Download
                        it now and explore the full range of services to enjoy a customisd experince wherever you are
                    </P>
                    <a href="#">FIND OUT MORE</a>
                </div>
                <div class="news-img">
                    <img src="img/MV Agusta F3 (5).jpg" alt="">
                </div>
            </div>
        </div> -->
        <div class="oh">

        </div>
        <div class="assistant">
            <div class="assistant-form">
                <div class="assistant-inner"></div>
                <div class="assistant-desc">
                    <img src="https://www.mvagusta.com/documents/20126/331625/Logo.png/4b9c1bee-8aee-a251-a318-8ca080997f70?t=1597226185703"
                         alt="">
                    <div class="assistant-header">
                        <p>ALWAYS</p>
                        <p>THERE FOR</p>
                        <p>YOU CLOSER</p>
                        <p>THAN EVER</p>
                    </div>
                    <div class="assistant-button">
                        <a href="#">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>
        <div class="about-us-form">
            <div class="center">
                <div class="img">
                    <div class="img1">
                        <img src="https://www.mvagusta.com/documents/20126/98209/factory.jpg.png/165ad224-3cea-9952-bd8d-d6221c30fc0e?t=1587200386783"
                             alt="">
                    </div>
                </div>
                <div class="about-us">
                    <h1>ABOUT US</h1>
                    <p>Our mission is to design, develop
                        and manufacture the most advanced
                        motorcycles in the world. With iconic
                        design, class-leading performance and a
                        pplying the most advanced materials and
                        engineering technology. In accomplishing
                        our mission, we uphold and remain true to
                        our values of craftsmanship, innovation and total dedication to excellence.</p>
                    <a href="#">LEARN MORE ABOUT MV AGUSTA</a>
                </div>
            </div>
        </div>
        <div class="background-news">
            <div class="title-news">
                <div class="title-news">
                    <h1>NEWS</h1>
                    <p>STAY UPDATE ON THE MV AGUSTA WORLD</p>
                    <a href="#">READ THE LATEST NEWS</a>
                </div>
                <div class="tag-news">

                    <div class="tag">
                        <img src="./img/RUSH.png" alt="">
                        <a href="">MV AGUSTA ANNOUNCES NEW STRATEGIC PARTNERSHIP IN CHINA WITH
                            QJ-MOTOR</a>
                        <p>"MV Agusta Motor S.p.A has announced a new strategic Partnership with QJ
                            Motor Co.for ..."</p>
                    </div>
                    <div class="tag">
                        <img src="./img/DRA_RR.png" alt="">
                        <a href="">MV AGUSTA ANNOUNCES NEW STRATEGIC PARTNERSHIP IN CHINA WITH
                            QJ-MOTOR</a>
                        <p>"MV Agusta Motor S.p.A has announced a new strategic Partnership with QJ
                            Motor Co.for ..."</p>
                    </div>
                    <div class="tag">
                        <img src="./img/brutale1000serieoro-hero.png" alt="">
                        <a href="">MV AGUSTA ANNOUNCES NEW STRATEGIC PARTNERSHIP IN CHINA WITH
                            QJ-MOTOR</a>
                        <p>"MV Agusta Motor S.p.A has announced a new strategic Partnership with QJ
                            Motor Co.for ..."</p>
                    </div>

                </div>
            </div>
            <!--Subscibe-->

        </div>
        <div class="subscibe">
            <div class="content-subscibe">
                <h1>DON'T TRAIL BEHIND</h1>
                <div class="sb-ct-1">SUBCRIBE TO OUR NEWSLETTER AND BE THE FIRST TO
                    RECEIVE INFORMATION ABOUT OUR SPECIAL OFFERS!
                </div>
                <div class="sb-ct-2">DOWNLOAD THE EXCLUSIVE WALLPAPER FOR YOUR COMPUTER AND SMARTPHONE</div>
                <a href="#">SUBSCRIBE NOW</a>
            </div>
        </div>
        <div class="end-copyright">
            <div class="end-copyright-box">
                <div class="end-section-img-box"><img src="./img/mv-logo.png"></div>
                <div class="flex-box">
                    <div class="end-section end-section-left">
                        <h5>NEWSLETTER</h5>
                        <p>Subscribe to our Newsletter and download the exclusive wallpaper for your computer
                            and
                            smartphone!</p>
                        <p class="pp"><a href="#">SUBSCRIBE NOW</a></p>
                        <p class="pp"><a href="#">SPRING UPGRADE DISCLAIMER</a></p>
                    </div>
                    <div class="end-section end-section-center">
                        <div class="center-first-box">
                            <img src="./img/motul-logo.jpg" alt="#">
                            <p>MV Agusta<br> recommends Motul</p>
                        </div>
                        <div class="center-second-box">
                            <p>® 2020 MV AGUSTA Motor S.p.A<br> P.IVA e C.F. 02324190129<br> Iscritta al
                                Registro delle
                                Imprese di Varese
                                REA-247420<br> Cap. Soc. I. V. Euro 1.000.000<br> Soggetta a direzione e
                                coordinamento
                                del Socio Unico Gi.Ti.R
                                S.A.<br> Sede legale in Varese, 21100, Loc. Schiranna, Via G. Macchi 144</p>
                            <br>
                            <p style="font-weight: 700; font-size: 12.5px;">Thanks Mv-Agusta Motorsport for
                                helping me
                                alots</p>
                        </div>
                    </div>
                    <div class="end-section end-section-right">
                        <div class="icon-end">
                            <i class="fa fa-instagram"></i>
                            <i class="fa fa-facebook"></i>
                            <i class="fa fa-youtube-play"></i>
                            <i class="fa fa-vimeo"></i>
                        </div>
                        <div class="right-end-content">
                            <p><a href="#">PRIVACY AND LEGAL</a></p><br>
                            <p><a href="#">COOKIE SETTINGS</a></p><br>
                            <p><a href="#">PRIVACY NOTICE</a></p><br>
                            <p><a href="#">RMI</a></p><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            window.onscroll = function () {
                scrollFunction();
            };
            function scrollFunction() {
                var mainNav = document.getElementById("main-horizontal-nav");
                var centerNav = document.getElementById("flex-center-nav");
                var navHidden1 = document.getElementById("right-nav-hidden1");
                var navHidden2 = document.getElementById("right-nav-hidden2");
                if (document.body.scrollTop > 40 || document.documentElement.scrollTop > 40) {
                    mainNav.classList.add("main-horizontal-nav-js");
                    centerNav.classList.add("flex-center-nav-js");
                    for (var i = 0; i <= 2; i++) {
                        document.getElementsByClassName("right-nav-item")[i].style.display = 'none';
                        document.getElementsByClassName("left-nav-item")[i].style.display = 'none';
                    }
                    document.getElementById("nav-item-img").style.display = "block";
                    navHidden1.style.display = "block";
                    navHidden2.style.display = "block";
                } else {
                    mainNav.classList.remove("main-horizontal-nav-js");
                    centerNav.classList.remove("flex-center-nav-js");
                    navHidden1.style.display = "none";
                    navHidden2.style.display = "none";
                    for (var j = 0; j <= 2; j++) {
                        document.getElementsByClassName("right-nav-item")[j].style.display =
                                "block";
                        document.getElementsByClassName("left-nav-item")[j].style.display =
                                "block";
                    }
                    document.getElementById("nav-item-img").style.display = "none";
                    document.getElementById("extra-nav").classList.remove("extra-nav-js");
                }
            }

        </script>
        <script src="js-homepage/scroll-homepage.js"></script>
        <script src="js-homepage/homepage.js"></script>
        <script src="search-js/searchValue.js"></script>
        <script src="js/MV_Product_List.json"></script>

        <script>
            document.getElementsByClassName('motor-menu')[0].classList.add('motor-menu-checked');
        </script>

    </body>
</html>
