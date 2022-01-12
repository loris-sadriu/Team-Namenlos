using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Globalization;

namespace UniversalServer.Model
{
    public delegate EventHandler ErrorEventHandler(string msg);
    public class DBAccess
    {
        public event ErrorEventHandler ErrorMessage;
       
        public void InsertData(TempValue t, HumidValue h, PressureValue p, DateTime dt, string ipa)
        {
            string twert = Convert.ToString(t.Value, CultureInfo.InvariantCulture);
            string hwert = Convert.ToString(h.Value, CultureInfo.InvariantCulture);
            string pwert = Convert.ToString(p.Value, CultureInfo.InvariantCulture);

            string datum = dt.ToString("yyyy-M-dd" +
                "H:mm:ss");


            //Server muss noch angepasst werden
            MySqlConnection con = new MySqlConnection(@"SERVER = 10.8.11.248;DATABASE=smarthome;UID=bui;PASSWORD=Smarthome123;");

            con.Open();
            
            //ohne IP/foreignkey Abfrage, da Lisa und Loris die meiste Zeit des Sprintes krank waren und am 12.1.22 alles C#-seitige und SQL-seitige erledigt wurde (2 Schulstunden)

            string insert = "INSERT INTO smarthome.klimawerte (`temperatur`, `luftfeuchtigkeit`, `druck`, `zeitpunkt`, `ip`) VALUES('twert', 'hwert', 'pwert', 'datum', 'ipa')";

            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandText = insert;

            cmd.Connection = con;

            cmd.ExecuteNonQuery();


        }
    }
}
