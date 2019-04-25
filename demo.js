function ShowLoginBox(){
    layer.open({
        type: 1,/*表示是div标签*/ 
        icon:5,
        title: "Sign in",
        //closeBtn: 0,
        area: ['400px','300px'],
        //skin: 'layui-layer-nobg', //没有背景色
        //shadeClose: true,
        content: $('#loginbox')//$获取id或者class等等吧
    });
    
}

function login(){
    var username=$.trim($("#txtUserName").val());
    var pwd=$.trim($("#txtPwd").val());
    if(username==""||pwd==""){
        layer.alert("Username or Password can't be null",{
            title:"Warning",
            icon:5
        });
    
    }

        $.post("Handler2.ashx", { username: username, pwd: pwd }, function (data) {
            if (data == "Enter correct!") {
                layer.alert("Enter correct!",{
                    title:"Congrats",
                    icon:6});
            }
            else {
                layer.alert("Username or Password may be not correct!", {
                    title: "Warning",
                    icon: 5
                });
            }
        });

        
    }
