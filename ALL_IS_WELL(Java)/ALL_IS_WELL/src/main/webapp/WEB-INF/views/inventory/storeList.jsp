<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>재고입고조회</title>
        <script src="https://kit.fontawesome.com/794ac64f16.js" crossorigin="anonymous"></script>
        <style>
            .main-area {
   				 width: 1200px;
    			height: 600px;
    			margin: auto;
    			margin-top: 20px; /* Add this line */
}

            .title-area {
                text-align: center;
                display: flex;
                flex-direction: row;
                justify-content: space-between;
            }

            #title {
                font-size: 35px;
            }

            #sendRequest {
                font-size: 20px;
                color: white;
                background-color: #FF8686;
                size: 10px;
                border: none;
                padding: 10px 15px;
                cursor: pointer;
                border-radius: 5px;
                font-weight: bold;
            }

            #sendMail:hover {
                background-color: #555;
                transition: 0.7s;
            }

            .search-area {
                display: flex;
                align-items: center;
            }



            .search-area input[type="text"] {
                padding: 5px;
                margin-right: 20px;
                width: 300px;
                height: 30px;
                border: 1px solid gray;
                border-radius: 10px;
            }



            .list-area {
                margin-top: 20px;
            }


            .category-area {
                display: flex;
                align-items: center;

            }

            .category-area label {
                margin-right: 5px;
            }

            .category-area select {
                padding: 5px;
                border-radius: 10px;
                border: 1px solid gray;
                height: 40px;
            }

            .category-icon {
                margin-right: 5px;
                color: #555;
            }

            .category-icon::before {
                font-family: "Font Awesome 5 Free";
                content: "\f0a5";
                font-weight: 900;
            }

            #search-icon {
                color: gray;
            }

            #delete-button {
                color: #5A8CF2;
                font-weight: bold;
                font-size: 15px;
                margin-left: 2%;
            }

            .list-area {
                margin-top: 20px;

                background: #FFFFFF;
                border: 1px solid #C4C4C4;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
                border-radius: 20px;
            }

            .list-area table {
                border-collapse: collapse;
                width: 100%;


                width: 100%;

            }

            .list-area th,
            .list-area td {
                padding: 20px;
                border-bottom: 1px solid #ddd;
                text-align: left;
            }

            .list-area th {
                font-size: 20px;
                font-weight: normal;

            }

            .list-area th:first-child,
            .list-area td:first-child {
                width: 30px;
            }

            .list-area th:last-child,
            .list-area td:last-child {
                width: 100px;
            }

            .list-area td input[type="checkbox"] {
                margin: 0;
                padding: 0;
            }

            .list-area th:nth-child(3) {
                padding-left: 10%;                
                width: 150px;
            }

            .list-area th:nth-child(2) {
                padding-left: 10%;
                width: 150px;
            }

            .list-area th:nth-child(4) {
                padding-left: 10%;
                width: 150px;
            }

            .list-area td:nth-child(3) {
                padding-left: 10.5%;
                width: 150px;                
            }

            .list-area td:nth-child(2) {
                padding-left: 10.5%;
                width: 150px;                
            }

            .list-area td:nth-child(4) {
                padding-left: 10%;
                width: 150px;                
            }
			
			
.list-area td:nth-child(4) {
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}

            .number-area {
                text-align: center;
            }

            .number-area a {
                display: inline-block;
                margin: 5px;
                padding: 8px 12px;
                text-decoration: none;
                border: none;
                color: inherit;
                font-size: 20px;
            }

            #previous {
                color: #5A8CF2;
            }

            #after {
                color: #5A8CF2;
            }

            .number-area a:hover {
                color: #5A8CF2;
            }

            .list-area th input[type="checkbox"] {
                appearance: none;
                width: 20px;
                height: 20px;
                border: 2px solid #C4C4C4;
                border-radius: 3px;
                outline: none;
                vertical-align: middle;
                position: relative;
                top: 2px;
                cursor: pointer;
            }

            .list-area td input[type="checkbox"] {
                appearance: none;
                width: 20px;
                height: 20px;
                border: 2px solid #C4C4C4;
                border-radius: 3px;
                outline: none;
                vertical-align: middle;
                position: relative;
                top: 2px;
                cursor: pointer;
            }

            .list-area td input[type="checkbox"]:checked {
                background-color: lightgray;
                border-color: lightgray;
            }

            .list-area th input[type="checkbox"]:checked {
                background-color: lightgray;
                border-color: lightgray;
            }

            #content{
                display: grid;
                grid-template-columns: 300px 1620px;
            }

        </style>
    </head>

    <body>
        <header>
            <%@ include file="/WEB-INF/views/common/admin/header.jsp" %>
        </header>


        <div id="content">
            <div id="wrap">
                <%@ include file="/WEB-INF/views/common/admin/side-bar.jsp" %>
            </div>


            <div class="main-area">
                <div class="title-area">
                    <span id="title">재고입고조회</span>

                    <form action="" class="search-area">
                        <label for="search" class="category-area">
                            <select name="search" id="search">
                                <option value="kind">종류</option>
                                <option value="title">개수</option>
                                <option value="date">입고일자</option>
                            </select>

					

                        </label>
                        <input type="text" id="search-input">
                        <a href="" id="search-icon"><i class="fa-solid fa-magnifying-glass"></i></a>
                        
                    </form>
                   


                </div>
                <br>
                <br>
                <br>
                <br>
                <br>

					<!-- <button id="sendRequest">재고 신청하기</button> -->
                <div class="list-area">
                    <table>
                        <th><input type="checkbox" name="choose" value="selectAll" onclick="selectAll(this)"></th>
                        <th>종류</th>
                        <th>개수</th>
                        <th>입고일자</th>

                        <tr>
                            <td><input type="checkbox" name="choose"></td>
                            <td>메스</td>
                            <td>100</td>
                            <td>2023-07-14</td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" name="choose"></td>
                            <td>메스</td>
                            <td>100</td>
                            <td>2023-07-14</td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" name="choose"></td>
                           <td>메스</td>
                            <td>100</td>
                            <td>2023-07-14</td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" name="choose"></td>
                           <td>메스</td>
                            <td>100</td>
                            <td>2023-07-14</td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" name="choose"></td>
                           <td>메스</td>
                            <td>100</td>
                            <td>2023-07-14</td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" name="choose"></td>
                            <td>메스</td>
                            <td>100</td>
                            <td>2023-07-14</td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" name="choose"></td>
                            <td>메스</td>
                            <td>100</td>
                            <td>2023-07-14</td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" name="choose"></td>
                            <td>메스</td>
                            <td>100</td>
                            <td>2023-07-14</td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" name="choose"></td>
                            <td>메스</td>
                            <td>100</td>
                            <td>2023-07-14</td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" name="choose"></td>
                            <td>메스</td>
                            <td>100</td>
                            <td>2023-07-14</td>
                        </tr>




                    </table>
                </div>
                <br>
                <br>
                <br>

                <div class="number-area">
                    <a id="previous" href="">
                        < </a>
                            <a href=""> 1 </a>
                            <a href=""> 2 </a>
                            <a href=""> 3 </a>
                            <a href=""> 4 </a>
                            <a href=""> 5 </a>
                            <a id="after" href=""> > </a>
                </div>
            </div>

        </div>

        <footer>
            <%@ include file="/WEB-INF/views/common/admin/footer.jsp" %>
        </footer>

        <script>
            function selectAll(selectAll) {
                const checkboxes = document.getElementsByName('choose');

                checkboxes.forEach((checkbox) => {
                    checkbox.checked = selectAll.checked;
                })
            }
        </script>
    </body>

    </html>