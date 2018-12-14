using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

[DataObject(true)]
public class IncidentDB
{
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetOpenIncidents(int TechID)
    {
        SqlConnection connection = new SqlConnection(TechSupportDB.GetConnectionString());
        string select = "SELECT DateOpened, ProductCode, Name FROM Incidents JOIN Customers ON Incidents.CustomerID = Customers.CustomerID WHERE DateClosed IS NULL AND TechID=@TechID ORDER BY DateOpened";
        SqlCommand cmd = new SqlCommand(select, connection);
        cmd.Parameters.AddWithValue("TechID", TechID);
        connection.Open();
        SqlDataReader reader = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        return reader;
    }
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetCustomerIncidents(int CustomerID)
    {
        SqlConnection connection = new SqlConnection(TechSupportDB.GetConnectionString());
        string select = "SELECT IncidentID, ProductCode, DateOpened, DateClosed, Title, Description FROM Incidents WHERE TechID IS NOT NULL AND CustomerID=@CustomerID";
        SqlCommand cmd = new SqlCommand(select, connection);
        cmd.Parameters.AddWithValue("CustomerID", CustomerID);
        connection.Open();
        SqlDataReader reader = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        return reader;
    }
}