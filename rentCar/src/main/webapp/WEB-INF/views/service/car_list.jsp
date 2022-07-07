<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 목록</title>
    <style>

        ul {
            list-style: none;
        }

        a {
            display: block;
            text-decoration: none;
        }

        a:hover {
            background-color: rgba(253, 158, 80, 0.3);
        }

        a:visited {
            color: black;
        }

        .items_container {
            width: 1200px;
        }

        .items_container .menu_wrapper {
            display: flex;
            justify-content: space-between;
            height: 100px;
            margin-left: 150px;
        }

        .menu_wrapper .car_category {
            display: flex;
        }

        .menu_wrapper .car_category li {
            width: 100px;
            font-size: 20px;
            margin-bottom: 10px;
            text-align: center;
            line-height: 68px;
        }

        .item_wrapper {
            display: flex;
            justify-content: center;
        }

        .hidden {
            visibility: hidden;
        }
    </style>
</head>
<body>
    <section class="items_container">
        <div class="menu_wrapper">
            <ul class="car_category">
                <li><a href="#">경차</a></li>
                <li><a href="#">세단</a></li>
                <li><a href="#">SUV</a></li>
            </ul>
            <div>검색아이콘<input type="hidden"/></div>
        </div>
        <ul class="item_wrapper">
            <li class="item_list">
                <figure>
                    <img src="https://via.placeholder.com/200x200.png" alt="">
                    <figcaption>
                        <p>이름</p>
                        <p>가격</p>
                        <p class="hidden">차크기</p>
                    </figcaption>
                </figure>
            </li>
            <li class="item_list">
                <figure>
                    <img src="https://via.placeholder.com/200x200.png" alt="">
                    <figcaption>
                        <p>이름</p>
                        <p>가격</p>
                        <p class="hidden">차크기</p>
                    </figcaption>
                </figure>
            </li>
            <li class="item_list">
                <figure>
                    <img src="https://via.placeholder.com/200x200.png" alt="">
                    <figcaption>
                        <p>이름</p>
                        <p>가격</p>
                        <p class="hidden">차크기</p>
                    </figcaption>
                </figure>
            </li>
            <li class="item_list">
                <figure>
                    <img src="https://via.placeholder.com/200x200.png" alt="">
                    <figcaption>
                        <p>이름</p>
                        <p>가격</p>
                        <p class="hidden">차크기</p>
                    </figcaption>
                </figure>
            </li>
        </ul>
    </section>
</body>
</html>