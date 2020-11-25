<#import "parts/common.ftlh " as c>
<@c.page>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Навигация</title>
        <#--        <link  href="css/start.css" >-->
    </head>
    <body>
    <nav>
        <div class="nav nav-tabs" id="nav-tab" role="tablist">
            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
               aria-controls="nav-home" aria-selected="true">Добавить</a>
            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"
               aria-controls="nav-profile" aria-selected="false">Редактировать</a>
            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab"
               aria-controls="nav-contact" aria-selected="false">Удалить</a>
        </div>
    </nav>
    <div class="tab-content" id="nav-tabContent">
        <#--        ДОБАВЛЕНИЕ ПЛАНА ЭТАЖА-->
        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
            <form id="upload-form" class="needs-validation" novalidate="">
                <br/>
                <h4 class="mb-3">Добавление плана этажа</h4>
                <div class="row">
                    <div class="col-md-8 mb-3">
                        <label for="adress">Адрес организации</label>
                        <select class="custom-select d-block w-100" id="address" required="">
                            <option value="">Выбрать...</option>
                            <option>г.Москва,ул. Дмитровское шоссе, д.1</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-8 mb-3">
                        <label for="name">Наименование органзации</label>
                        <select class="custom-select d-block w-100" id="name" required="">
                            <option value="">Выбрать...</option>
                            <option>АО ИК АСЭ</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label for="floor">Этаж</label>
                        <select class="custom-select d-block w-100" id="floor" required="">
                            <option value="">Выбрать...</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select>
                    </div>
                    <div class="col-md-4 mb-3">
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
                    <input onchange="readFile(this)" accept=".svg" type="file" class="form-file-input" id="customFile">
                    <label class="form-file-label" for="customFile">
                    </label>
                </div>

            </form>

            <div class="col-md-8 result-room-path">

                <div style="display:none;">Масштаб
                    <br>
                    <input type="range" min="60" max="600" id="lineSc"
                           onchange="Scale(getNumberFromRange('lineSc', 0.01, 'rangeNumberSc', '%'))" value="100"
                           step="2">
                    <div id="rangeNumberSc">100%</div>
                </div>
                <div id="resultsOfSearch">
                    <div class="placeX">
                        <br>
                        <input style="margin-right:20px;" type="range" min="-1580" max="1580" id="lineX"
                               oninput="changeX(getNumberFromRange('lineX', -1, 'rangeNumberX'))" value="0" step="10">X
                        : <span id="rangeNumberX">0</span>
                    </div>
                    <div class="placeY">


                        <input type="range" min="-1112" max="1112" id="lineY"
                               oninput="changeY(getNumberFromRange('lineY', 1, 'rangeNumberY'))" value="0" step="10">
                        <div class="labelY">Y: <span id="rangeNumberY">0</span></div>
                    </div>
                    <div id="svgContainer"></div>
                </div>
            </div>
        </div>

    <#--        РЕДАКТИРОВАНИЕ ПЛАНА ЭТАЖА-->
    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
        <form id="upload-form" class="needs-validation" novalidate="">
            <br/>
            <h4 class="mb-3">Редактирование плана этажа</h4>
            <div class="row">
                <div class="col-md-8 mb-3">
                    <label for="adress">Адрес организации</label>
                    <select class="custom-select d-block w-100" id="address" required="">
                        <option value="">Выбрать...</option>
                        <option>г.Москва,ул. Дмитровское шоссе, д.1</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-8 mb-3">
                    <label for="name">Наименование органзации</label>
                    <select class="custom-select d-block w-100" id="name" required="">
                        <option value="">Выбрать...</option>
                        <option>АО ИК АСЭ</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="floor">Этаж</label>
                    <select class="custom-select d-block w-100" id="floor" required="">
                        <option value="">Выбрать...</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                    </select>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="block">Корпус</label>
                    <select class="custom-select d-block w-100" id="block" required="">
                        <option value="">Выбрать...</option>
                        <option>А</option>
                        <option>B</option>
                        <option>C</option>
                    </select>
                </div>
            </div>
            <input class="btn btn-primary" type="submit" value="Поиск">
        </form>
    </div>

    <#--        УДАЛЕНИЕ ПЛАНА ЭТАЖА-->
    <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
        <form id="upload-form" class="needs-validation" novalidate="">
            <br/>
            <h4 class="mb-3">Удаление плана этажа</h4>
            <div class="row">
                <div class="col-md-8 mb-3">
                    <label for="adress">Адрес организации</label>
                    <select class="custom-select d-block w-100" id="address" required="">
                        <option value="">Выбрать...</option>
                        <option>г.Москва,ул. Дмитровское шоссе, д.1</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-8 mb-3">
                    <label for="name">Наименование органзации</label>
                    <select class="custom-select d-block w-100" id="name" required="">
                        <option value="">Выбрать...</option>
                        <option>АО ИК АСЭ</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="floor">Этаж</label>
                    <select class="custom-select d-block w-100" id="floor" required="">
                        <option value="">Выбрать...</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                    </select>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="block">Корпус</label>
                    <select class="custom-select d-block w-100" id="block" required="">
                        <option value="">Выбрать...</option>
                        <option>А</option>
                        <option>B</option>
                        <option>C</option>
                    </select>
                </div>
            </div>
            <input class="btn btn-primary" type="submit" value="Удалить">
        </form>
    </div>

    </div>


<#--    </div>-->
    </body>
    </html>

    <style type="text/css">
        #upload-form {
        }

        #p1 {
            color: #192fcb;
        }
    </style>

    <script>
        function ifPictureShown() {

            // var file = document.getElementById("customFile").files[0];
            // var fReader = new FileReader();
            // fReader.onload = (function(aFile) {
            //     return function(e) {
            //         var span = document.createElement('span');
            //         span.innerHTML = ['<img class="images" src="', e.target.result,'" title="', aFile.name, '"/>'].join('');
            //         document.getElementById('thumbs').insertBefore(span, null);
            // var pathValue = document.getElementById("customFile").value;
            // pathValue = pathValue.replace("fakepath", "svg");
            //  alert(pathValue);
            //  document.getElementById("forPath").setAttribute("data", pathValue);
            //     };
            // })(f);
            // fReader.readAsDataURL(file);
        }

        function readFile(input) {
            let file = input.files[0];

            let reader = new FileReader();

            reader.readAsText(file);

            reader.onload = function () {
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

        // function fileShow() {
        //     $("#content").load("somefile.html", function (response, status, xhr) {
        //         if (status == "error") {
        //             $("#content").html("An error occured: " + xhr.status + " " + xhr.statusText);
        //         }
        //     });
        // }
    </script>
</@c.page>
