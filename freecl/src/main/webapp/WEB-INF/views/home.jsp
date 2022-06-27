<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
    

		   header{
		   background: white;
		   height: 215px;
		   padding:50px;
		   margin:0px;
		   }
		   main{
		   background: white;
		   min-height:700px;
		   }
		   footer{
		     background: white;
		     height: 310px;
		   }
		
			.dropdown{
			  position : relative;
			  display : inline-block;
			  backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
			}
			
			.dropbtn_icon{
			  font-family : 'Material Icons';
			  backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
			}
			.dropbtn{
			  border : none;
			  background-color: #white;
			  font-weight: 400;
			  color : rgb(37, 37, 37);
			  padding : 12px;
			  width :300px;
			  text-align: left;
			  cursor : pointer;
			  font-size : 15px;
			  backdrop-filter: blur( 13.5px );
              -webkit-backdrop-filter: blur( 13.5px );
            
			}
			.dropbtn:hover{
			  background-color : #dda0dd
            
			}
			
			
			.dropdown-content{
			  display : none;
			  position : absolute;
			  z-index : 1; /*다른 요소들보다 앞에 배치*/
			  font-weight: 400;
			  background-color: #dda0dd;
			  min-width : 200px;
			  backdrop-filter: blur( 13.5px );
              -webkit-backdrop-filter: blur( 13.5px );
			}
			
			.dropdown-content a{
			  display : block;
			  text-decoration : none;
			  color : rgb(37, 37, 37);
			  font-size: 12px;
			  padding : 12px 20px;
			  backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
			}
			
			.dropdown-content a:hover{
			  background-color : #F5BFF9
		
			}
			
			.dropdown:hover .dropdown-content {
			  display: block;
			}
			h1{
			  bold:10px;
			}
			
			#modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 150;
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
            
        }
        #modal .modal-window {
            border-radius: 5px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            width: 1000px;
            height: 10000px;
            position: relative;
            top: 100px;
            padding: 10px;
            background-color:pink;
            box-shadow: 0 px 0px 0 rgba( 31, 38, 135, 0.37 );
            background: rgba( 205, 136, 175, 0.70 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
        }
       
        #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }
        
        #logo {
		margin : 0px;
		width : 300px;
	}
	
	.inform{
	   position: absolute;
	   left:30%;
	   top:15%;
	   
	   
	}
	
	
	.ui-autocomplete-input{
	
	border-radius: 15px;
	width : 300px;
	height: 50px;
	
	
	}
	
    
    #calendar{
    margin-left: 50px;
	width : 45px;
    }
    
     #heart{
    margin: 0px;
	width : 45px;
    }
    
    #shopping{
    margin-bottom: 3px;
	width : 45px;
    }
    
</style>
</head>
		
<body>

		<title>Freecl</title>
		<header>
		<div class="inform">
			   <input type="hidden" name="searchOrder" value>
			   <input type="text" title="검색어를 입력하세요" id="keyword" name="keyword" value autocomplete="off" class="ui-autocomplete-input">
		<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
		  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
		</svg>
        <img id="calendar" src="/resources/image/calendar.png">
        <img id="heart" src="/resources/image/heart.png">
        <img id="shopping" src="/resources/image/shopping.png">
		
		   </div>
		   <img id="logo" src="/resources/image/freecl2.jpg">
		   <span class="material-symbols-outlined"></span>
		   
		   <br>
		   <br/>
		   <button type="button" class="btn btn-light" id='btn-modal'>〓</button>
		   
			    <div id="modal" class="modal-overlay">
			        <div class="modal-window">
			         <div class="close-area">X</div>
			            <div class="content">
			                <p>커뮤니티</p>
			                <p>마이페이지</p>
			                <p>고객센터</p>
			              </div>
			            </div>
			      </div>
		
		    <div class="dropdown">
		      <span class="dropbtn">베스트</span>
		    </div> 
		    <div class="dropdown">
		       <span class="dropbtn">신상</span>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">아우터</span>
		       <div class="dropdown-content">
		        <a href="#">자켓</a>
		        <a href="#">조끼</a>
		        <a href="#">패딩</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">상의</span>
		       <div class="dropdown-content">
		        <a href="#">자켓</a>
		        <a href="#">조끼</a>
		        <a href="#">패딩</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">셔츠</span>
		       <div class="dropdown-content">
		        <a href="#">자켓</a>
		        <a href="#">조끼</a>
		        <a href="#">패딩</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">트레이닝</span>
		       <div class="dropdown-content">
		        <a href="#">자켓</a>
		        <a href="#">조끼</a>
		        <a href="#">패딩</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">베이직</span>
		       <div class="dropdown-content">
		        <a href="#">자켓</a>
		        <a href="#">조끼</a>
		        <a href="#">패딩</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">원피스</span>
		       <div class="dropdown-content">
		        <a href="#">자켓</a>
		        <a href="#">조끼</a>
		        <a href="#">패딩</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">스커트</span>
		       <div class="dropdown-content">
		        <a href="#">자켓</a>
		        <a href="#">조끼</a>
		        <a href="#">패딩</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">팬츠</span>
		       <div class="dropdown-content">
		        <a href="#">자켓</a>
		        <a href="#">조끼</a>
		        <a href="#">패딩</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">가방</span>
		       <div class="dropdown-content">
		        <a href="#">자켓</a>
		        <a href="#">조끼</a>
		        <a href="#">패딩</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">신발</span>
		       <div class="dropdown-content">
		        <a href="#">자켓</a>
		        <a href="#">조끼</a>
		        <a href="#">패딩</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">악세사리</span>
		       <div class="dropdown-content">
		        <a href="#">자켓</a>
		        <a href="#">조끼</a>
		        <a href="#">패딩</a>
		      </div>
		    </div>
		  </header>
		  <main>
		  <a href="/detail"><img src="/resources/image/main.png" ></a>
		  </main>
		     
		  <footer>하단</footer>
		
    
    <script>
    
    const modal = document.getElementById("modal")
    function modalOn() {
        modal.style.display = "flex"
    }
    function isModalOn() {
        return modal.style.display === "flex"
    }
    function modalOff() {
        modal.style.display = "none"
    }
    const btnModal = document.getElementById("btn-modal")
    btnModal.addEventListener("click", e => {
        modalOn()
    })
    const closeBtn = modal.querySelector(".close-area")
    closeBtn.addEventListener("click", e => {
        modalOff()
    })
    modal.addEventListener("click", e => {
        const evTarget = e.target
        if(evTarget.classList.contains("modal-overlay")) {
            modalOff()
        }
    })
    window.addEventListener("keyup", e => {
        if(isModalOn() && e.key === "Escape") {
            modalOff()
        }
    })
    </script>

</body>
</html>
