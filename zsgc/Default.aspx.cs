using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    public string str = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tb1 values(@id,@name,@age)",con);
        SqlParameter[] sp ={    new SqlParameter("id",TextBox1.Text),
                               new SqlParameter("name",TextBox2.Text),
                               new SqlParameter("age",TextBox3.Text)
                           };
        cmd.Parameters.AddRange(sp);
        cmd.ExecuteNonQuery();
        con.Close();

        TextBox1.Text=("");
        TextBox2.Text = ("");
        TextBox3.Text = ("");
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from tb1 where id=@id", con);
        SqlParameter[] sp ={    new SqlParameter("@id",TextBox4.Text)

                           };
        cmd.Parameters.AddRange(sp);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("update tb1 set name=@name,age=@age where id=@id", con);
        SqlParameter[] sp ={    new SqlParameter("id",TextBox5.Text),
                               new SqlParameter("name",TextBox6.Text),
                               new SqlParameter("age",TextBox7.Text)
                           };
        cmd.Parameters.AddRange(sp);
        cmd.ExecuteNonQuery();
        con.Close();

        
    }
}