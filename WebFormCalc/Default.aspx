<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/appstyle.css" rel="stylesheet" type="text/css" />
    <title>Simple Calculator</title>
</head>
<body>

    <form id="form1" runat="server">
        <span class="calculator">
            <h1>This is my caluclator.</h1>
            <!--Left Number-->
            <span class="inputs">
                <input class="form-control" type="number" name="leftNum" />
            </span>
            <!--Operator Selection-->
            <%--<div class="form-group">
                <select name="Winner">
                    <% foreach (var option in Options)
                        { %>
                    <option value="<%=option.ToLower() %>"><%= option %></option>
                    <% } %>
                </select>
            </div>--%>
            <span class="inputs">
                <div class="form-group">
                    <select class="form-control" name="operator">
                        <option>+</option>
                        <option>-</option>
                    </select>
                </div>
            </span>

            <!--Right Number-->
            <span class="inputs">
                <input class="form-control" type="number" name="rightNum" />
            </span></span>

    </form>

</body>
</html>
