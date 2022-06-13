package proceso;

import dinamica.*;

import javax.sql.DataSource;

import java.io.File;
import java.io.FileWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Generar extends GenericTransaction
{

	/* (non-Javadoc)
	 * @see dinamica.GenericTransaction#service(dinamica.Recordset)
	 */
	
	public int service(Recordset inputParams) throws Throwable
	{
		//default return code
		int rc = 0;
		//reuse superclass code
		super.service(inputParams);
		//get security datasource
		String jndiName = (String)getContext().getAttribute("dinamica.security.datasource");
		if (jndiName==null)
			throw new Throwable("Context attribute [dinamica.security.datasource] is null, check your security filter configuration.");
		
		//get datasource and DB connection
		DataSource ds = Jndi.getDataSource(jndiName); 
		Connection conn = ds.getConnection();
		this.setConnection(conn);
				
		try {
			//get db channel
			Db db = getDb();
			String str="";
			//boolean procesamiento_caja = true;
			
			str = str + "INICIO PROCESO INSERT BAREMOS DETALLE COMPONENTE"+ " \n";	
	
			String sqlconsComponent = getSQL(getResource("sql-consultaComponente.sql"), inputParams);
			Recordset rscomponente = db.get(sqlconsComponent);
			
			if(rscomponente.getRecordCount() > 0) {
					
				rscomponente.first();			
				while(rscomponente.next()){
					String sqlInsertOF = getResource("insert-componente.sql");
					sqlInsertOF = getSQL(sqlInsertOF, rscomponente);
					db.exec(sqlInsertOF);
				}
				
				//******************PORCENTAJE***********************
				String sqlformacalP = getSQL(getResource("sql-consultaformaP.sql"), inputParams);
				Recordset rsformaP = db.get(sqlformacalP);
				
				//str = str+ "Obteniendo forma de calculo PORCENTAJE: " + inputParams.getString("forma_calculo") + " \n";
				//String forma = inputParams.getString("forma_calculo");
				
				if(rsformaP.getRecordCount() > 0) {
					while(rsformaP.next()){
						String sqlUpdatePor = getResource("update-componenteP.sql");
						sqlUpdatePor = getSQL(sqlUpdatePor, rsformaP);
						db.exec(sqlUpdatePor);
					}
					str = str + "PORCENTARJE ACTUALIZADO < 0"+ " \n";
					
				}else{
					str = str + "Error getRecordCount PORCENTAJE < 0"+ " \n";
				}
							
				//******************DIFERENCIA***********************
				String sqlformacalD = getSQL(getResource("sql-consultaformaD.sql"), inputParams);
				Recordset formaD = db.get(sqlformacalD);
				
				//str = str+ "Obteniendo forma de calculo DIFERENCIA: " + inputParams.getString("forma_calculo") + " \n";
				
				if(formaD.getRecordCount() > 0) {
					while(formaD.next()){
						String sqlUpdateDif = getResource("update-componenteD.sql");
						sqlUpdateDif = getSQL(sqlUpdateDif, formaD);
						db.exec(sqlUpdateDif);
					}
					
					str = str + "DIFERENCIA ACTUALIZADA < 0"+ " \n";
				}else{
					str = str + "Error getRecordCount DIFERENCIA < 0"+ " \n";
				}
				
				str = str + "Fin proceso insertar BAREMOS DETALLE Componente"+ " \n";
								
			}else{
				str = str + "Error getRecordCount BAREMOS DETALLE Componente < 0"+ " \n";
			}
			
			String fechaActual= new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			
			//File newLogFile = new File("D:/data/Simone/smn_base/log/log_updateComponente"+fechaActual+"_"+inputParams.getInt("id_ingreso")+".txt");
			File newLogFile = new File("E:/data/Simone/smn_base/log/log_updateComponente"+fechaActual+"_"+inputParams.getInt("id_componente")+".txt");
			
			FileWriter fw = new FileWriter(newLogFile);
			fw.write(str);
			fw.close();
		
		
	}catch (Throwable e)
		{
		throw e;
	}
	finally
	{
		if (conn!=null)
			conn.close();
	}

	return rc;
	
	}
	
	
}
