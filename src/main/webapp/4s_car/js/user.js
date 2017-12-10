/**
 * Created 马欢欢 pc on 2017/5/23.
 */

$(document).ready(function () {


//添加数据弹出框
    $("#refer").click(function () {

        layer.open({
            type: 1,
            title: '添加车系',
            area: ['700px', '300px'],
            skin: 'yourclass',
            content: $('#refer_div')

        });
    });

    //自带js框架
    layui.use(['form', 'layedit', 'laydate'], function() {
        var form = layui.form(),
            layer = layui.layer,
            layedit = layui.layedit,
            laydate = layui.laydate;

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');
        //自定义验证规则
        form.verify({
            title: function(value) {
                if(value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            },
            pass: [/(.+){6,12}$/, '密码必须6到12位'],
            content: function(value) {
                layedit.sync(editIndex);
            }
        });

        //监听提交
        form.on('submit(demo1)', function(data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });

    });
});

function addCar() {
    var User = $("#info").serialize();
    $.post("/user_add",
        User,
        function (data) {
            layer.msg(data.msg,{time:300}, function () {
                window.location.reload();
            });
    });

}