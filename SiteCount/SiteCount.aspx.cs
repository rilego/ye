using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = ("当前人数：" + Application["cnum"]);
        Label2.Text=("总访问人数："+Application["num"]);

    }
}
