/** layuiAdmin.std-v1.0.0 LPPL License By http://www.layui.com/admin/ */
 ;layui.define(["table","form"],function(e){var t=layui.$,i=layui.table;layui.form;i.render({elem:"#LAY-user-manage",url:layui.setter.base+"json/useradmin/webuser.js",cols:[[{type:"checkbox",fixed:"left"},{field:"id",width:100,title:"ID",sort:!0},{field:"username",title:"Username",minWidth:100},{field:"avatar",title:"头像",width:100,templet:"#imgTpl"},{field:"phone",title:"Phone"},{field:"email",title:"邮箱"},{field:"sex",width:80,title:"性别"},{field:"ip",title:"IP"},{field:"jointime",title:"加入时间",sort:!0},{title:"Operation",width:150,align:"center",fixed:"right",toolbar:"#table-useradmin-webuser"}]],page:!0,limit:30,height:"full-220",text:"Sorry, an error occurred while loading!"}),i.on("tool(LAY-user-manage)",function(e){e.data;if("del"===e.event)layer.prompt({formType:1,title:"敏感Operation，请验证口令"},function(t,i){layer.close(i),layer.confirm("真的Delete行么",function(t){e.del(),layer.close(t)})});else if("edit"===e.event){t(e.tr);layer.open({type:2,title:"EditUser ",content:"../../../views/user/user/userform.html",maxmin:!0,area:["500px","450px"],btn:["确定","Cancel "],yes:function(e,t){var l=window["layui-layer-iframe"+e],r="LAY-user-front-submit",n=t.find("iframe").contents().find("#"+r);l.layui.form.on("submit("+r+")",function(t){t.field;i.reload("LAY-user-front-submit"),layer.close(e)}),n.trigger("click")},success:function(e,t){}})}}),i.render({elem:"#LAY-user-back-manage",url:layui.setter.base+"json/useradmin/mangadmin.js",cols:[[{type:"checkbox",fixed:"left"},{field:"id",width:80,title:"ID",sort:!0},{field:"loginname",title:"Login Name"},{field:"telphone",title:"Phone"},{field:"email",title:"邮箱"},{field:"role",title:"Role"},{field:"jointime",title:"加入时间",sort:!0},{field:"check",title:"AuditStatus",templet:"#buttonTpl",minWidth:80,align:"center"},{title:"Operation",width:150,align:"center",fixed:"right",toolbar:"#table-useradmin-admin"}]],text:"Sorry, an error occurred while loading!"}),i.on("tool(LAY-user-back-manage)",function(e){e.data;if("del"===e.event)layer.prompt({formType:1,title:"敏感Operation，请验证口令"},function(t,i){layer.close(i),layer.confirm("确定Delete此Administrator ？",function(t){console.log(e),e.del(),layer.close(t)})});else if("edit"===e.event){t(e.tr);layer.open({type:2,title:"EditAdministrator ",content:"../../../views/user/administrators/adminform.html",area:["420px","420px"],btn:["确定","Cancel "],yes:function(e,t){var l=window["layui-layer-iframe"+e],r="LAY-user-back-submit",n=t.find("iframe").contents().find("#"+r);l.layui.form.on("submit("+r+")",function(t){t.field;i.reload("LAY-user-front-submit"),layer.close(e)}),n.trigger("click")},success:function(e,t){}})}}),i.render({elem:"#LAY-user-back-role",url:layui.setter.base+"json/useradmin/role.js",cols:[[{type:"checkbox",fixed:"left"},{field:"id",width:80,title:"ID",sort:!0},{field:"rolename",title:"Role名"},{field:"limits",title:"拥有Permissions"},{field:"descr",title:"具体Description"},{title:"Operation",width:150,align:"center",fixed:"right",toolbar:"#table-useradmin-admin"}]],text:"Sorry, an error occurred while loading!"}),i.on("tool(LAY-user-back-role)",function(e){e.data;if("del"===e.event)layer.confirm("确定Delete此Role？",function(t){e.del(),layer.close(t)});else if("edit"===e.event){t(e.tr);layer.open({type:2,title:"EditRole",content:"../../../views/user/administrators/roleform.html",area:["500px","480px"],btn:["确定","Cancel "],yes:function(e,t){var l=window["layui-layer-iframe"+e],r=t.find("iframe").contents().find("#LAY-user-role-submit");l.layui.form.on("submit(LAY-user-role-submit)",function(t){t.field;i.reload("LAY-user-back-role"),layer.close(e)}),r.trigger("click")},success:function(e,t){}})}}),e("useradmin",{})});