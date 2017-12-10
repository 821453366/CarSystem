<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>4S汽车数据统计</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="css/global.css" media="all">
    <link rel="stylesheet" href="plugins/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="css/eu_manage.css" media="all">
    <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/button_js.js" charset="utf-8"></script>
</head>
<script type="text/javascript">
    $(document).ready(function () {

        $("#refer_div").hide();
        $("#refer_div2").hide();
        var cartype = [];
        var dataLength = [];
        $.post("/car_find",
            function (data) {
                data = data.data;
                for (var i = 0; i < data.length; i++) {
                    cartype = data[i];

                    $(".tr_1").append("<tr> " +
                        "<td>" + (i + 1) + "</td>" +
                        "<td>" + cartype['carname'] + "</td>" +
                        "<td>" + cartype['carEntity'] + "</td>" +
                        "<td>" + cartype['carPrice'] + "</td>" +
                        "<td>" + cartype['carSize'] + "</td>" +
                        "<td>" + cartype['carFuelConsumption'] + "</td>" +
                        "<td>" + cartype['carDisplacement'] + "</td>" +
                        "<td>" +
                        "<button   class='layui-btn layui-btn-small'  onclick='update(" + cartype['id'] + ")'>编辑</button>" +
                        "<button href='javascript:;' data-id='1' data-opt='del' class='layui-btn layui-btn-danger layui-btn-small' onclick='dele( " + cartype['id'] + ")'>删除</button>" +
                        "</td> </tr>"
                    );
                }

            },
            "json"
        );
//删除数据
    });

    //编辑数据
    function dele(id) {
        layer.confirm('确认删除？', function (index) {
            $.post("/car_delete",
                {id: id},
                function (data) {
                    layer.msg(data.msg,{time:300}, function () {
                        window.location.reload();
                    });
                });
            layer.close(index);
            //向服务端发送删除指令
        });

    }
    function update(id) {
        $.post("/car_queryById",{id:id},function (data) {
            data = data.data[0];
            $("#update_div").find("input[name = 'carBean.id']").val(data['id']);
            $("#update_div").find("input[name = 'carBean.carEntity']").val(data['carEntity']);
            $("#update_div").find("input[name = 'carBean.carPrice']").val(data['carPrice']);
            $("#update_div").find("input[name = 'carBean.carSize']").val(data['carSize']);
            $("#update_div").find("input[name = 'carBean.carFuelConsumption']").val(data['carFuelConsumption']);
            $("#update_div").find("input[name = 'carBean.carDisplacement']").val(data['carDisplacement']);
        layer.open({
            type: 1,
            title: '信息修改',
            area: ['700px', '300px'],
            skin: 'yourclass',
            content: $('#update_div')
        });

//                document.getElementById("aa").options["东风本田"].selected = true;
//            var  i=document.getElementById('sel').options[document.getElementById('sel').selectedIndex].value;
        });
    }

</script>

<body>

<div id='la' style='margin: 15px;'>
    <fieldset class='layui-elem-field site-demo-button'>
        <legend>4S汽车数据统计</legend>
        <div style=''>

            <div class='layui-btn-group'>
                <button id='refer' class='refer layui-btn layui-btn-normal layui-btn'><i class='layui-icon'></i>&nbsp;增加车系
                </button>
            </div>

        </div>
        <div>
            <table class='layui-table'>
                <colgroup>
                </colgroup>
                <thead>
                <tr>
                    <th>编号</th>
                    <th>品牌</th>
                    <th>车型号</th>
                    <th>价钱</th>
                    <th>座位</th>
                    <th>耗油量</th>
                    <th>库存</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody class='tr_1'>

                </tbody>
            </table>
        </div>
        <div id='demo8'></div>
        <ul id='biuuu_city_list'></ul>
    </fieldset>
</div>
<script type='text/javascript' src='plugins/layui/layui.js'></script>
</body>

