using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DiabetikWeb
{
    public class Korisnik
    {
        public int IdKorisnik { get; set; }
        public string KorisnickoIme { get; set; }
        public string Lozinka { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public int Tezina { get; set; }
        public DateTime DatumRodjenja { get; set; }
        public string Email { get; set; }
        public string Spol { get; set; }
        public int TipDiabetesa { get; set; }
        public string RazinaAktivnosti { get; set; }


    }
}