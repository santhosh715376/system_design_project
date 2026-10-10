<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>LMS User Management</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f9; padding: 20px; }
        .form-container { width: 50%; margin: 20px auto; background-color: white; padding: 20px; box-shadow: 0 0 10px rgba(0,0,0,0.1); border-radius: 5px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input[type="text"], select { width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        .btn { padding: 10px 15px; background-color: #4CAF50; color: white; border: none; border-radius: 4px; cursor: pointer; }
        .btn:hover { background-color: #45a049; }
        .header { text-align: center; }
        .back-link { display: block; text-align: center; margin-top: 15px; text-decoration: none; color: #2196F3; }
    </style>
</head>
<body>
    <div class="header">
        <h2>LMS User Management</h2>
    </div>

    <div class="form-container">
        <c:if test="${user != null}">
            <form action="update" method="post">
                <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                <h3>Edit User</h3>
        </c:if>
        <c:if test="${user == null}">
            <form action="insert" method="post">
                <h3>Add New User</h3>
        </c:if>

            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" value="<c:out value='${user.name}' />" required="required" />
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="text" name="email" value="<c:out value='${user.email}' />" required="required" />
            </div>

            <div class="form-group">
                <label>Role</label>
                <select name="role" required="required">
                    <option value="Learner" <c:if test="${user.role == 'Learner'}">selected</c:if>>Learner</option>
                    <option value="Instructor" <c:if test="${user.role == 'Instructor'}">selected</c:if>>Instructor</option>
                    <option value="Admin" <c:if test="${user.role == 'Admin'}">selected</c:if>>Admin</option>
                </select>
            </div>

            <button type="submit" class="btn">Save</button>
        </form>
        
        <a href="list" class="back-link">Back to List</a>
    </div>
</body>
</html>
