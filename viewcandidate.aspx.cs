using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewcandidate : System.Web.UI.Page
{
    SqlConnection con;
    string user_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            user_id = Request.QueryString["id"].ToString();
        }
        Label1.Text = "";
        Label2.Text = "";
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        Label6.Text = "";
        Label7.Text = "";
        Label8.Text = "";
        Label9.Text = "";
        Label10.Text = "";
        Label11.Text = "";
        Label12.Text = "";
        Label13.Text = "";
        Label14.Text = "";

        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();

        string c = "select * from users where id='" + user_id + "'";
        SqlCommand cmd = new SqlCommand(c, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Label1.Text = dr.GetString(1);
        Label2.Text = dr.GetString(2);
        Label3.Text = dr.GetString(0);
        Label4.Text = dr.GetString(3);
        Label5.Text = dr.GetString(4);
        Label6.Text = dr.GetString(5);
        Label7.Text = Convert.ToString(dr.GetDateTime(6));
        Label8.Text = Convert.ToString(dr.GetDecimal(7));
        Label9.Text = dr.GetString(8);
        Label10.Text = dr.GetString(9);
        Label11.Text = Convert.ToString(dr.GetInt32(10));
        Label12.Text = dr.GetString(11);
        Label13.Text = dr.GetString(12);
        Label14.Text = dr.GetString(13);


    }
}