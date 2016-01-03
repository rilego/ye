using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Register : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    protected void btnOK_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)  //获取一个值，该值指示页验证是否成功。
        {
            Response.Redirect("~/Default.aspx"); //跳转到指定页面。
        }
    }
}
