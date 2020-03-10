using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelAgency
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string source = @"Data Source=localhost;User ID=travel;Password=***********;";
            //SqlCommand sql;
            //SqlConnection conn = new SqlConnection(source);
            //string query = "SELECT COUNT(staff_id) FROM Staff";
            //try
            //{
            //    conn.Open();
            //    sql = new SqlCommand(query, conn);
            //    Int32 row_count = Convert.ToInt32(sql.ExecuteScalar());
            //    staffCount.Text= row_count.ToString();
            //    sql.Dispose();
            //    conn.Close();
            //}
            //catch(Exception ex)
            //{
            //    Response.Write("<script>alert('" + ex + "')</script>");

            //}
        }

        protected void staffCount_Load(object sender, EventArgs e)
        {
            
        }
    }
}