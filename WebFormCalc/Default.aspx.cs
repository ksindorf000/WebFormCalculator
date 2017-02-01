using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{ 
    //Class level attribute - accessible to markup files
    public List<string> Options = new List<string>() { "+", "-", "*" };
    public string leftNum;
    public string Winner;
    public string rightNum;

    protected void Page_Load(object sender, EventArgs e)
    {
        //If Page_Load is a result of a form submission...
        if (IsPostBack)
        {
            //Setting the value of the Key "Word" from the user request
            leftNum = Request.Form["leftNum"];
            Winner = Request.Form["Winner"];
            rightNum = Request.Form["rightNum"];
        }
    }
}