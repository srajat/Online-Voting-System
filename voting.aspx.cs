using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class voting : System.Web.UI.Page
{
    SqlConnection con;
    int election_id;
    string title;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            election_id = Convert.ToInt32(Request.QueryString["id"]);
            title = Request.QueryString["title"].ToString();
        }
        Label1.Text = "";
    }
    protected void vote_Click(object sender, EventArgs e)
    {
        string user_course;
        string user_branch;
        int user_year;
        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;

        string firstColData = grdrow.Cells[0].Text;
        string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
        con = new SqlConnection(str);
        con.Open();

        
        bool authorised = false;
        string str1 = "select btech,mtech,phd,mba,btechmtech,btechmba,mtechphd,year1,year2,year3,year4,year5,it,ece,bme from elections where id='"+election_id+"'";
        string str2 = "select course,yearuser,branch from users where id='"+Context.User.Identity.Name+"'";

        SqlCommand cmd2 = new SqlCommand(str2, con);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        dr2.Read();
            user_course = dr2.GetString(0);
            user_year = dr2.GetInt32(1);
            user_branch = dr2.GetString(2);
        dr2.Close();
        SqlCommand cmd1 = new SqlCommand(str1, con);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read() == true)
        {
            if((dr1.GetInt32(0)==1 && user_course == "btech") || (dr1.GetInt32(1) == 1 && user_course == "mtech") || (dr1.GetInt32(2) == 1 && user_course == "phd") || 
                (dr1.GetInt32(3) == 1 && user_course == "mba") || (dr1.GetInt32(4) == 1 && user_course == "btechmtech") || (dr1.GetInt32(5) == 1 && user_course == "btechmba") || 
                (dr1.GetInt32(6) == 1 && user_course == "mtechphd") )
            {
                if((dr1.GetInt32(7) == 1 && user_year == 1) ||(dr1.GetInt32(8) == 1 && user_year == 2) ||(dr1.GetInt32(9) == 1 && user_year == 3) ||(dr1.GetInt32(10) == 1 && user_year == 4) ||(dr1.GetInt32(11) == 1 && user_year == 5))
                {
                    if((dr1.GetInt32(12)==1 && user_branch=="IT")||(dr1.GetInt32(13) == 1 && user_branch == "ECE") ||(dr1.GetInt32(14) == 1 && user_branch == "BME"))
                    {
                        authorised = true;
                    }
                }
            }
        }
        dr1.Close();
        if (authorised)
        {
            string command = "insert into votes values (" + election_id + ",'" + title + "','" + firstColData + "','" + Context.User.Identity.Name + "')";
            SqlCommand cmd = new SqlCommand(command, con);
            try {
                cmd.ExecuteNonQuery();
            }
            catch(SqlException e1)
            {
                Label1.Text = "Already voted!";
            }
        }
        else
            Label1.Text = "You have not been authorised by Admin to vote in this election as per your credentials!";
        con.Close();

        LinkButton l1 = sender as LinkButton;
        l1.Visible = false;

    }
}