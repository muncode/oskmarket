<?php

/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Congratulations!</h1>

        <p class="lead">You have successfully created your Yii-powered application.</p>

        <p><a class="btn btn-lg btn-success" href="http://www.yiiframework.com">Get started with Yii</a></p>
    </div>

    <div class="body-content">



        <!-- Вывод Новостей по авторам -->

        <select id="authors_option" onClick="ajaxload()">
            <option disabled>Выберите автора</option>
        </select>
        <script type="text/javascript">
            $(function(){
                $.getJSON('http://oskmarket/api/authors', function(data) {
                    $.each(data, function(key, val) {
                        $('#authors_option').append('<option value="' + val.id + '">' + val.name + '</option>');
                    });
                });
            });
        </script>
        <script type="text/javascript">
            function ajaxload(){
                let val = $("#authors_option").val();
                var xhr=new XMLHttpRequest();
                xhr.onreadystatechange=function(){
                    if(this.readyState==4){
                        if(this.status >=200 && xhr.status < 300){
                            document.getElementById('authors').innerHTML=this.responseText;
                        }
                    }
                }
                xhr.open('GET', 'http://oskmarket/api/authors/'+val+'?expand=news',true);
                xhr.setRequestHeader('Content-Type', 'application/json');
                xhr.send();
            }
        </script>
        <div id="authors"></div>

        <!-- Вывод Новостей по рубрикам -->

        <select id="category_option" onClick="ajaxload2()">
            <option disabled>Выберите автора</option>
        </select>
        <script type="text/javascript">
            $(function(){
                $.getJSON('http://oskmarket/api/categories', function(data) {
                    $.each(data, function(key, val) {
                        $('#category_option').append('<option value="' + val.id + '">' + val.title + '</option>');
                    });
                });
            });
        </script>
        <script type="text/javascript">
            function ajaxload2(){
                let val = $("#category_option").val();
                var xhr=new XMLHttpRequest();
                xhr.onreadystatechange=function(){
                    if(this.readyState==4){
                        if(this.status >=200 && xhr.status < 300){
                            document.getElementById('categories').innerHTML=this.responseText;
                        }
                    }
                }
                xhr.open('GET', 'http://oskmarket/api/categories/'+val+'?expand=news',true);
                xhr.setRequestHeader('Content-Type', 'application/json');
                xhr.send();
            }
        </script>
        <div id="categories"></div>

        <!-- Вывод Авторов -->

        <button  onClick="ajaxload3()">Авторы</button>
        <script type="text/javascript">
            function ajaxload3(){
                var xhr=new XMLHttpRequest();
                xhr.onreadystatechange=function(){
                    if(this.readyState==4){
                        if(this.status >=200 && xhr.status < 300){
                            document.getElementById('authors2').innerHTML=this.responseText;
                        }
                    }
                }
                xhr.open('GET', 'http://oskmarket/api/authors',true);
                xhr.setRequestHeader('Content-Type', 'application/json');
                xhr.send();
            }
        </script>
        <div id="authors2"></div>

        <!-- Новости по id -->

        <select id="news_option" onClick="ajaxload4()">
            <option disabled>Выберите автора</option>
        </select>
        <script type="text/javascript">
            $(function(){
                $.getJSON('http://oskmarket/api/news', function(data) {
                    $.each(data, function(key, val) {
                        $('#news_option').append('<option value="' + val.id + '">' + val.title + '</option>');
                    });
                });
            });
        </script>
        <select id="news_option" onClick="ajaxload4()">
            <option disabled>Выберите автора</option>
        </select>
        <script type="text/javascript">
            function ajaxload4(){
                let val = $("#news_option").val();
                var xhr=new XMLHttpRequest();
                xhr.onreadystatechange=function(){
                    if(this.readyState==4){
                        if(this.status >=200 && xhr.status < 300){
                            document.getElementById('news').innerHTML=this.responseText;
                        }
                    }
                }
                xhr.open('GET', 'http://oskmarket/api/news/'+val+'?expand=categories,authors',true);
                xhr.setRequestHeader('Content-Type', 'application/json');
                xhr.send();
            }
        </script>
        <div id="news"></div>

    </div>
</div>
