using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using TPA.SISEVE.Dominio.Entidad;
using TPA.SISEVE.Repositorio.Datos.Interfaces;

namespace TPA.SISEVE.Repositorio.Datos
{
	public class ProductoRepositorio : Repositorio<ProductoRepositorio>, IProductoRepositorio
	{

		protected ProductoRepositorio() { }

		public IEnumerable<Producto> BuscarTodos()
		{
            DbCommand Comando = BaseDatos.GetSqlStringCommand("select p.idproducto, p.nombre, p.descripcion, p.idcia_seg, p.idramo, p.moneda, p.dias_vigencia, p.marca_deremi, p.marca_impuesto, p.dias_carencia, p.dias_gracia, p.estado, p.usu_reg, p.fec_reg, cs.nombre from producto p left outer join cia_seg cs on(p.idcia_seg = cs.idcia_seg)");
			IList<Producto> Listado = new List<Producto>();

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				while (Reader.Read())
				{
					Listado.Add(new Producto()
								{
									Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
									Nombre = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
									Descripcion = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
									CiaSeg = new CiaSeg() 
                                    { 
                                        Id = (!Reader.IsDBNull(3)) ? Reader.GetInt32(3) : 0,
                                        Nombre = (!Reader.IsDBNull(14)) ? Reader.GetString(14) : String.Empty
                                    },
									RamoId = (!Reader.IsDBNull(4)) ? Reader.GetInt32(4) : 0,
									Moneda = (!Reader.IsDBNull(5)) ? Reader.GetString(5) : String.Empty,
									DiasVigencia = (!Reader.IsDBNull(6)) ? Reader.GetInt16(6) : 0,
									MarcaDerechoEmision = (!Reader.IsDBNull(7)) ? Reader.GetString(7) : String.Empty,
									MarcaImpuesto = (!Reader.IsDBNull(8)) ? Reader.GetString(8) : String.Empty,
                                    DiasCarencia = (!Reader.IsDBNull(9)) ? Reader.GetInt16(9) : 0,
                                    DiasGracia = (!Reader.IsDBNull(10)) ? Reader.GetInt16(10) : 0,
									Estado = (!Reader.IsDBNull(11)) ? Reader.GetString(11) : String.Empty,
									UsuarioRegistra = new Usuario() { Id = (!Reader.IsDBNull(12)) ? Reader.GetInt32(12) : 0 },
									FechaRegistro = (!Reader.IsDBNull(13)) ? Reader.GetDateTime(13) : Convert.ToDateTime("01/01/1900")
								}
					);
				}
			}

			return Listado;
		}

		public Producto BuscarPorId(int id)
		{
            DbCommand Comando = BaseDatos.GetSqlStringCommand("select p.idproducto, p.nombre, p.descripcion, p.idcia_seg, p.idramo, p.moneda, p.dias_vigencia, p.marca_deremi, p.marca_impuesto, p.dias_carencia, p.dias_gracia, p.estado, p.usu_reg, p.fec_reg, cs.nombre from producto p left outer join cia_seg cs on(p.idcia_seg = cs.idcia_seg) where p.idproducto = @idproducto");
			BaseDatos.AddInParameter(Comando, "@idproducto", DbType.Int32, id);

			using (IDataReader Reader = BaseDatos.ExecuteReader(Comando))
			{
				if (Reader.Read())
				{
					return new Producto()
					{
						Id = (!Reader.IsDBNull(0)) ? Reader.GetInt32(0) : 0,
						Nombre = (!Reader.IsDBNull(1)) ? Reader.GetString(1) : String.Empty,
						Descripcion = (!Reader.IsDBNull(2)) ? Reader.GetString(2) : String.Empty,
                        CiaSeg = new CiaSeg()
                        {
                            Id = (!Reader.IsDBNull(3)) ? Reader.GetInt32(3) : 0,
                            Nombre = (!Reader.IsDBNull(14)) ? Reader.GetString(14) : String.Empty
                        },
						RamoId = (!Reader.IsDBNull(4)) ? Reader.GetInt32(4) : 0,
						Moneda = (!Reader.IsDBNull(5)) ? Reader.GetString(5) : String.Empty,
                        DiasVigencia = (!Reader.IsDBNull(6)) ? Reader.GetInt16(6) : 0,
                        MarcaDerechoEmision = (!Reader.IsDBNull(7)) ? Reader.GetString(7) : String.Empty,
                        MarcaImpuesto = (!Reader.IsDBNull(8)) ? Reader.GetString(8) : String.Empty,
                        DiasCarencia = (!Reader.IsDBNull(9)) ? Reader.GetInt16(9) : 0,
                        DiasGracia = (!Reader.IsDBNull(10)) ? Reader.GetInt16(10) : 0,
                        Estado = (!Reader.IsDBNull(11)) ? Reader.GetString(11) : String.Empty,
                        UsuarioRegistra = new Usuario() { Id = (!Reader.IsDBNull(12)) ? Reader.GetInt32(12) : 0 },
                        FechaRegistro = (!Reader.IsDBNull(13)) ? Reader.GetDateTime(13) : Convert.ToDateTime("01/01/1900")
					};
				}
			}

			return null;
		}

