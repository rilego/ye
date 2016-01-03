using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

public partial class _Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strUrl = "";
        string name = TextBox1.Text;
        string pwd = TextBox2.Text;
        if (name == "admin" && pwd == "admin")
        {
            strUrl = "Index.aspx?uName=" + name + "&uPwd=" + pwd;
            Response.Redirect(strUrl);
        }
    }
}
