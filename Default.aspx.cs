using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
           protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void GetData()
        {
            string cs = "Server=DESKTOP-MCN1KET;Database=workers_DB;Integrated Security=True;";
            SqlConnection con = new SqlConnection(cs);

            SqlCommand cmd = new SqlCommand("workerDataGrid", con);

            con.Open();
            gv_workerGrid.DataSource = cmd.ExecuteReader();
            gv_workerGrid.DataBind();
            con.Close();
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            string cs = "Server=DESKTOP-MCN1KET;Database=workers_DB;Integrated Security=True;";
            SqlConnection con = new SqlConnection(cs);

            string fname = txt_fname.Text;
            string lname = txt_lname.Text;
            int age = Convert.ToInt32(txt_age.Text);
            int salary = Convert.ToInt32(txt_salary.Text);
            string phone = txt_phone.Text;

            SqlCommand cmd = new SqlCommand("worderProc", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@FIRST_NAME", fname);
            cmd.Parameters.AddWithValue("@LAST_NAME", lname);
            cmd.Parameters.AddWithValue("@AGE", age);
            cmd.Parameters.AddWithValue("@SALARY", salary);
            cmd.Parameters.AddWithValue("@PHONE", phone);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GetData();
            lblmsg.Text = "Record Inserted....";

            txt_fname.Text = "";
            txt_lname.Text = "";
            txt_age.Text = "";
            txt_salary.Text = "";
            txt_phone.Text = "";
            lblmsg.Text = "";
        }

        protected void gv_workerGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int ID = Convert.ToInt32(gv_workerGrid.DataKeys[e.RowIndex].Value);
            string cs = "Server=DESKTOP-MCN1KET;Database=workers_DB;Integrated Security=True;";
            SqlConnection con = new SqlConnection(cs);

            SqlCommand cmd = new SqlCommand("workerDelete", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@ID", ID);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            GetData();
        }

        protected void gv_workerGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv_workerGrid.EditIndex = e.NewEditIndex;
            GetData();
        }

        protected void gv_workerGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv_workerGrid.EditIndex = -1;
            GetData();
        }

        protected void gv_workerGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string cs = "Server=DESKTOP-MCN1KET;Database=workers_DB;Integrated Security=True;";
            SqlConnection con = new SqlConnection(cs);

            int ID = Convert.ToInt32(gv_workerGrid.DataKeys[e.RowIndex].Value);
            string fname = (gv_workerGrid.Rows[e.RowIndex].FindControl("txtB_fname") as TextBox).Text;
            string lname = (gv_workerGrid.Rows[e.RowIndex].FindControl("txtB_lname") as TextBox).Text;
            int age = Convert.ToInt32((gv_workerGrid.Rows[e.RowIndex].FindControl("txtB_age") as TextBox).Text);
            int salary = Convert.ToInt32((gv_workerGrid.Rows[e.RowIndex].FindControl("txtB_salary") as TextBox).Text);
            string phone = (gv_workerGrid.Rows[e.RowIndex].FindControl("txtB_phone") as TextBox).Text;

            SqlCommand cmd = new SqlCommand("workerUpdate", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@FIRST_NAME", fname);
            cmd.Parameters.AddWithValue("@LAST_NAME", lname);
            cmd.Parameters.AddWithValue("@AGE", age);
            cmd.Parameters.AddWithValue("@SALARY", salary);
            cmd.Parameters.AddWithValue("@PHONE", phone);
            cmd.Parameters.AddWithValue("@ID", ID);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            gv_workerGrid.EditIndex = -1;
            GetData();
        }

    }
}
