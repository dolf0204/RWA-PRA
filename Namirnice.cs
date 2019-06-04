using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DiabetikWeb.Models
{
    public class Namirnice
    {
        public int IdNamirnice { get; set; }
        public string Naziv { get; set; }
        public string TipNamirniceID { get; set; }
        public int KolicinaKcal100g { get; set; }
        public int KolicinaKcal1Dkg { get; set; }
        public int KolicinaKcal1Kg { get; set; }
        public int KolicinaKcalZlica { get; set; }
        public int KolicinaKcalZlicica { get; set; }
        public int KolicinaKcalSalica { get; set; }

        public int KolicinaKcalKomad { get; set; }




    }
}