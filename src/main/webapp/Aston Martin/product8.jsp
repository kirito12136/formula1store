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
        <img src="//images.footballfanatics.com/aston-martin/aston-martin-aramco-f1-logo-stealth-t-shirt_ss5_p-200838310+pv-1+u-wlxlhv1woobk0qakiupj+v-g81ojw1gfszj51o3iavk.jpg?_hv=2&amp;w=900"
             alt="商品图片">
    </div>
    <form id="form1" name="form1" method="post" action="../car.jsp">
        <div class="product-details">
            <h1>Aston Martin Aramco F1 Logo Stealth T-Shirt</h1>
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
                            <li>Product ID: 201163881</li>
                            <li>Country of origin: Philippines</li>
                            <li>6-panel crown</li>
                            <li>Curved brim</li>
                            <li>Adjustable back closure</li>
                            <li>Eyelet vents</li>
                            <li>Team graphics</li>
                            <li>Curved bill</li>
                            <li>Adjustable hook and loop fastener strap</li>
                            <li>Mid Crown</li>
                            <li>Structured fit</li>
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
                        <div>Keep the sun off and flaunt your style.
                            This is the perfect way to stay cool and strut your stuff like a pro.
                        </div>
                    </div>
                </div>
            </div>
            </p>
            <p class="product-price">价格: 390元</p>
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
                <input type="hidden" name="spm" value="Aston Martin Aramco F1 Logo Stealth T-Shirt">
                <input type="hidden" name="dj" value="390">
                <input type="submit" name="jrgwc" id="jrgwc" value="加入购物车">
                <br>
            </p>
        </div>
    </form>
</div>
</body>
</html>