<div id='refer_div' hidden>
    <form class='layui-form' id ="info">
        <div class='huan_a'></div>
        <div class='layui-form-item'>
            <label class='layui-form-label'>品牌</label>
            <div class='layui-input-inline'>
                <select name='carBean.carname' lay-filter='aihao'>
                    <%--<option value=''></option>--%>
                    <option value='宝马' selected=''>宝马</option>
                    <option value='东风本田'>东风本田</option>
                    <option value='大众'>大众</option>
                    <option value='吉利'>吉利</option>
                    <option value='本田'>本田</option>
                    <option value='雪佛兰'>雪佛兰</option>
                    <option value='现代'>现代</option>
                    <option value='标志'>标志</option>
                    <option value='马自达'>马自达</option>
                </select>
            </div>
            <div class='layui-inline'>
                <label class='layui-form-label'>车型号</label>
                <div class='layui-input-inline'>
                    <input type='text' name='carBean.carEntity' lay-verify='text' autocomplete='off' class='layui-input'>
                </div>
            </div>
            <div class='layui-form-item'>
                <div class='layui-inline'>
                    <label class='layui-form-label'>价钱</label>
                    <div class='layui-input-inline'>
                        <input type='text' name='carBean.carPrice' lay-verify='text' autocomplete='off' class='layui-input'>
                    </div>
                </div>

                <div class='layui-inline'>
                    <label class='layui-form-label'>座位</label>
                    <div class='layui-input-inline'>
                        <input type='text' name='carBean.carSize' lay-verify='text' autocomplete='off' class='layui-input'>
                    </div>
                </div>
            </div>
            <div class='layui-form-item'>
                <div class='layui-inline'>
                    <label class='layui-form-label'>耗油量</label>
                    <div class='layui-input-inline'>
                        <input type='text' name='carBean.carFuelConsumption' lay-verify='text' autocomplete='off'
                               class='layui-input'>
                    </div>
                </div>

                <div class='layui-inline'>
                    <label class='layui-form-label'>库存</label>
                    <div class='layui-input-inline'>
                        <input type='text' name='carBean.carDisplacement' lay-verify='text' autocomplete='off'
                               class='layui-input'>
                    </div>
                </div>

            </div>
            <div class='layui-form-item'>
                <div class='huan_a'></div>
                <div class='layui-input-block huan_center'>
                    <button class='layui-btn' type='button' onclick="addCar()">立即提交</button>
                    <button type='reset' class='layui-btn layui-btn-primary'>重置</button>
                </div>
            </div>
        </div>
    </form>


</div>
<div id='update_div' hidden>
    <form class='layui-form' id ="update_info" action="/car_update" method="post">
        <div class='huan_a'></div>
        <div class='layui-form-item'>
            <input hidden name = "carBean.id">
            <label class='layui-form-label'>品牌</label>
            <div class='layui-input-inline'>
                <select name='carBean.carname' id="aa" lay-filter='aihao'>
                    <%--<option value=''></option>--%>
                    <option value='宝马' >宝马</option>
                    <option value='东风本田'>东风本田</option>
                    <option value='大众' >大众</option>
                    <option value='吉利'>吉利</option>
                    <option value='本田'>本田</option>
                    <option value='雪佛兰'>雪佛兰</option>
                    <option value='现代'>现代</option>
                    <option value='标志'>标志</option>
                    <option value='马自达'>马自达</option>
                </select>
            </div>
            <div class='layui-inline'>
                <label class='layui-form-label'>车型号</label>
                <div class='layui-input-inline'>
                    <input type='text' name='carBean.carEntity' lay-verify='text' autocomplete='off' class='layui-input'>
                </div>
            </div>
            <div class='layui-form-item'>
                <div class='layui-inline'>
                    <label class='layui-form-label'>价钱</label>
                    <div class='layui-input-inline'>
                        <input type='text' name='carBean.carPrice' lay-verify='text' autocomplete='off' class='layui-input'>
                    </div>
                </div>

                <div class='layui-inline'>
                    <label class='layui-form-label'>座位</label>
                    <div class='layui-input-inline'>
                        <input type='text' name='carBean.carSize' lay-verify='text' autocomplete='off' class='layui-input'>
                    </div>
                </div>
            </div>
            <div class='layui-form-item'>
                <div class='layui-inline'>
                    <label class='layui-form-label'>耗油量</label>
                    <div class='layui-input-inline'>
                        <input type='text' name='carBean.carFuelConsumption' lay-verify='text' autocomplete='off'
                               class='layui-input'>
                    </div>
                </div>

                <div class='layui-inline'>
                    <label class='layui-form-label'>库存</label>
                    <div class='layui-input-inline'>
                        <input type='text' name='carBean.carDisplacement' lay-verify='text' autocomplete='off'
                               class='layui-input'>
                    </div>
                </div>

            </div>
            <div class='layui-form-item'>
                <div class='huan_a'></div>
                <div class='layui-input-block huan_center'>
                    <button class='layui-btn' type='submit'>立即提交</button>
                    <button type='reset' class='layui-btn layui-btn-primary'>重置</button>
                </div>
            </div>
        </div>
    </form>


</div>

<div>

</div>

</html>