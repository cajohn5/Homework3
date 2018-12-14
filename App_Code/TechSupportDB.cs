using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

public static class TechSupportDB
{
    public static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings
            ["TechSupportConnection"].ConnectionString;
    }
}
