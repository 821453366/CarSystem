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
    <script type="text/javascript" src="js/user.js" charset="utf-8"></script>
</head>
<script type="text/javascript">
    $(document).ready(function () {

        $("#refer_div").hide();
        $("#refer_div2").hide();
        var cartype = [];
        var dataLength = [];
        $.post("/user_find",
            function (data) {
                data = data.data;
                for (var i = 0; i < data.length; i++) {
                    cartype = data[i];

                    $(".tr_1").append("<tr> " +
                        "<td>" + (i + 1) + "</td>" +
                        "<td>" + cartype['username'] + "</td>" +
                        "<td>" + cartype['sex'] + "</td>" +
                        "<td>" + cartype['phone'] + "</td>" +
                        "<td>" + cartype['age'] + "</td>" +
                        "<td>" + cartype['position'] + "</td>" +
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
            $.post("/user_delete",
                {id: id},
                function (data) {
                    layer.msg(data.msg, {time: 300}, function () {
                        window.location.reload();
                    });
                });
            layer.close(index);
            //向服务端发送删除指令
        });

    }

    function update(id) {
        $.post("/user_queryById", {id: id}, function (data) {
            data = data.data[0];
            $("#update_div").find("input[name = 'user.id']").val(data['id']);
            $("#update_div").find("input[name = 'user.username']").val(data['username']);
            $("#update_div").find("input[name = 'user.sex']").val(data['sex']);
            $("#update_div").find("input[name = 'user.phone']").val(data['phone']);
            $("#update_div").find("input[name = 'user.age']").val(data['age']);
            $("#update_div").find("input[name = 'user.position']").val(data['position']);
            layer.open({
                type: 1,
                title: '信息修改',
                area: ['700px', '300px'],
                skin: 'yourclass',
                content: $('#update_div')
            });
        });
    }

</script>

<body>

<div id='la' style='margin: 15px;'>
    <fieldset class='layui-elem-field site-demo-button'>
        <legend>用户信息</legend>
        <div style=''>


            <blockquote class="layui-elem-quote layui-quote-nm" id="footer">
                <button id='refer' class='refer layui-btn layui-btn-normal layui-btn'><i class='layui-icon'></i>&nbsp;添加用户
                </button>
                <div class='layui-input-inline'>
                    <input type='text' name='user.username' lay-verify='text' autocomplete='off'
                           class='layui-input' placeholder="姓名搜索">
                </div>
                <button id='sousuo'  class='refer layui-btn layui-btn-radius layui-btn'><i class='layui-icon'></i>&nbsp;搜索
                </button>
            </blockquote>

        </div>
        <div>
            <table class='layui-table'>
                <colgroup>
                </colgroup>
                <thead>
                <tr>
                    <th>编号</th>
                    <th>用户名</th>
                    <th>性别</th>
                    <th>手机号</th>
                    <th>年龄</th>
                    <th>职位</th>
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
    <form class='layui-form' id="info">
        <div class='huan_a'></div>
        <div class='layui-form-item'>
            <div class='layui-inline'>
                <label class='layui-form-label'>姓名</label>
                <div class='layui-input-inline'>
                    <input type='text' name='user.username' lay-verify='text' autocomplete='off'
                           class='layui-input'>
                </div>
            </div>
            <div class='layui-inline'>
                <label class='layui-form-label'>性别</label>
                <div class='layui-input-inline'>
                    <input type='radio' name='user.sex'
                           class='layui-input' value="男" title="男" checked>
                    <input type='radio' name='user.sex'
                           class='layui-input' value="女" title="女">
                </div>
            </div>
            <div class='layui-form-item'>
                <div class='layui-inline'>
                    <label class='layui-form-label'>手机号</label>
                    <div class='layui-input-inline'>
                        <input type='text' name='user.phone' lay-verify='text' autocomplete='off'
                               class='layui-input'>
                    </div>
                </div>

                <div class='layui-inline'>
                    <label class='layui-form-label'>职位</label>
                    <div class='layui-input-inline'>
                        <select name='user.position' lay-filter='aihao'>
                            <%--<option value=''></option>--%>
                            <option value='总经理' selected=''>总经理</option>
                            <option value='销售经理'>销售经理</option>
                            <option value='前台接待'>前台接待</option>
                            <option value='销售员工'>销售员工</option>
                        </select>
                    </div>
                </div>
            <div class='layui-form-item'>
                <div class='layui-inline'>
                    <label class='layui-form-label'>年龄</label>
                    <div class='layui-input-inline'>
                        <input type='text' name='user.age' lay-verify='text' autocomplete='off'
                               class='layui-input'>
                    </div>
                </div>
                <div class='layui-inline'>
                    <label class='layui-form-label'>密码</label>
                    <div class='layui-input-inline'>
                        <input type='password' name='user.password' lay-verify='text' autocomplete='off'
                               class='layui-input'>
                    </div>
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
    <form class='layui-form' id="update_info" action="/user_update" method="post">
        <div class='huan_a'></div>
        <div class='layui-form-item'>
            <input type='text'  name='user.id' hidden>
            <div class='layui-inline'>
                <label class='layui-form-label'>姓名</label>
                <div class='layui-input-inline'>
                    <input type='text' name='user.username' lay-verify='text' autocomplete='off'
                           class='layui-input'>
                </div>
            </div>
            <div class='layui-inline'>
                <label class='layui-form-label'>性别</label>
                <div class='layui-input-inline'>
                    <input type='radio' name='user.sex'
                           class='layui-input' value="男" title="男" checked>
                    <input type='radio' name='user.sex'
                           class='layui-input' value="女" title="女">
                </div>
            </div>
            <div class='layui-form-item'>
                <div class='layui-inline'>
                    <label class='layui-form-label'>手机号</label>
                    <div class='layui-input-inline'>
                        <input type='text' name='user.phone' lay-verify='text' autocomplete='off'
                               class='layui-input'>
                    </div>
                </div>

                <div class='layui-inline'>
                    <label class='layui-form-label'>职位</label>
                    <div class='layui-input-inline'>
                        <select name='user.position' lay-filter='aihao'>
                            <%--<option value=''></option>--%>
                            <option value='总经理' selected=''>总经理</option>
                            <option value='销售经理'>销售经理</option>
                            <option value='前台接待'>前台接待</option>
                            <option value='销售员工'>销售员工</option>
                        </select>
                    </div>
                </div>
                <div class='layui-form-item'>
                    <div class='layui-inline'>
                        <label class='layui-form-label'>年龄</label>
                        <div class='layui-input-inline'>
                            <input type='text' name='user.age' lay-verify='text' autocomplete='off'
                                   class='layui-input'>
                        </div>
                    </div>

                </div>
            </div>
            <div class='layui-form-item'>
                <div class='huan_a'></div>
                <div class='layui-input-block huan_center'>
                    <button class='layui-btn' type='submit' >立即提交</button>
                    <button type='reset' class='layui-btn layui-btn-primary'>重置</button>
                </div>
            </div>
        </div>
    </form>
</div>

<div>

</div>

</html>