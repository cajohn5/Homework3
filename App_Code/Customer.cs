using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Customer
{      
    public String CustomerID { get; set; }
    public String Name { get; set; }
    public String Address { get; set; }
    public String City { get; set; }
    public String State { get; set; }
    public String ZipCode { get; set; }
    public String Phone { get; set; }
    public String Email { get; set; }

    public string ContactFormat()
    {
        return Name + ", " + Phone + ", " + Email;
    }
}