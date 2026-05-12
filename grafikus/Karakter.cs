using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace LOTRkarakterekGUI
{
    class Karakter
    {
        public string Nev {  get; set; }

        public string Faj {  get; set; }

        public string Osztaly {  get; set; }


        public Karakter(MySqlDataReader rdr) {

            Nev = rdr.GetString(0);

            Faj = rdr.GetString(1);

            Osztaly = rdr.GetString(2);
        }
    }
}
