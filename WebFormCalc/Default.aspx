﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/appstyle.css" rel="stylesheet" type="text/css" />
    <title>Simple Calculator</title>
</head>
<body>

    <div class="calculator">

        <!--Heading-->
        <h1>This is my caluclator.</h1>

        <!--Form-->
        <form id="form1" runat="server">

            <!--Left Number-->
            <div class="inputs">
                <input class="form-control" type="number" name="leftNum" />
            </div>

            <!--Operator Selection-->
            <div class="form-group inputs">
                <select class="form-control medfont" name="operation">
                    <% foreach (var option in Options)
                        { %>
                    <option value="<%=option.ToLower() %>"><%= option %></option>
                    <% } %>
                </select>
            </div>

            <!--Right Number-->
            <div class="inputs">
                <input class="form-control" type="number" name="rightNum" />
            </div>
            <br />

            <!--Submit Button
                http://stackoverflow.com/questions/477691/submitting-a-form-by-pressing-enter-without-a-submit-button
                -->
            <div class="inputs">
                <input type="submit"
                    style="position: absolute; left: -9999px; width: 1px; height: 1px;"
                    tabindex="-1" />
            </div>
            <sub>Psst... press enter to calculate!</sub>

            <!--Results-->
            
            <h3>
                <%=results %>
            </h3>
             
        </form>
    </div>

</body>
</html>
