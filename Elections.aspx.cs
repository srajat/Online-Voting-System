using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Elections : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void apply_Click(object sender, EventArgs e)
    {

        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
        string firstColData = grdrow.Cells[0].Text;
        string name = grdrow.Cells[1].Text;
        string secondColData = grdrow.Cells[2].Text;
        string thirdColData = grdrow.Cells[3].Text;

        DateTime start = Convert.ToDateTime(secondColData);
        DateTime end = Convert.ToDateTime(thirdColData);
        if (DateTime.Now <= start)
        {
            string str = ConfigurationManager.ConnectionStrings["votingdatabase"].ToString();
            con = new SqlConnection(str);
            con.Open();

            string command = "insert into candidates values('" + Context.User.Identity.Name + "'," + Convert.ToInt32(firstColData) + ",'"+name+"')";
            SqlCommand cmd = new SqlCommand(command, con);
            try {
                cmd.ExecuteNonQuery();
            }
            catch(SqlException dsfve)
            {
                Label1.Text = "Already applied for this election.";
            }
            con.Close();
            LinkButton l1 = sender as LinkButton;
            l1.Visible = false;
        }
        else if(DateTime.Now >start && DateTime.Now <=end)
        {
            Label1.Text = "Election Currently going on! Please vote";
        }
        else
        {
            Label1.Text = "Election Over!!";
        }
    }
    protected void vote_Click(object sender, EventArgs e)
    {

        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;

        string firstColData = grdrow.Cells[0].Text;
        string name = grdrow.Cells[1].Text;
        string secondColData = grdrow.Cells[2].Text;
        string thirdColData = grdrow.Cells[3].Text;

        DateTime start = Convert.ToDateTime(secondColData);
        DateTime end = Convert.ToDateTime(thirdColData);
        if (DateTime.Now >= start && DateTime.Now <= end)
            Response.Redirect("voting.aspx?id="+firstColData+"&title="+ name );
        else if (DateTime.Now < start)
            Label1.Text = "Election not started!!";
        else
            Label1.Text = "Election Over!!";
    }
    protected void result_Click(object sender, EventArgs e)
    {

        GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;

        string firstColData = grdrow.Cells[0].Text;
        string name = grdrow.Cells[1].Text;
        string secondColData = grdrow.Cells[2].Text;
        string thirdColData = grdrow.Cells[3].Text;

        DateTime start = Convert.ToDateTime(secondColData);
        DateTime end = Convert.ToDateTime(thirdColData);
        if (DateTime.Now >= end)
            Response.Redirect("result.aspx?id=" + firstColData + "&title=" + name);
        else if (DateTime.Now >= start && DateTime.Now < end)
            Label1.Text = "Election Currently going on! Please vote";
        else
            Label1.Text = "Election not started!!" ;
    }
}