		public Producto Insertar(Producto producto)
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("insert into producto(nombre, descripcion, idcia_seg, idramo, moneda, dias_vigencia, marca_deremi, marca_impuesto, dias_carencia, dias_gracia, estado, usu_reg, fec_reg) values(@nombre, @descripcion, @idcia_seg, @idramo, @moneda, @dias_vigencia, @marca_deremi, @marca_impuesto, @dias_carencia, @dias_gracia, @estado, @usu_reg, @fec_reg) set @idproducto = scope_identity()");
			BaseDatos.AddInParameter(Comando, "@nombre", DbType.String, producto.Nombre);
			BaseDatos.AddInParameter(Comando, "@descripcion", DbType.String, producto.Descripcion);
			BaseDatos.AddInParameter(Comando, "@idcia_seg", DbType.Int32, producto.CiaSeg.Id);
			BaseDatos.AddInParameter(Comando, "@idramo", DbType.Int32, producto.RamoId);
			BaseDatos.AddInParameter(Comando, "@moneda", DbType.String, producto.Moneda);
			BaseDatos.AddInParameter(Comando, "@dias_vigencia", DbType.Int32, producto.DiasVigencia);
			BaseDatos.AddInParameter(Comando, "@marca_deremi", DbType.String, producto.MarcaDerechoEmision);
			BaseDatos.AddInParameter(Comando, "@marca_impuesto", DbType.String, producto.MarcaImpuesto);
			BaseDatos.AddInParameter(Comando, "@dias_carencia", DbType.Int32, producto.DiasCarencia);
			BaseDatos.AddInParameter(Comando, "@dias_gracia", DbType.Int32, producto.DiasGracia);
			BaseDatos.AddInParameter(Comando, "@estado", DbType.String, producto.Estado);
			BaseDatos.AddInParameter(Comando, "@usu_reg", DbType.Int32, producto.UsuarioRegistra.Id);
			BaseDatos.AddInParameter(Comando, "@fec_reg", DbType.DateTime, producto.FechaRegistro);
			BaseDatos.AddOutParameter(Comando, "@idproducto", DbType.Int32, 4);

			int FilasAfectadas = BaseDatos.ExecuteNonQuery(Comando);

			if (FilasAfectadas > 0)
			{
				int Id = Convert.ToInt32(Comando.Parameters["@idproducto"].Value);
				return BuscarPorId(Id);
			}

			return null;
		}

		public Producto Actualizar(Producto producto)
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("update producto set nombre = @nombre, descripcion = @descripcion, idcia_seg = @idcia_seg, idramo = @idramo, moneda = @moneda, dias_vigencia = @dias_vigencia, marca_deremi = @marca_deremi, marca_impuesto = @marca_impuesto, dias_carencia = @dias_carencia, dias_gracia = @dias_gracia, estado = @estado, usu_reg = @usu_reg, fec_reg = @fec_reg where idproducto = @idproducto");
			BaseDatos.AddInParameter(Comando, "@idproducto", DbType.Int32, producto.Id);
			BaseDatos.AddInParameter(Comando, "@nombre", DbType.String, producto.Nombre);
			BaseDatos.AddInParameter(Comando, "@descripcion", DbType.String, producto.Descripcion);
			BaseDatos.AddInParameter(Comando, "@idcia_seg", DbType.Int32, producto.CiaSeg.Id);
			BaseDatos.AddInParameter(Comando, "@idramo", DbType.Int32, producto.RamoId);
			BaseDatos.AddInParameter(Comando, "@moneda", DbType.String, producto.Moneda);
			BaseDatos.AddInParameter(Comando, "@dias_vigencia", DbType.Int32, producto.DiasVigencia);
			BaseDatos.AddInParameter(Comando, "@marca_deremi", DbType.String, producto.MarcaDerechoEmision);
			BaseDatos.AddInParameter(Comando, "@marca_impuesto", DbType.String, producto.MarcaImpuesto);
			BaseDatos.AddInParameter(Comando, "@dias_carencia", DbType.Int32, producto.DiasCarencia);
			BaseDatos.AddInParameter(Comando, "@dias_gracia", DbType.Int32, producto.DiasGracia);
			BaseDatos.AddInParameter(Comando, "@estado", DbType.String, producto.Estado);
			BaseDatos.AddInParameter(Comando, "@usu_reg", DbType.Int32, producto.UsuarioRegistra.Id);
			BaseDatos.AddInParameter(Comando, "@fec_reg", DbType.DateTime, producto.FechaRegistro);

			int FilasAfectadas = BaseDatos.ExecuteNonQuery(Comando);
			return (FilasAfectadas > 0) ? BuscarPorId(producto.Id) : null;
		}

		public bool Eliminar(Producto producto)
		{
			DbCommand Comando = BaseDatos.GetSqlStringCommand("delete from producto where idproducto = @idproducto");
			BaseDatos.AddInParameter(Comando, "@idproducto", DbType.Int32, producto.Id);

			int FilasAfectadas = BaseDatos.ExecuteNonQuery(Comando);
			return (FilasAfectadas > 0);
		}
	}
}
