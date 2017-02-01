<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
        <h1>Here's a calculator because<br />
            math sucks.
        </h1>

        <br />

        <!--Form-->
        <form id="form1" runat="server">

            <!--Left Number-->

            <!--For handling decimal values:
                http://stackoverflow.com/questions/19011861/is-there-a-float-input-type-in-html5
                -->

            <div class="inputs">
                <input class="form-control" type="number" step="any" name="leftNum" />
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
                <input class="form-control" type="number" step="any" name="rightNum" />
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
                <%=rString %>
            </h3>

        </form>
    </div>

</body>
</html>
