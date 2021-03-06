<%@ page language="java"  contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="../../css/pintuer.css">
    <link rel="stylesheet" href="../../css/admin.css">
    <script src="../../js/jquery.js"></script>
    <script src="../../js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加用户</strong></div>
    <div class="body-content" >
        <form method="post" class="form-x" action="/user/doupdate.do?id=${user.id}">
            <div class="form-group">
                <div class="label">
                    <label>用户账号：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="${user.username}" name="username" disabled="disabled"/>
                    <div class="tips"></div>
                </div>
            </div>

            <if condition="$iscid eq 1">
                <div class="form-group">
                    <div class="label">
                        <label>账号状态：</label>
                    </div>
                    <div class="field">
                        <select name="islocked" class="input w50" value="${user.islocked}">
                            <c:if test="${user.islocked == 1}">
                                <option value="1" selected="selected">启用</option>
                                <option value="0">禁用</option>
                            </c:if>
                            <c:if test="${user.islocked == 0}">
                                <option value="1">启用</option>
                                <option value="0" selected="selected">禁用</option>
                            </c:if>
                        </select>
                        <div class="tips"></div>
                    </div>
                </div>

            </if>
            <div class="form-group">
                <div class="label">
                    <label>账号描述：</label>
                </div>
                <div class="field">
                    <textarea class="input w50" name="userdesc" style=" height:90px;">${user.userdesc}</textarea>
                    <div class="tips"></div>
                </div>
            </div>

            <div class="clear"></div>

            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>
