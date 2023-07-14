<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script>
        function checkadd(){
            var cf = confirm("Ban co muon them khong ???");
            if(cf == true){
                alert("Them thanh cong!!!");
                return true;
            }else{
                return false;
            }
        }

        function checkdetail(){
            alert("Detail thanh cong !!! :)");
        }

        function checkdelete(){
            var cf = confirm("Ban co muon xoa khong ???");
            if(cf == true){
                alert("Xoa thanh cong!!!!");
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

    <form action="/ass/ao-khoac/search" method="get">
        Tim Kiem ten ao khoac: <p><input name="timkiem" value="${param.timkiem}"></p>
        Tim Kiem theo khoang gia  <p><input name="min" value="${param.min}"><input name="max" value="${param.max}"></p>
        <button type="submit" class="btn btn-success">Search</button>
    </form>


    <form action="/ass/ao-khoac/add" method="post">
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Ma ao khoac</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="maAoKhoac" value="${ao.maAoKhoac}">
            </div>
        </div>

        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Ten Ao Khoac</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="tenAoKhoac" value="${ao.tenAoKhoac}">
            </div>
        </div>

        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">So luong</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="soLuong" value="${ao.soLuong}">
            </div>
        </div>

        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Don gia</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="donGia" value="${ao.donGia}">
            </div>
        </div>

        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Chat Lieu</label>
            <div class="col-sm-10">
                <select class="form-select" aria-label="Default select example" name="chatLieu" value="${ao.chatLieu}">
                    <option value="Vai">Vai</option>
                    <option value="Cattong">Cattong</option>
                    <option value="Silicon">Silicon</option>
                </select>
            </div>
        </div>

        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">Xuat Su</label>
            <div class="col-sm-10">
                <select class="form-select" aria-label="Default select example" name="xuatSu" value="${ao.xuatSu}">
                    <option value="America">America</option>
                    <option value="Viet Nam">Viet Nam</option>
                    <option value="Japan">Japan</option>
                    <option value="Korea">Korea</option>
                </select>
            </div>
        </div>

        <button type="submit" class="btn btn-success" onclick="return checkadd();">Add</button>
    </form>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Ma Ao khoac</th>
            <th scope="col">Ten Ao khoac</th>
            <th scope="col">So luong</th>
            <th scope="col">Don gia</th>
            <th scope="col">Chat Lieu</th>
            <th scope="col">Xuat Su</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="sanPham" varStatus="stt">
            <tr>
                <td>${stt.index+1}</td>
                <td>${sanPham.maAoKhoac}</td>
                <td>${sanPham.tenAoKhoac}</td>
                <td>${sanPham.soLuong}</td>
                <td>${sanPham.donGia}</td>
                <td>${sanPham.chatLieu}</td>
                <td>${sanPham.xuatSu}</td>
                <td>
                    <a href="/ass/ao-khoac/detail/${sanPham.maAoKhoac}" type="button" class="btn btn-primary" onclick="return checkdetail();">Detail</a>
                    <a href="/ass/ao-khoac/delete/${sanPham.maAoKhoac}" type="button" class="btn btn-danger" onclick="return checkdelete();">Delete</a>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="">Previous</a></li>
            <li class="page-item"><a class="page-link" href="">Next</a></li>
        </ul>
    </nav>
</div>
</body>
</html>