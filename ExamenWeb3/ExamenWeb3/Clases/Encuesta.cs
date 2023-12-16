using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ExamenWeb3.Clases
{
    public class Encuesta
    {
        public static string Nombre { get; set; }
        public static int Edad { get; set; }
        public static string Correo { get; set; }
        public static int PartidoPoliticoID { get; set; }

        public Encuesta(String nombre, int edad, string correo, int partidoPoliticoID)
        {
            nombre = Nombre;
            correo = Correo;
            edad = Edad;
            partidoPoliticoID = PartidoPoliticoID;
        }
        public string getNombre()
        {
            return Nombre;
        }

        public int getEdad()
        {
            return Edad;
        }

        public string getCorreo()
        {
            return Correo;
        }

        public int getPartidoPoliticoID()
        {
            return PartidoPoliticoID;
        }

        public void setNombre(string nombre)
        {
            Nombre = nombre;
        }

        public void setEdad(int edad)
        {
            Edad = edad;
        }

        public void setCorreo(string correo)
        {
            Correo = correo;
        }

        public void setPartidoPoliticoID(int partidoPoliticoID)
        {
            PartidoPoliticoID = partidoPoliticoID;
        }

        public static int Agregar(string Nombre, string Correo, string PartidoPoliticoID, string Edad)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = CLSConexion.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("AGRREGAR_ENCUESTA", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@Nombre", Nombre));
                    cmd.Parameters.Add(new SqlParameter("@Edad", Edad));
                    cmd.Parameters.Add(new SqlParameter("@Correo", Correo));
                    cmd.Parameters.Add(new SqlParameter("@PartidoPoliticoID", PartidoPoliticoID));
                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;

        }

    }
}