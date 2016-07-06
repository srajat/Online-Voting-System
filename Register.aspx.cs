using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class images_Register : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();

        string command = "insert into users values('" + rollnum.Value + "','" + firstname.Value + "','" + lastname.Value + "','" + mobile.Value + "','" + email.Value + "','" + state.Value + "','" + birthdate.Value + "'," + pointer.Value + ",'" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "'," + DropDownList3.SelectedValue + ",'" + DropDownList4.SelectedValue + "','" + RadioButtonList1.SelectedValue + "','"+DropDownList5.SelectedValue+"','"+pass.Value+"')";
        SqlCommand cmd = new SqlCommand(command,con);
        try {
            cmd.ExecuteNonQuery();
        }
        catch(SqlException sdfe)
        {
            Response.Write("Error. Check if you are already registered with same ID.");
        }
        con.Close();
        Response.Redirect("Default.aspx?uid=" + rollnum.Value);
    }
}