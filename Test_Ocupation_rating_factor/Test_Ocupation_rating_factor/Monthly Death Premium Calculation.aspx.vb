Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Imports System.Web.UI
Public Class Monthly_Death_Premium_Calculation
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub doccupation_SelectedIndexChanged(sender As Object, e As EventArgs) Handles doccupation.SelectedIndexChanged

        Dim conn As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("myConnection").ConnectionString)

        Using cmd As SqlCommand = conn.CreateCommand
            conn.Open()
            cmd.CommandType = CommandType.StoredProcedure


            cmd.Parameters.Add(New SqlParameter("@Death_Sum_Insured", tsuminsured.Text.ToString()))
            cmd.Parameters.Add(New SqlParameter("@Occupation", doccupation.SelectedValue.ToString()))
            cmd.Parameters.Add(New SqlParameter("@age", tage.Text.ToString()))
            cmd.Parameters.Add(New SqlParameter("@Monthly_Premium", SqlDbType.Float))
            cmd.Parameters("@Monthly_Premium").Direction = ParameterDirection.Output
            cmd.CommandText = "usp_get_monthly_death_premium_calc"
            cmd.ExecuteNonQuery()

            tpremium.Text = cmd.Parameters("@Monthly_Premium").Value.ToString()
        End Using
        conn.Close()
    End Sub
End Class