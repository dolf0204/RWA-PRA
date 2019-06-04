using DiabetikWeb.Models;
using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

namespace DiabetikWeb
{
    public class Repo
    {
        static string cs = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        
        public List<Korisnik> GetSviKorisnici()
        {

            List<Korisnik> korisnici = new List<Korisnik>();

            
            DataSet ds = SqlHelper.ExecuteDataset(cs, "GetSviKorisnici");
           
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Korisnik k = new Korisnik();
                k.IdKorisnik = (int)row["IdKorisnik"];
                k.KorisnickoIme = row["KorisnickoIme"].ToString();
                k.Lozinka = row["Lozinka"].ToString();
                k.Ime = row["Ime"].ToString();
                k.Prezime = row["Prezime"].ToString();
                k.Tezina = (int)row["Tezina"];
                k.DatumRodjenja =(DateTime)row["DatumRodjenja"];
                k.Email = row["Email"].ToString();
                if ((int)row["SpolID"] == 1)
                {
                    
                    k.Spol = "Muški";
                }
                else
                {
                    
                    k.Spol = "Ženski";
                }
                
                k.TipDiabetesa = (int)row["TipDiabetesaID"];
                if ((int)row["RazinaAktivnostiID"] == 1)
                {
                    k.RazinaAktivnosti = "Slaba";
                }
                else if((int)row["RazinaAktivnostiID"] == 2)
                {
                    k.RazinaAktivnosti = "Umjerena";

                }
                else
                {
                    k.RazinaAktivnosti = "Intenzivna";

                }

                korisnici.Add(k);
            }
            return korisnici;
        }

