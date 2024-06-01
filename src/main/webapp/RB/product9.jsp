<%@ page language="java" contentType="text/html; charset=GB2312" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>商品详情</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .product-image {
            text-align: center;
        }

        .product-image img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .product-details {
            margin-top: 20px;
        }

        .product-details h1 {
            font-size: 2em;
            margin-bottom: 10px;
        }

        .product-details p {
            margin-bottom: 10px;
        }

        .product-price {
            font-size: 1.5em;
            color: #b12704;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="product-image">
        <img src="//images.footballfanatics.com/rb/scuderia-alphatauri-2022-team-crewneck-sweat_ss4_p-13301121+u-18yg7xn76ym0pt6k8fp8+v-c0964500a2f34ac7b8a3b18250670ab1.jpg?_hv=2&amp;w=900"
             alt="商品图片">
    </div>
    <form id="form1" name="form1" method="post" action="../car.jsp">
        <div class="product-details">
            <h1>Scuderia AlphaTauri 2022 Team Crewneck Sweat</h1>
            <p>
            <div class="layout-row product-shipping-details" data-trk-id="product-shipping-details">
                <div class="description-box product-shipping-details-container collapsible" role="region">
                    <div class="description-box-title" aria-expanded="true" tabindex="0" role="button">
                        <div class="description-box-title-content">Shipping</div>
                        <i class="icon icon-minus" role="presentation"></i></div>
                    <div class="description-box-content">
                        <div class="shipping-message-container">
                            <ul class="padding">
                                <li>This item will ship within 1 business day. Please proceed to checkout for shipping
                                    options and additional transit times.
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layout-row product-details" data-trk-id="product-details">
                <div class="description-box product-details-container collapsible" role="region">
                    <div class="description-box-title" aria-expanded="true" tabindex="0" role="button">
                        <div class="description-box-title-content">Details</div>
                        <i class="icon icon-minus" role="presentation"></i></div>
                    <div class="description-box-content">
                        <ul class="">
                            <li>Product ID: 201163860</li>
                            <li>Country of origin: Turkey</li>
                            <li>Crew neck</li>
                            <li>Regular fit</li>
                            <li>Driver name and car number</li>
                            <li>Printed graphics</li>
                            <li>Short sleeve</li>
                            <li>Officially licensed</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="layout-row product-description" data-trk-id="product-description">
                <div class="description-box product-description-container collapsible" role="region">
                    <div class="description-box-title" aria-expanded="true" tabindex="0" role="button">
                        <div class="description-box-title-content">Description</div>
                        <i class="icon icon-minus" role="presentation"></i></div>
                    <div class="description-box-content">
                        <div>Wear the love of your chosen team at any time.
                            Everyone needs t-shirts so make sure yours is built with F1 precision and style.</div>
                    </div>
                </div>
            </div>
            </p>
            <p class="product-price">价格: 300元</p>
            <p>
                数量:
                <label for="sl"></label>
                <select name="sl" id="sl">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="8">8</option>
                    <option value="10">10</option>
                </select> 件
                <input type="hidden" name="spm" value="Scuderia AlphaTauri 2022 Team Crewneck Sweat">
                <input type="hidden" name="dj" value="300">
                <input type="submit" name="jrgwc" id="jrgwc" value="加入购物车">
                <br>
            </p>
        </div>
    </form>
</div>
</body>
</html>