using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    //Class level attribute - accessible to markup files
    public List<string> Options = new List<string>() { "+", "-", "*", "/" };
    public string leftNum;
    public string operation;
    public string rightNum;
    public float results;
    public string rString;

    protected void Page_Load(object sender, EventArgs e)
    {
        //If Page_Load is a result of a form submission...
        if (IsPostBack)
        {
            //Setting the value of the Key "Word" from the user request
            leftNum = Request.Form["leftNum"];
            operation = Request.Form["operation"];
            rightNum = Request.Form["rightNum"];

            switch (operation)
            {
                case "+":
                    results = float.Parse(leftNum) + float.Parse(rightNum);
                    break;
                case "-":
                    results = float.Parse(leftNum) - float.Parse(rightNum);
                    break;
                case "*":
                    results = float.Parse(leftNum) * float.Parse(rightNum);
                    break;
                case "/":
                    //Division();
                    results = float.Parse(leftNum) / float.Parse(rightNum);
                    break;
                default:
                    results = 0;
                    break;
            }

            rString = $"{leftNum} {operation} {rightNum} = {results}";
        }
    }
    
    protected void Division()
    {
        if (leftNum == "0")
        {
            results = float.Parse(rightNum);
        }
        else if (rightNum == "0")
        {
            results = float.Parse(leftNum);
        }
        else
        {
            results = float.Parse(leftNum) / float.Parse(rightNum);
        }

    }
    
}