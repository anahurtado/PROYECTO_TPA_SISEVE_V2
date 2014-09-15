using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPA.SISEVE.Repositorio.Datos
{
    abstract public class Repositorio<T> where T : class
    {

        protected Database BaseDatos = DatabaseFactory.CreateDatabase();

        #region Singleton
        
        static private T _Instancia = null;

        protected Repositorio() { }

        static public T ObtenerInstancia()
        {
            if (_Instancia == null)
            {
                _Instancia = (T)Activator.CreateInstance(typeof(T), true);
            }

            return _Instancia;
        }

        #endregion

    }
}
