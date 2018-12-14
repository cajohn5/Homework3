using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

[DataObject(true)]
public class TechnicianDB
{
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetAllTechnicians() {
        SqlConnection connection = new SqlConnection(TechSupportDB.GetConnectionString());
        string select = "SELECT TechID, Name FROM Technicians ORDER BY Name";
        SqlCommand cmd = new SqlCommand(select, connection);
        connection.Open();
        SqlDataReader reader = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        return reader;
    }
    
}