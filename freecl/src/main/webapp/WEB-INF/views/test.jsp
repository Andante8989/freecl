<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./main.css">
</head>
<body>
    <div id="banner">
        <ul class="banner1">
            <li class="fadein"><img src="./images/image1.png" alt=""></li>
            <li class="fadein"><img src="./images/image2.png" alt=""></li>
            <li class="fadein"><img src="./images/image3.png" alt=""></li>
            <li class="fadein"><img src="./images/image4.png" alt=""></li>
            <li class="fadein"><img src="./images/image5.png" alt=""></li>
        </ul>
    </div>
    <div id="bannerBtn">
        <ul>
            <li> <input type="button" value="버튼1" onclick="bannerBtn(0)"></li>
            <li> <input type="button" value="버튼2" onclick="bannerBtn(1)"></li>
            <li> <input type="button" value="버튼3" onclick="bannerBtn(2)"></li>
            <li> <input type="button" value="버튼4" onclick="bannerBtn(3)"></li>
            <li> <input type="button" value="버튼5" onclick="bannerBtn(4)"></li>
        </ul>
    </div>
    <script type="text/javascript">
        var index = 0;
        banner();
        function banner(n){
            console.log(n);
            bannerImg = document.querySelectorAll('.banner1>li');
            if (index >= bannerImg.length){
                index = 0;
            }

            if (n != undefined){ //인자값없이 banner() 실행될 때
                index = n;
            }

            for(i=0; i<bannerImg.length; i++){
                if (i==index){
                    bannerImg.item(i).setAttribute('class','show on');
                } else {

                    bannerImg.item(i).setAttribute('class','show');
                }
            }
            index++;
        }

        function bannerBtn(n){
            clearInterval(rolling);
            banner(n);
            rolling = setInterval(banner,3000);
        }

        rolling = setInterval(banner,3000);
    </script>
</body>
</html>