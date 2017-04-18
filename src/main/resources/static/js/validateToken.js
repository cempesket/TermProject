/**
 * Created by cem.pesket on 20.02.2017.
 */

var validateToken = function () {

    $(document).ready(function () {
        $.ajax({
            type: "GET",
            beforeSend: function (request) {
                request.setRequestHeader("Authorization", "bearer" + sessionStorage.getItem("token"));
            },
            url: "http://localhost:8040/restapi/rest/getToken/ValidateToken",
            crossDomain: true,
            success: function (output, status, xhr) {
            },
            statusCode: {
                401: function () {
                    alert("Please login");
                    location.href = "Login.html";
                },
                404: function () {
                    alert("404");
                },
                200: function () {

                },
                201: function () {
                    alert("201");
                },
                202: function () {
                    alert("202");
                }
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                if (XMLHttpRequest.readyState == 4) {
                    location.href = "404.html";
                }
                else if (XMLHttpRequest.readyState == 0) {
                    location.href = "404.html";
                }
                else {
                    location.href = "404.html";
                }
            }
        });
    })};



