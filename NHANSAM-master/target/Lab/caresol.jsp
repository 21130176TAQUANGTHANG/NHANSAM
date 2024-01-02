<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 12/19/2023
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/main.css">
    <style>

        .direction{
            text-align: center;
        }
        .direction button{
            font-family: cursive;
            font-weight: bold;
            background-color: #ffffff44;
            border:none;
            width:50px;
            height:50px;
            border-radius: 50%;
            transition: 0.5s;
            margin:0 10px;
        }
        .direction button:hover{
            background-color: #ffffff;
        }
        .item{
            border-radius: 15px;
            width:300px;
            height:500px;
            overflow: hidden;
            transition: 0.5s;
            margin:10px;
            scroll-snap-align: start;
        }
        .item .content table td{
            padding:10px 0;
            border-bottom: 1px solid #AEC0CE;
        }
        .item .content table td:nth-child(2){
            text-align: right;
        }
        .item .nameGroup{
            text-align: center;
            border-bottom:none!important;
        }
        #list{
            display: flex;
            width:max-content;
        }
        #formList{
            width:1280px;
            max-width: 100%;
            overflow: auto;
            margin:100px auto 50px;
            scroll-behavior: smooth;
            scroll-snap-type: both;
        }
        #formList::-webkit-scrollbar{
            display: none;
        }
        @media screen and (max-width: 1024px){
            .item{
                width: calc(33.3vw - 20px);
            }
            .direction{
                display: none;
            }
        }
        @media screen and (max-width: 768px){
            .item{
                width: calc(50vw - 20px);
            }
            .direction{
                display: none;
            }
        }

    </style>
</head>
<body>

<div id="formList">
    <div id="list">
        <div class="item">
                <div class="product-ite" style="width: auto">
                    <img src="img/namlinhxanh400g.png" alt="">
                    <a href="Products/Namlimxanh/sp1.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 400g </p></a>
                    <div class="buy">
                        <p>4.000.000 VND</p>
                        <button type="button" class="btn-ginseng">Mua</button>
                    </div>
                </div>
        </div>
        <div class="item">

                <div class="product-ite">
                    <img src="img/namlinhxanh400g.png" alt="">
                    <a href="Products/Namlimxanh/sp1.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 400g </p></a>
                    <div class="buy">
                        <p>4.000.000 VND</p>
                        <button type="button" class="btn-ginseng">Mua</button>
                    </div>

            </div>
        </div>
        <div class="item">

                <div class="product-ite">
                    <img src="img/namlinhxanh400g.png" alt="">
                    <a href="Products/Namlimxanh/sp1.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 400g </p></a>
                    <div class="buy">
                        <p>4.000.000 VND</p>
                        <button type="button" class="btn-ginseng">Mua</button>
                    </div>
                </div>

        </div>
        <div class="item">

                <div class="product-ite">
                    <img src="img/namlinhxanh400g.png" alt="">
                    <a href="Products/Namlimxanh/sp1.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 400g </p></a>
                    <div class="buy">
                        <p>4.000.000 VND</p>
                        <button type="button" class="btn-ginseng">Mua</button>
                    </div>

            </div>
        </div>
        <div class="item">

                <div class="product-ite">
                    <img src="img/namlinhxanh400g.png" alt="">
                    <a href="Products/Namlimxanh/sp1.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 400g </p></a>
                    <div class="buy">
                        <p>4.000.000 VND</p>
                        <button type="button" class="btn-ginseng">Mua</button>
                    </div>
                </div>

        </div>
        <div class="item">

                <div class="product-ite">
                    <img src="img/namlinhxanh400g.png" alt="">
                    <a href="Products/Namlimxanh/sp1.jsp"><p>Nấm lim xanh tự nhiên Tiên Phước Quảng Nam 100% loại đặc biệt tai nấm to hộp 400g </p></a>
                    <div class="buy">
                        <p>4.000.000 VND</p>
                        <button type="button" class="btn-ginseng">Mua</button>
                    </div>
                </div>

        </div>
    </div>
</div>


<div class="direction">
    <button id="prev"> < </button>
    <button id="next"> > </button>
</div>
<script>
    document.getElementById('next').onclick = function(){
        const widthItem = document.querySelector('.item').offsetWidth;
        document.getElementById('formList').scrollLeft += widthItem;
    }
    document.getElementById('prev').onclick = function(){
        const widthItem = document.querySelector('.item').offsetWidth;
        document.getElementById('formList').scrollLeft -= widthItem;
    }
</script>
</body>
</html>