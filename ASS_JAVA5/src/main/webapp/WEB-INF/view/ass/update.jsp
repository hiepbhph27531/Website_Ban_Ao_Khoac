<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script>
        function checkupdate(){
            var cf = confirm("Ban co muon update khong ???");
            if(cf == true){
                alert("Update thanh cong !!! :)");
                return true
            }else {
                return false;
            }
        }
    </script>
</head>
<body>
<h1 style="text-align: center; padding-top: 20px; padding-bottom: 20px">Quan ly Ao Khoac</h1>
<div class="container">

    <form action="/ass/ao-khoac/update" method="post">
        <div class="mb-3 row">
            <label  class="col-sm-2 col-form-label">Ma ao khoac</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="maAoKhoac" value="${ao.maAoKhoac}">
            </div>
        </div>

        <div class="mb-3 row">
            <label  class="col-sm-2 col-form-label">Ten Ao Khoac</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="tenAoKhoac" value="${ao.tenAoKhoac}">
            </div>
        </div>

        <div class="mb-3 row">
            <label  class="col-sm-2 col-form-label">So luong</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="soLuong" value="${ao.soLuong}">
            </div>
        </div>

        <div class="mb-3 row">
            <label  class="col-sm-2 col-form-label">Don gia</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="donGia" value="${ao.donGia}">
            </div>
        </div>

        <div class="mb-3 row">
            <label  class="col-sm-2 col-form-label">Chat Lieu</label>
            <div class="col-sm-10">
                <select class="form-select" aria-label="Default select example" name="chatLieu" value="${ao.chatLieu}">
                    <option value="Vai">Vai</option>
                    <option value="Cattong">Cattong</option>
                    <option value="Silicon">Silicon</option>
                </select>
            </div>
        </div>

        <div class="mb-3 row">
            <label  class="col-sm-2 col-form-label">Xuat Su</label>
            <div class="col-sm-10">
                <select class="form-select" aria-label="Default select example" name="xuatSu" value="${ao.xuatSu}">
                    <option value="America">America</option>
                    <option value="Viet Nam">Viet Nam</option>
                    <option value="Japan">Japan</option>
                    <option value="Korea">Korea</option>
                </select>
            </div>
        </div>

        <button type="submit" class="btn btn-success" onclick="return checkupdate();">Update</button>
    </form>

</div>
</body>
</html>