        public List<TipObroka> getAllTipObroka()
        {

            List<TipObroka> tipoviObroka = new List<TipObroka>();


            DataSet ds = SqlHelper.ExecuteDataset(cs, "getAllTipObroka");

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                
                TipObroka to = new TipObroka();
                to.IdTipObroka = (int)row["IdTipObroka"];
                to.Naziv = row["Naziv"].ToString();

               

                tipoviObroka.Add(to);
            }
            return tipoviObroka;
        }

        public List<KombObrokaGlavni> getAllBrojObroka()
        {

            List<KombObrokaGlavni> kombObrokaGlavnis = new List<KombObrokaGlavni>();


            DataSet ds = SqlHelper.ExecuteDataset(cs, "getKombinacijaObrokaGlavni");

            foreach (DataRow row in ds.Tables[0].Rows)
            {

                KombObrokaGlavni kog = new KombObrokaGlavni();
                kog.IdKombObrokaGlavni = (int)row["IdKombinacijaObrokaGlavni"];
                kog.BrojObroka = (int)row["BrojObroka"];



                kombObrokaGlavnis.Add(kog);
            }
            return kombObrokaGlavnis;
        }

        public List<MjerneJedinice> getAllMjerneJedinice()
        {

            List<MjerneJedinice> mjerneJedinice = new List<MjerneJedinice>();


            DataSet ds = SqlHelper.ExecuteDataset(cs, "getAllMjerneJedinice");

            foreach (DataRow row in ds.Tables[0].Rows)
            {

                MjerneJedinice mj = new MjerneJedinice();
                mj.IdMjerneJedinice = (int)row["IdMjerneJedinice"];
                mj.Naziv = row["Naziv"].ToString();



                mjerneJedinice.Add(mj);
            }
            return mjerneJedinice;
        }

        public List<TipNamirnice> getAllTipNamirnice()
        {

            List<TipNamirnice> tipNamirnica = new List<TipNamirnice>();


            DataSet ds = SqlHelper.ExecuteDataset(cs, "getAllTipNamirnice");

            foreach (DataRow row in ds.Tables[0].Rows)
            {

                TipNamirnice tn = new TipNamirnice();
                tn.IdTipNamirnice = (int)row["IdTipNamirnice"];
                tn.Naziv = row["Naziv"].ToString();
              
            
           

                tipNamirnica.Add(tn);
            }
            return tipNamirnica;
        }



        public List<Namirnice> getAllNamirnice()
        {

            List<Namirnice> namirnice = new List<Namirnice>();


            DataSet ds = SqlHelper.ExecuteDataset(cs, "getAllNamirnice");

            foreach (DataRow row in ds.Tables[0].Rows)
            {

                Namirnice n = new Namirnice();
                n.IdNamirnice = (int)row["IdNamirnice"];
                n.Naziv = row["Naziv"].ToString();        
                n.KolicinaKcal100g = (int)row["KolicinaKCal100g"];
                n.KolicinaKcal1Dkg = (int)row["KolicinaKCal1Dkg"];
                n.KolicinaKcal1Kg = (int)row["KolicinaKCal1Kg"];
                n.KolicinaKcalZlica = (int)row["KolicinaKCalZlica"];
                n.KolicinaKcalZlicica = (int)row["KolicinaKCalZlicica"];
                n.KolicinaKcalSalica = (int)row["KolicinaKCalSalica"];
                n.KolicinaKcalKomad = (int)row["KolicinaKCalKomad"];



                if ((int)row["TipNamirniceID"] == 1)
                {
                    n.TipNamirniceID = "Ugljikohidrati";
                }
                else if ((int)row["TipNamirniceID"] == 2)
                {
                    n.TipNamirniceID = "Masti";
                }
                else
                {
                    n.TipNamirniceID = "Bjelančevine";

                }


                namirnice.Add(n);
            }
            return namirnice;
        }

        public List<Namirnice> getAllUgljikohidrati()
        {

            List<Namirnice> ugljikohidrati = new List<Namirnice>();


            DataSet ds = SqlHelper.ExecuteDataset(cs, "getAllUgljikohidrati");

            foreach (DataRow row in ds.Tables[0].Rows)
            {

                Namirnice n = new Namirnice();
                n.IdNamirnice = (int)row["IdNamirnice"];
                n.Naziv = row["Naziv"].ToString();
                n.KolicinaKcal100g = (int)row["KolicinaKCal100g"];
                n.KolicinaKcal1Dkg = (int)row["KolicinaKCal1Dkg"];
                n.KolicinaKcal1Kg = (int)row["KolicinaKCal1Kg"];
                n.KolicinaKcalZlica = (int)row["KolicinaKCalZlica"];
                n.KolicinaKcalZlicica = (int)row["KolicinaKCalZlicica"];
                n.KolicinaKcalSalica = (int)row["KolicinaKCalSalica"];
                n.KolicinaKcalKomad = (int)row["KolicinaKCalKomad"];




                ugljikohidrati.Add(n);
            }
            return ugljikohidrati;
        }

        public List<Namirnice> getAllMasti()
        {

            List<Namirnice> masti = new List<Namirnice>();


            DataSet ds = SqlHelper.ExecuteDataset(cs, "getAllMasti");

            foreach (DataRow row in ds.Tables[0].Rows)
            {

                Namirnice n = new Namirnice();
                n.IdNamirnice = (int)row["IdNamirnice"];
                n.Naziv = row["Naziv"].ToString();
                n.KolicinaKcal100g = (int)row["KolicinaKCal100g"];
                n.KolicinaKcal1Dkg = (int)row["KolicinaKCal1Dkg"];
                n.KolicinaKcal1Kg = (int)row["KolicinaKCal1Kg"];
                n.KolicinaKcalZlica = (int)row["KolicinaKCalZlica"];
                n.KolicinaKcalZlicica = (int)row["KolicinaKCalZlicica"];
                n.KolicinaKcalSalica = (int)row["KolicinaKCalSalica"];
                n.KolicinaKcalKomad = (int)row["KolicinaKCalKomad"];




                masti.Add(n);
            }
            return masti;
        }

        public List<Namirnice> getAllBjelancevine()
        {

            List<Namirnice> bjelancevine = new List<Namirnice>();


            DataSet ds = SqlHelper.ExecuteDataset(cs, "getAllBjelancevine");

            foreach (DataRow row in ds.Tables[0].Rows)
            {

                Namirnice n = new Namirnice();
                n.IdNamirnice = (int)row["IdNamirnice"];
                n.Naziv = row["Naziv"].ToString();
                n.KolicinaKcal100g = (int)row["KolicinaKCal100g"];
                n.KolicinaKcal1Dkg = (int)row["KolicinaKCal1Dkg"];
                n.KolicinaKcal1Kg = (int)row["KolicinaKCal1Kg"];
                n.KolicinaKcalZlica = (int)row["KolicinaKCalZlica"];
                n.KolicinaKcalZlicica = (int)row["KolicinaKCalZlicica"];
                n.KolicinaKcalSalica = (int)row["KolicinaKCalSalica"];
                n.KolicinaKcalKomad = (int)row["KolicinaKCalKomad"];



                bjelancevine.Add(n);
            }
            return bjelancevine;
        }


        public AdminLogIn getAdminLogin()
        {

            DataSet ds = SqlHelper.ExecuteDataset(cs, "getAdminLogin");
            AdminLogIn al = new AdminLogIn();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                al.AdminID = row["AdminID"].ToString();
                al.Password = row["Password"].ToString();
            }

            return al;
        }

        public void updateTipObroka(int idTipObroka, string naziv)
        {
           
            SqlHelper.ExecuteNonQuery(cs, "updateTipObroka", idTipObroka, naziv);
        }

        public int insertTipObroka(object[] objParams)
        {
            int idTipObroka;
            string naziv;
           
            idTipObroka =  SqlHelper.ExecuteNonQuery(cs, "insertTipObroka", objParams);
            idTipObroka = (int)objParams[0];
            naziv = (string)objParams[1];

            return idTipObroka;
        }

        public void deleteTipObroka(int idTipObroka)
        {
                
             SqlHelper.ExecuteNonQuery(cs, "deleteTipObroka", idTipObroka);
           
        }

        public static int UpdateNamirnica(Namirnice n)
        {
            return SqlHelper.ExecuteNonQuery(cs, "updateNamirnice", n.IdNamirnice, n.Naziv, n.TipNamirniceID, n.KolicinaKcal100g, n.KolicinaKcal1Dkg, n.KolicinaKcal1Kg, n.KolicinaKcalZlica, n.KolicinaKcalZlicica, n.KolicinaKcalKomad, n.KolicinaKcalSalica);
        }



    }
}
