<#import "parts/common.ftlh" as c>
<@c.page>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Навигация</title>
        <link href="css/start.css">
        <style type="text/css">
            #navbarSupportedContent .close {
                display: none;
            }

            #navbarSupportedContent li {
                font-size: 14px;
                background: #F8F9FA;
            }

            #upload-form {
            }

            #p1 {
                color: #192fcb;
            }

            .hidden {
                display: none;
            }

            #addFinish {
                margin-top: 40px;
            }

            .result-room-path {
                overflow: hidden
            }

            #searchEdit {
                width: 100%;
            }

            .info label {
                font-weight: bold;
                margin-top: 20px;
            }

            .infoField {
                font-size: 17px;
            }

            .info button {
                padding: 0px;
            }

            #myDIV {
                margin-top: 30px;
                margin-bottom: 40px;
            }

            /* Удалите поля и отступы из списка */
            ul {
                margin: 0;
                padding: 0;
                list-style: none;
                padding-left: 0px;
                margin-left: 0px;
            }

            /* Стиль элементов списка */
            ul li {
                cursor: pointer;
                position: relative;
                padding: 12px 8px 12px 40px;
                background: #eee;
                font-size: 18px;
                transition: 0.2s;

                /* сделайте элементы списка невыбираемыми */
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            /* Установить все нечетные элементы списка в другой цвет (зебра) */
            ul li:nth-child(odd) {
                background: #f9f9f9;
            }

            /* Более темный фон-цвет при наведении */
            ul li:hover {
                background: #ddd;
            }

            /* При нажатии на кнопку, добавить цвет фона и вычеркнуть текст */
            ul li.checked {
                background: #888;
                color: #fff;
                text-decoration: line-through;
            }

            /* Добавить "checked" отметить при нажатии на кнопку */
            ul li.checked::before {
                content: '';
                position: absolute;
                border-color: #fff;
                border-style: solid;
                border-width: 0 2px 2px 0;
                top: 10px;
                left: 16px;
                transform: rotate(45deg);
                height: 15px;
                width: 7px;
            }

            /* Стиль кнопки "Закрыть" */
            .close {
                position: absolute;
                right: 0;
                top: 0;
                padding: 12px 16px 12px 16px;
            }

            .close:hover {
                background-color: #2774ec;
                color: white;
            }

            /* Стиль заголовка */
            /* .header {
              background-color: #f44336;
              padding: 30px 40px;
              color: white;
              text-align: center;
            }

            /* Очистить поплавки после заголовка */
            .header:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Стиль ввода */
            /* input {
              margin: 0;
              border: none;
              border-radius: 0;
              width: 75%;
              padding: 10px;
              float: left;
              font-size: 16px;
            } */

            /* Стиль кнопки "Добавить" */
            .addBtn {
                padding: 10px;
                width: 25%;
                background: #d9d9d9;
                color: #555;
                float: left;
                text-align: center;
                font-size: 16px;
                cursor: pointer;
                transition: 0.3s;
                border-radius: 0;
            }

            .addBtn:hover {
                background-color: #bbb;
            }

            .modal-body {
                padding: 30px;
            }

            button.close {
                padding: 5px;
                border: none;
                background: transparent;
            }

            button.close:hover {
                background: transparent;
                color: #0275d8;
            }

            #mapResultEdit {
                width: 100%;
                border: 1px solid #000;
                margin-top: 40px;
                overflow: hidden;
                max-height: 300px;
            }

            .hiddenPrintBtn {
                display: none;
            }
        </style>
        <style type="text/css">
            #upload-form {
            }

            #p1 {
                color: #192fcb;
            }

            .hidden {
                display: none;
            }

            #addFinish {
                margin-top: 40px;
            }

            .result-room-path {
                overflow: hidden
            }

            #searchEdit {
                width: 100%;
            }

            .info label {
                font-weight: bold;
                margin-top: 20px;
            }

            .infoField {
                font-size: 17px;
            }

            .info button {
                padding: 0px;
            }

            #myDIV {
                margin-top: 30px;
                margin-bottom: 40px;
            }

            /* Удалите поля и отступы из списка */
            ul {
                margin: 0;
                padding: 0;
                list-style: none;
                padding-left: 0px;
                margin-left: 0px;
            }

            /* Стиль элементов списка */
            ul li {
                cursor: pointer;
                position: relative;
                padding: 12px 8px 12px 40px;
                background: #eee;
                font-size: 18px;
                transition: 0.2s;

                /* сделайте элементы списка невыбираемыми */
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            /* Установить все нечетные элементы списка в другой цвет (зебра) */
            ul li:nth-child(odd) {
                background: #f9f9f9;
            }

            /* Более темный фон-цвет при наведении */
            ul li:hover {
                background: #ddd;
            }

            /* При нажатии на кнопку, добавить цвет фона и вычеркнуть текст */
            ul li.checked {
                background: #888;
                color: #fff;
                text-decoration: line-through;
            }

            /* Добавить "checked" отметить при нажатии на кнопку */
            ul li.checked::before {
                content: '';
                position: absolute;
                border-color: #fff;
                border-style: solid;
                border-width: 0 2px 2px 0;
                top: 10px;
                left: 16px;
                transform: rotate(45deg);
                height: 15px;
                width: 7px;
            }

            /* Стиль кнопки "Закрыть" */
            .close {
                position: absolute;
                right: 0;
                top: 0;
                padding: 12px 16px 12px 16px;
            }

            .close:hover {
                background-color: #2774ec;
                color: white;
            }

            /* Стиль заголовка */
            /* .header {
              background-color: #f44336;
              padding: 30px 40px;
              color: white;
              text-align: center;
            }

            /* Очистить поплавки после заголовка */
            .header:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Стиль ввода */
            /* input {
              margin: 0;
              border: none;
              border-radius: 0;
              width: 75%;
              padding: 10px;
              float: left;
              font-size: 16px;
            } */

            /* Стиль кнопки "Добавить" */
            .addBtn {
                padding: 10px;
                width: 25%;
                background: #d9d9d9;
                color: #555;
                float: left;
                text-align: center;
                font-size: 16px;
                cursor: pointer;
                transition: 0.3s;
                border-radius: 0;
            }

            .addBtn:hover {
                background-color: #bbb;
            }

            .modal-body {
                padding: 30px;
            }

            button.close {
                padding: 5px;
                border: none;
                background: transparent;
            }

            button.close:hover {
                background: transparent;
                color: #0275d8;
            }

            #mapResultEdit {
                width: 100%;
                border: 1px solid #000;
                margin-top: 40px;
                overflow: hidden;
                max-height: 300px;
            }
        </style>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
              crossorigin="anonymous">

    </head>
    <body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link active" id="nav-add-tab" data-toggle="tab" href="#nav-add"
                           role="tab"
                           aria-controls="nav-add" aria-selected="true">Добавить</a>
                        <a class="nav-item nav-link" id="nav-edit-tab" data-toggle="tab" href="#nav-edit" role="tab"
                           aria-controls="nav-edit" aria-selected="false">Редактировать</a>
                        <a class="nav-item nav-link" id="nav-delete-tab" data-toggle="tab" href="#nav-delete" role="tab"
                           aria-controls="nav-delete" aria-selected="false">Удалить</a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-add" role="tabpanel" aria-labelledby="nav-add-tab">
                        <form id="upload-form" class="needs-validation" novalidate="">
                            <br/>
                            <h4 class="mb-3">Добавление плана этажа</h4>
                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="adress">Адрес организации</label>
                                    <select class="custom-select d-block w-100" id="address" required="">
                                        <option value="">Выбрать...</option>
                                        <option>г.Москва,ул. Дмитровское шоссе, д.1</option>
                                    </select>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="name">Наименование органзации</label>
                                    <select class="custom-select d-block w-100" id="name" required="">
                                        <option value="">Выбрать...</option>
                                        <option>АО ИК АСЭ</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="floor">Этаж</label>
                                    <select class="custom-select d-block w-100" id="floor" required="">
                                        <option value="">Выбрать...</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                    </select>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="block">Корпус</label>
                                    <select class="custom-select d-block w-100" id="block" required="">
                                        <option value="">Выбрать...</option>
                                        <option>А</option>
                                        <option>B</option>
                                        <option>C</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-file">
                                <label for="customFile">Загрузка плана</label>
                                <br/>
                                <input onchange="uploadFile(this)" accept=".svg" type="file" class="form-file-input"
                                       id="customFile">
                                <label class="form-file-label" for="customFile">
                                </label>
                            </div>
                            <div id="add-result" class="row hidden">
                                <div class="col-md-9">

                                    <div class=" result-room-path">

                                        <div style="display:none;">Масштаб
                                            <br>
                                            <input type="range" min="60" max="600" id="lineSc"
                                                   onchange="Scale(getNumberFromRange('lineSc', 0.01, 'rangeNumberSc', '%'))"
                                                   value="100"
                                                   step="2">
                                            <div id="rangeNumberSc">100%</div>
                                        </div>
                                        <div id="resultsOfSearch">
                                            <!-- <div class="placeX">
                                                <br>
                                                <input style="margin-right:20px;" type="range" min="-1580" max="1580" id="lineX"
                                                       oninput="changeX(getNumberFromRange('lineX', -1, 'rangeNumberX'))" value="0" step="10">X
                                                : <span id="rangeNumberX">0</span>
                                            </div> -->
                                            <!-- <div class="placeY">


                                                <input type="range" min="-1112" max="1112" id="lineY"
                                                       oninput="changeY(getNumberFromRange('lineY', 1, 'rangeNumberY'))" value="0" step="10">
                                                <div class="labelY">Y: <span id="rangeNumberY">0</span></div>
                                            </div> -->
                                            <div style="margin-top:40px;" id="svgContainer"></div>
                                            <!-- ПОЛЯ ДЛЯ ЗАДАНИЯ ПАРАМЕТРОВ ПЛАНА -->
                                            <div id="edit_allparm_container">
                                                <!-- СТАНДАРТНЫЕ СМЕЩЕНИЯ -->
                                                <div id="edit_uploadparam_container" style="display:none">
                                                    <div class="placeX">
                                                        <div class="labelX">Стандартный сдвиг по оси X: <span
                                                                    id="rangeNumberX">0</span></div>
                                                        <input style="margin-right:20px;" type="range" min="-1580"
                                                               max="1580" id="lineX"
                                                               oninput="changeX(getNumberFromRange('lineX', -1, 'rangeNumberX'))"
                                                               value="0" step="10">
                                                    </div>

                                                    <div class="placeY">
                                                        <div class="labelY">Стандартный сдвиг по оси Y: <span
                                                                    id="rangeNumberY">0</span></div>
                                                        <input type="range" min="-1112" max="1112" id="lineY"
                                                               oninput="changeY(getNumberFromRange('lineY', 1, 'rangeNumberY'))"
                                                               value="0" step="10">
                                                    </div>

                                                    <div class="placeSc">
                                                        <div class="labelSc">Стандартный масштаб: <span
                                                                    id="rangeNumberSc">100%</span>
                                                        </div>
                                                        <input type="range" min="60" max="600" id="lineSc"
                                                               oninput="Scale(getNumberFromRange('lineSc', 0.01, 'rangeNumberSc','%'))"
                                                               value="100" step="10">
                                                    </div>
                                                </div>


                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <input id="addFinish" class="btn btn-primary  btn-lg" type="button"
                                               value="Добавить план">
                                    </div>

                                </div>
                            </div>
                        </form>

                    </div>


                    <!-- РЕДАКТИРОВАНИЕ ПЛАНА -->
                    <div class="tab-pane fade" id="nav-edit" role="tabpanel" aria-labelledby="nav-edit-tab">
                        <form id="edit-form" class="needs-validation" novalidate="">
                            <br/>
                            <h4 class="mb-3">Редактирование плана этажа</h4>
                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="adress-edit">Адрес организации</label>
                                    <select class="custom-select d-block w-100" id="address-edit" required="">
                                        <option value="">Выбрать...</option>
                                        <option>г.Москва,ул. Дмитровское шоссе, д.1</option>
                                    </select>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="name-edit">Наименование организации</label>
                                    <select class="custom-select d-block w-100" id="name-edit" required="">
                                        <option value="">Выбрать...</option>
                                        <option>АО ИК АСЭ</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="floor-edit">Этаж</label>
                                    <select class="custom-select d-block w-100" id="floor-edit" required="">
                                        <option value="">Выбрать...</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                    </select>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="block-edit">Корпус</label>
                                    <select class="custom-select d-block w-100" id="block-edit" required="">
                                        <option value="">Выбрать...</option>
                                        <option>А</option>
                                        <option>B</option>
                                        <option>C</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <input onclick='showResultEdit()' id='searchEdit' class="btn btn-primary"
                                           type="button"
                                           value="Найти">
                                </div>
                                <div style="margin-top:40px;" id="svgContainer1"></div>
                            </div>
                            <div id="containerEdit" class='hidden'>
                                <div class="row searchEditResult">
                                    <div class="col-md-5">
                                        <div class="info" style="margin-top:50px;">
                                            <p style="font-size: 22px;">Информация о плане</p>
                                            <label for="infoAddress">Адрес организации</label>
                                            <div class='infoField' id="infoAddress"></div>
                                            <!-- Изменение адреса -->
                                            <div id="AddressModal" class="modal fade" tabindex="-1" role="dialog"
                                                 aria-labelledby="AddressModal" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close"><span style="font-size:25px;"
                                                                                             aria-hidden="true">&times;</span>
                                                            </button>
                                                            <h4 class="modal-title" id="gridModalLabel">Редактировать
                                                                поле
                                                                "Адрес"</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <input id='addressEditorField' class="form-control"
                                                                   type="text"
                                                                   placeholder="Введите адрес">
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default"
                                                                    data-dismiss="modal" style='padding:10px 20px'>
                                                                Отменить
                                                            </button>
                                                            <button type="button" onclick="saveAddress()"
                                                                    id="saveEditorAddress" class="btn btn-primary"
                                                                    style='padding:10px 20px'>Сохранить
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="bd-example bd-example-padded-bottom">
                                                <button type="button" class="btn btn-link" data-toggle="modal"
                                                        data-target="#AddressModal">
                                                    Изменить
                                                </button>
                                            </div>


                                            <!-- Изменить наименование -->
                                            <label for="infoName">Наименование организации</label>
                                            <div class='infoField' id="infoName"></div>
                                            <div id="NameModal" class="modal fade" tabindex="-1" role="dialog"
                                                 aria-labelledby="NameModal" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close"><span style="font-size:25px;"
                                                                                             aria-hidden="true">&times;</span>
                                                            </button>
                                                            <h4 class="modal-title" id="gridModalLabel">Редактировать
                                                                поле
                                                                "Наименование организации"</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <input id='nameEditorField' class="form-control" type="text"
                                                                   placeholder="Введите наименование">
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default"
                                                                    data-dismiss="modal" style='padding:10px 20px'>
                                                                Отменить
                                                            </button>
                                                            <button type="button" onclick="saveName()"
                                                                    class="btn btn-primary" style='padding:10px 20px'>
                                                                Сохранить
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="bd-example bd-example-padded-bottom">
                                                <button type="button" class="btn btn-link" data-toggle="modal"
                                                        data-target="#NameModal">
                                                    Изменить
                                                </button>
                                            </div>


                                            <!-- Изменить этаж -->
                                            <label for="infoFloor">Этаж</label>
                                            <div class='infoField' id="infoFloor"></div>
                                            <div id="FloorModal" class="modal fade" tabindex="-1" role="dialog"
                                                 aria-labelledby="FloorModal" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close"><span style="font-size:25px;"
                                                                                             aria-hidden="true">&times;</span>
                                                            </button>
                                                            <h4 class="modal-title" id="gridModalLabel">Редактировать
                                                                поле
                                                                "Этаж"</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <input id='floorEditorField' class="form-control"
                                                                   type="text"
                                                                   placeholder="Введите этаж">
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default"
                                                                    data-dismiss="modal" style='padding:10px 20px'>
                                                                Отменить
                                                            </button>
                                                            <button type="button" onclick="saveFloor()"
                                                                    class="btn btn-primary" style='padding:10px 20px'>
                                                                Сохранить
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="bd-example bd-example-padded-bottom">
                                                <button type="button" class="btn btn-link" data-toggle="modal"
                                                        data-target="#FloorModal">
                                                    Изменить
                                                </button>
                                            </div>


                                            <!-- Изменить корпус -->
                                            <label for="infoBlock">Корпус</label>
                                            <div class='infoField' id="infoBlock"></div>
                                            <div id="BlockModal" class="modal fade" tabindex="-1" role="dialog"
                                                 aria-labelledby="BlockModal" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close"><span style="font-size:25px;"
                                                                                             aria-hidden="true">&times;</span>
                                                            </button>
                                                            <h4 class="modal-title" id="gridModalLabel">Редактировать
                                                                поле
                                                                "Блок"</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <input id='blockEditorField' class="form-control"
                                                                   type="text"
                                                                   placeholder="Введите блок">
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default"
                                                                    data-dismiss="modal" style='padding:10px 20px'>
                                                                Отменить
                                                            </button>
                                                            <button type="button" onclick="saveBlock()"
                                                                    class="btn btn-primary" style='padding:10px 20px'>
                                                                Сохранить
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="bd-example bd-example-padded-bottom">
                                                <button type="button" class="btn btn-link" data-toggle="modal"
                                                        data-target="#BlockModal">
                                                    Изменить
                                                </button>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-7" style="text-align:right;">
                                        <div id="mapResultEdit"><img src='C:\svg\5_Etazh_-_ochischenny.svg'></div>
                                        <button id='btnChangeName' type="button" class="btn btn-link">Изменить</button>
                                        <br>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div id="myDIV" class="header">
                                            <div class="row addObject_title">
                                                <p style="font-size: 22px;">Добавление объектов инфраструктуры</p>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <select class="form-select" id="myInput" placeholder="Название...">
                                                        <option value="Кофемашина">Кофемашина</option>
                                                        <option value="Банкомат">Банкомат</option>
                                                        <option value="Аппарат с едой">Аппарат с едой</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6">
                                                    <button type='button' onclick="newElement()"
                                                            class="addBtn btn btn-primary" style='font-weight:bold;'>+
                                                    </button>
                                                </div>
                                            </div>

                                        </div>


                                        <ul id="myUL">

                                        </ul>
                                    </div>
                                    <div class="col-md-6" style="padding-top:30px;">
                                        <div class="row qr_title">
                                            <p style="font-size: 22px;">Добавление QR-кодов</p>
                                            <div id="app">

                                                <div class="row">
                                                    <div class="text col-md-6">
                                                        <form>
                                                            <!-- <div class="form-group mx-3 my-3">
                                                                <label for="qrCodeText">Укажите название для QR-кода (краткое местоположение):</label><br />
                                                                <textarea id="qrCodeText" class="form-control" rows="6"></textarea>
                                                            </div> -->
                                                            <div class="form-group">
                                                                <input type="button" class="btn btn-primary"
                                                                       value="Сгенерировать QR-код" id="generateQRCode">
                                                                <input type="button"
                                                                       class="btn btn-primary hiddenPrintBtn"
                                                                       value="Распечатать QR-код" id="printQRCode"
                                                                       style="margin-top:20px;">
                                                            </div>
                                                        </form>
                                                    </div>

                                                    <div id="qrCodeOutput" class="text-center col-md-6">

                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </form>
                    </div>
                    <!-- Удаление плана -->
                    <div class="tab-pane fade" id="nav-delete" role="tabpanel" aria-labelledby="nav-delete-tab">
                        <form id="edit-form" class="needs-validation" novalidate="">
                            <br/>
                            <h4 class="mb-3">Удаление плана этажа</h4>
                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="adress-delete">Адрес организации</label>
                                    <select class="custom-select d-block w-100" id="address-delete" required="">
                                        <option value="">Выбрать...</option>
                                        <option>г.Москва,ул. Дмитровское шоссе, д.1</option>
                                    </select>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="name-delete">Наименование организации</label>
                                    <select class="custom-select d-block w-100" id="name-delete" required="">
                                        <option value="">Выбрать...</option>
                                        <option>АО ИК АСЭ</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="floor-delete">Этаж</label>
                                    <select class="custom-select d-block w-100" id="floor-delete" required="">
                                        <option value="">Выбрать...</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                    </select>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="block-delete">Корпус</label>
                                    <select class="custom-select d-block w-100" id="block-delete" required="">
                                        <option value="">Выбрать...</option>
                                        <option>А</option>
                                        <option>B</option>
                                        <option>C</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <input  id='searchDelete' class="btn btn-primary"
                                           type="button"
                                           value="Удалить">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
            crossorigin="anonymous"></script>
    <script>

        var origHW = {
            width: null,
            height: null
        };

        var PlanData = [];

        PlanData[0] = {
            width: null,
            height: null
        };

        var constLagX = 0;
        var constLagY = 0;
        var dynamicCoef = 1;

        var lagX = 0;
        var lagY = 0;

        var viewBoxX = 0;
        var viewBoxY = 0;
        var viewBoxH = null;//= origHW.height;
        var viewBoxW = null;//= origHW.width;

        var mouse_x, mouse_y;
        var elem;

        var currentScale = 1;

        function readFile123(input) {
            let file = input.files[0];

            let reader = new FileReader();

            reader.readAsText(file);

            reader.onload = function () {
                document.getElementById('add-result').classList.remove('hidden');
                document.getElementById("svgContainer").insertAdjacentHTML("afterbegin", reader.result)
                console.log(reader.result);
            };

            reader.onerror = function () {
                console.log(reader.error);
            };

        }

        function formShow() {
            var addForm = document.getElementById("upload-form");
            addForm.style.display = "block";
        }

        function isEmpty(str) {
            if (str.trim() == '') {
                return false;
            }
            ;
            return true;
        }

        function showResultEdit() {
            let addressEdit = document.getElementById('address-edit').value;
            let nameEdit = document.getElementById('name-edit').value;
            let floorEdit = document.getElementById('floor-edit').value;
            let blockEdit = document.getElementById('block-edit').value;
            let infoAddress = document.getElementById('infoAddress');
            let infoName = document.getElementById('infoName');
            let infoFloor = document.getElementById('infoFloor');
            let infoBlock = document.getElementById('infoBlock');
            let mapResultEdit = document.getElementById('mapResultEdit');
            let containerEdit = document.getElementById('containerEdit');
            if (isEmpty(addressEdit) && isEmpty(nameEdit) && isEmpty(floorEdit) && isEmpty(blockEdit)) {
                infoAddress.innerHTML = addressEdit;
                infoName.innerHTML = nameEdit;
                infoFloor.innerHTML = floorEdit;
                infoBlock.innerHTML = blockEdit;
                // mapResultEdit.innerHTML = "<img src='5_Etazh_-_ochischenny.svg'>";
                containerEdit.classList.remove('hidden');

            }
        }

        var myNodelist = document.getElementsByTagName("LI");
        var i;
        for (i = 0; i < myNodelist.length; i++) {
            var span = document.createElement("SPAN");
            var txt = document.createTextNode("\u00D7");
            span.className = "close";
            span.appendChild(txt);
            myNodelist[i].appendChild(span);
        }


        var close = document.getElementsByClassName("close");
        var i;
        for (i = 0; i < close.length; i++) {
            close[i].onclick = function () {
                var div = this.parentElement;
                div.style.display = "none";
            }
        }


        function newElement() {
            var li = document.createElement("li");
            var inputValue = document.getElementById("myInput").value;
            var t = document.createTextNode(inputValue);
            li.appendChild(t);
            if (inputValue === '') {
                alert("Выберите объект инфраструктуры!");
            } else {
                document.getElementById("myUL").appendChild(li);
            }
            document.getElementById("myInput").value = "";

            var span = document.createElement("SPAN");
            var txt = document.createTextNode("\u00D7");
            span.className = "close";
            span.appendChild(txt);
            li.appendChild(span);

            for (i = 0; i < close.length; i++) {
                close[i].onclick = function () {
                    var div = this.parentElement;
                    div.style.display = "none";
                }
            }
        }

        function saveAddress() {
            let infoAddress = document.getElementById('infoAddress');
            let infoName = document.getElementById('infoName');
            let infoFloor = document.getElementById('infoFloor');
            let infoBlock = document.getElementById('infoBlock');
            let newAddress = document.getElementById('addressEditorField').value;
            if (newAddress != '') {
                infoAddress.innerHTML = newAddress;
            }
        }

        function saveName() {
            let infoAddress = document.getElementById('infoAddress');
            let infoName = document.getElementById('infoName');
            let infoFloor = document.getElementById('infoFloor');
            let infoBlock = document.getElementById('infoBlock');
            let newName = document.getElementById('nameEditorField').value;
            if (newName != '') {
                infoName.innerHTML = newName;
            }
        }

        function saveFloor() {
            let infoAddress = document.getElementById('infoAddress');
            let infoName = document.getElementById('infoName');
            let infoFloor = document.getElementById('infoFloor');
            let infoBlock = document.getElementById('infoBlock');
            let newFloor = document.getElementById('floorEditorField').value;
            if (newFloor != '') {
                infoFloor.innerHTML = newFloor;
            }
        }

        function saveBlock() {
            let infoAddress = document.getElementById('infoAddress');
            let infoName = document.getElementById('infoName');
            let infoFloor = document.getElementById('infoFloor');
            let infoBlock = document.getElementById('infoBlock');
            let newBlock = document.getElementById('blockEditorField').value;
            if (newBlock != '') {
                infoBlock.innerHTML = newBlock;
            }
        }

        function changeWindow(scale = dynamicCoef) {
            $('svg').attr('width', origW * scale);
            $('svg').attr('height', origH * scale);
        }

        function changeX(line = lagX) {
            lagX = line;
            viewBoxX = (origHW.width / 2) + constLagX + lagX - (origHW.width / 2) / (currentScale * dynamicCoef);
            $('svg').attr('viewBox', ' ' + viewBoxX + ' ' + viewBoxY + ' ' + viewBoxW + ' ' + viewBoxH);
        }

        function changeY(line = lagY) {
            lagY = line;
            viewBoxY = (origHW.height / 2) + constLagY + lagY - (origHW.height / 2) / (currentScale * dynamicCoef);

            $('svg').attr('viewBox', ' ' + viewBoxX + ' ' + viewBoxY + ' ' + viewBoxW + ' ' + viewBoxH);
        }

        function Scale(scale = currentScale) {
            currentScale = scale;
            viewBoxW = origHW.width / (scale * dynamicCoef);
            viewBoxH = origHW.height / (scale * dynamicCoef);
            viewBoxX = (origHW.width / 2) + constLagX + lagX - (origHW.width / 2) / (scale * dynamicCoef);
            viewBoxY = (origHW.height / 2) + constLagY + lagY - (origHW.height / 2) / (scale * dynamicCoef);

            $('svg').attr('viewBox', ' ' + viewBoxX + ' ' + viewBoxY + ' ' + viewBoxW + ' ' + viewBoxH);
        }

        //--------------------------------------


        function getNumberFromRange(rangeInputID, multiplier = 1, indicatorID = null, indicatorAdditionalText = '') {

            line = document.getElementById(rangeInputID).value;
            console.log(line);
            if (indicatorID != null) {
                document.getElementById(indicatorID).innerHTML = line + indicatorAdditionalText;
            }
            return line * multiplier;
        }

        function setNumberToRange(number, rangeInputID, multiplier = 1, indicatorID = null, indicatorAdditionalText = '') {
            document.getElementById(rangeInputID).value = number * multiplier;
            if (indicatorID != null) {
                document.getElementById(indicatorID).innerHTML = Math.floor(number * multiplier) + indicatorAdditionalText;
            }
        }


        async function uploadFile(file) {

            $("#svgContainer").empty();
            console.log(file);
            await readFile(file);
            //аписываем значения оригинальной высоты и ширины картинки в БД
            SetDisplayByID("edit_uploadparam_container", true);
            document.getElementById("lineX").min = -origHW.width;
            document.getElementById("lineX").max = origHW.width;

            document.getElementById("lineY").min = -origHW.height;
            document.getElementById("lineY").max = origHW.height;


            viewBoxH = origHW.height;
            viewBoxW = origHW.width;

            //МЫШЬМЫШЬМЫШЬМЫШЬМЫШЬМЫШЬ

            mouseMonitor(document.getElementById('svgContainer'));

            function mouseMonitor(elem) {
                var first_x;
                var first_y;
                var elemCord;

                position = false;
                $(elem).mousedown(function () {
                    position = true;
                    elemCord = elem.getBoundingClientRect();
                    first_x = event.pageX - elemCord.left - window.pageXOffset; //window.pageYOffset;
                    first_y = event.pageY - elemCord.top - window.pageYOffset; /*- elem.offsetTop;*/

                })
                $("#svgContainer").mousedown(function () {
                    $(this).css('cursor', 'pointer')
                });
                $("#svgContainer").mouseup(function () {
                    $(this).css('cursor', 'default')
                });
                $(elem).mouseup(function () {
                    position = false;
                })
                elem.onmousemove = mousemove;

                function mousemove(event) {
                    elemCord = elem.getBoundingClientRect();
                    if (elem.attachEvent != null) {
                        mouse_x = window.event.pageX - elemCord.left - window.pageXOffset;/*- elem.offsetLeft;*/
                        mouse_y = window.event.pageY - elemCord.top - window.pageYOffset; /*- elem.offsetTop;*/
                    } else if (!elem.attachEvent && elem.addEventListener) {
                        mouse_x = event.pageX - elemCord.left - window.pageXOffset;/*- elem.offsetLeft;*/
                        mouse_y = event.pageY - elemCord.top - window.pageYOffset; /*- elem.offsetTop;*/
                    }
                    console.log('x=' + mouse_x + '; ' + 'y=' + mouse_y + "width = " + $(elem).width());

                    if (position && (Math.random() * 10) % 2) {
                        dndSVG();
                    }
                }

                function dndSVG() {

                    dndLagX = mouse_x - first_x;
                    dndLagY = mouse_y - first_y;

                    console.log('dndx=' + dndLagX + '; ' + 'dndy=' + dndLagY + 'fx=' + first_x + 'fy=' + first_y);

                    if (Math.abs(dndLagX) >= 10 || Math.abs(dndLagY) >= 10) {

                        changeX(lagX - dndLagX / (currentScale * 5));
                        setNumberToRange(lagX, 'lineX', -1, 'rangeNumberX');
                        changeY(lagY - dndLagY / (currentScale * 5));
                        setNumberToRange(lagY, 'lineY', 1, 'rangeNumberY');

                        //$('svg').attr('viewBox', ' ' + viewBoxX + ' ' + viewBoxY + ' ' + viewBoxW + ' ' + viewBoxH);
                    }
                }

                setScaleByWheel(elem);

                function setScaleByWheel(elem) {
                    if (elem.addEventListener) {
                        if ('onwheel' in document) {
                            // IE9+, FF17+
                            elem.addEventListener("wheel", onWheel);
                        } else if ('onmousewheel' in document) {
                            // устаревший вариант события
                            elem.addEventListener("mousewheel", onWheel);
                        } else {
                            // Firefox < 17
                            elem.addEventListener("MozMousePixelScroll", onWheel);
                        }
                    } else { // IE8-
                        elem.attachEvent("onmousewheel", onWheel);
                    }

                    function onWheel(e) {
                        e = e || window.event;

                        // deltaY, detail содержат пиксели
                        // wheelDelta не дает возможность узнать количество пикселей
                        // onwheel || MozMousePixelScroll || onmousewheel
                        var delta = e.deltaY || e.detail || e.wheelDelta;

                        //var indicator = document.getElementById('rangeNumberSc');

                        currentScale -= delta / 2.5 / 100;

                        if (currentScale > 6) {
                            currentScale = 6;
                        } else {
                            if (currentScale < 0.6) {
                                currentScale = 0.6;
                            }
                        }
                        setNumberToRange(currentScale, 'lineSc', 100, 'rangeNumberSc', '%')
                        Scale();


                        e.preventDefault ? e.preventDefault() : (e.returnValue = false);
                    }
                }
            }

            //МЫШЬМЫШЬМЫШЬМЫШЬМЫШЬМЫШЬКОНЕЦ


        }

        async function readFile(input) {

            var promise = new Promise(async (resolve, reject) => {

                let file = input.files[0];
                let reader = new FileReader();

                reader.readAsText(file);
                reader.onload = function () {

                    document.getElementById("svgContainer").insertAdjacentHTML("afterbegin", reader.result);


                    let width = document.getElementsByTagName("svg")[0].getAttribute("width");
                    let height = document.getElementsByTagName("svg")[0].getAttribute("height");
                    origHW.height = +height.substr(0, height.length - 2);
                    origHW.width = +width.substr(0, width.length - 2);

                    // Scale();

                    // document.getElementById('svgContainer').style.height = origHW.height;
                    // document.getElementById('svgContainer').style.width = origHW.width;


                    resolve(origHW);
                };

                reader.onerror = function () {
                    console.log(reader.error);
                };
            });
            return promise;
        }


        function SetDisplayByID(id, check) {
            var elem = document.getElementById(id);
            if (check)
                elem.style.display = "block";
            else
                elem.style.display = "none";
        }


    </script>

    <script src="http://cosmic.mearie.org/2011/01/qrjs/qr.js"></script>

    <script>
        let infoAddress = document.getElementById('infoAddress');
        let infoName = document.getElementById('infoName');
        let infoFloor = document.getElementById('infoFloor');
        let infoBlock = document.getElementById('infoBlock');
        const el = (selector) => document.querySelector(selector);


        el('#generateQRCode').addEventListener('click', function () {


            let qrCodeOutput = el('#qrCodeOutput');


            let text = infoAddress + infoName + infoFloor + infoBlock;


            qrCodeOutput.innerHTML = "";


            qrCodeOutput.append(QRCode.generateHTML(text, {}));
            document.getElementById('printQRCode').style.display = 'block';
        });

    </script>
    </body>
    </html>
</@c.page>