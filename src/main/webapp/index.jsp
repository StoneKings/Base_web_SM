<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>test</title>
</head>
<body>
<h2>

    用户名：<input type="text" value="" id="name"> <input type="button" id="add" value="测试添加"></br>
    <span id="result"></span>
</h2>
</body>
<script type="text/javascript" src="/js/jquery-1.10.2.js"></script>

<script type="text/javascript">
    $('#add').click(function () {
        $.ajax({
            url:'/user/addUser',
            type:'post',
            data:{
                name:$('#name').val()
            },
            dataType:'json',
            success:function (data) {
                $('#result').html('添加成功，用户ID：'+data.id);
            }
        })
    })



</script>
</html>
