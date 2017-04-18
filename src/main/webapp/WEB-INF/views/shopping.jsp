<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href='http://fonts.googleapis.com/css?family=Work+Sans:400,600,700' rel='stylesheet' type='text/css'>

    <link  href="<c:url value="../css/reset.css"/>" rel="stylesheet"><!-- CSS reset -->
    <link  href="<c:url value="../css/style.css"/>" rel="stylesheet"> <!-- Resource style -->
    <script src="<c:url value="../js/modernizr.js"/>"></script> <!-- Modernizr -->

    <title>Document</title>
</head>
<body>


<a href="<c:url value="../Shop/cart" />" class="cd-cart">
    <span></span>
</a>

<ul id="products" class="cd-gallery">
    <li data-id="1" data-name="Product 1" data-price="10.00">
        <div  class="cd-single-item">
            <a href="#0">
                <ul class="cd-slider-wrapper">
                    <li><img src="../img/thumb-1.jpg" alt="Preview image"></li>
                    <li class="selected"><img src="../img/thumb-2.jpg" alt="Preview image"></li>
                    <li><img src="../img/thumb-3.jpg" alt="Preview image"></li>
                </ul>
            </a>

            <div class="cd-customization">
                <button class="add-to-cart">
                    <em>Add to Cart</em>
                    <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                        <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                    </svg>
                </button>
            </div> <!-- .cd-customization -->

            <button class="cd-customization-trigger">Customize</button>
        </div> <!-- .cd-single-item -->

        <div class="cd-item-info">
            <b><a href="#0">Product 1</a></b>
            <em>$10</em>
        </div> <!-- cd-item-info -->
    </li>

    <li data-id="2" data-name="Product 2" data-price="10.00">
        <div class="cd-single-item">
            <a href="#0">
                <ul class="cd-slider-wrapper">
                    <li class="selected"><img src="../img/thumb-1.jpg" alt="Preview image"></li>
                    <li><img src="../img/thumb-2.jpg" alt="Preview image"></li>
                    <li><img src="../img/thumb-3.jpg" alt="Preview image"></li>
                </ul>
            </a>

            <div class="cd-customization">
                <button class="add-to-cart">
                    <em>Add to Cart</em>
                    <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                        <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                    </svg>
                </button>
            </div> <!-- .cd-customization -->

            <button class="cd-customization-trigger">Customize</button>
        </div> <!-- .cd-single-item -->

        <div class="cd-item-info">
            <b><a href="#0">Product 2</a></b>
            <em>$10</em>
        </div> <!-- cd-item-info -->
    </li>

    <li data-id="3" data-name="Product 3" data-price="10.00">
        <div class="cd-single-item">
            <a href="#0">
                <ul class="cd-slider-wrapper">
                    <li><img src="../img/thumb-1.jpg" alt="Preview image"></li>
                    <li><img src="../img/thumb-2.jpg" alt="Preview image"></li>
                    <li class="selected"><img src="../img/thumb-3.jpg" alt="Preview image"></li>
                </ul>
            </a>

            <div class="cd-customization">
                <button class="add-to-cart">
                    <em>Add to Cart</em>
                    <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                        <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                    </svg>
                </button>
            </div> <!-- .cd-customization -->

            <button class="cd-customization-trigger">Customize</button>
        </div> <!-- .cd-single-item -->

        <div class="cd-item-info">
            <b><a href="#0">Product 3</a></b>
            <em>$10</em>
        </div> <!-- cd-item-info -->
    </li>

    <li data-id="4" data-name="Product 4" data-price="10.00">
        <div class="cd-single-item">
            <a href="#0">
                <ul class="cd-slider-wrapper">
                    <li class="selected"><img src="../img/thumb-1.jpg" alt="Preview image"></li>
                    <li><img src="../img/thumb-2.jpg" alt="Preview image"></li>
                    <li><img src="../img/thumb-3.jpg" alt="Preview image"></li>
                </ul>
            </a>

            <div class="cd-customization">
                <button class="add-to-cart">
                    <em>Add to Cart</em>
                    <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                        <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                    </svg>
                </button>
            </div> <!-- .cd-customization -->

            <button class="cd-customization-trigger">Customize</button>
        </div> <!-- .cd-single-item -->

        <div class="cd-item-info">
            <b><a href="#0">Product 4</a></b>
            <em>$10</em>
        </div> <!-- cd-item-info -->
    </li>

    <li data-id="5" data-name="Product 5" data-price="10.00">
        <div class="cd-single-item">
            <a href="#0">
                <ul class="cd-slider-wrapper">
                    <li><img src="../img/thumb-1.jpg" alt="Preview image"></li>
                    <li class="selected"><img src="../img/thumb-2.jpg" alt="Preview image"></li>
                    <li><img src="../img/thumb-3.jpg" alt="Preview image"></li>
                </ul>
            </a>
            <div class="cd-customization">


                <button class="add-to-cart">
                    <em>Add to Cart</em>
                    <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                        <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                    </svg>
                </button>
            </div> <!-- .cd-customization -->

            <button class="cd-customization-trigger">Customize</button>
        </div> <!-- .cd-single-item -->

        <div class="cd-item-info">
            <b><a href="#0">Product 5</a></b>
            <em>$10</em>
        </div> <!-- cd-item-info -->
    </li>

    <li data-id="6" data-name="Product 6" data-price="10.00">
        <div class="cd-single-item">
            <a href="#0">
                <ul class="cd-slider-wrapper">
                    <li class="selected"><img src="../img/thumb-1.jpg" alt="Preview image"></li>
                    <li><img src="../img/thumb-2.jpg" alt="Preview image"></li>
                    <li><img src="../img/thumb-3.jpg" alt="Preview image"></li>
                </ul>
            </a>

            <div class="cd-customization">

                <button class="add-to-cart">
                    <em>Add to Cart</em>
                    <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                        <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"/>
                    </svg>
                </button>
            </div> <!-- .cd-customization -->

            <button class="cd-customization-trigger">Customize</button>
        </div> <!-- .cd-single-item -->

        <div class="cd-item-info">
            <b><a href="#0">Product 6</a></b>
            <em>$10</em>
        </div> <!-- cd-item-info -->
    </li>
</ul> <!-- cd-gallery -->
<script src="<c:url value="../js/jquery-2.1.4.js"/>"></script>
<script src="<c:url value="../js/main.js"/>"></script> <!-- Resource jQuery -->
</body>
</html>