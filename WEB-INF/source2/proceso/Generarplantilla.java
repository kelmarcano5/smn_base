package proceso;

import dinamica.*;

import javax.sql.DataSource;

import java.io.File;
import java.io.FileWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Generarplantilla extends GenericTransaction
{
	/* (non-Javadoc)
	 * @see dinamica.GenericTransaction#cuestionario(dinamica.Recordset)
	 */
	
	public int service(Recordset inputParams) throws Throwable{
			
		int rc = 0;
		String response = "";
		String fechaActual= new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		File newLogFile = new File("D:/data/Simone/smn_base/log/log_ProcesarCuestionario"+fechaActual+".txt");
		
        FileWriter fw = new FileWriter(newLogFile);
		super.service(inputParams);
		
		String jndiName = (String)getContext().getAttribute("dinamica.security.datasource");
		
		if (jndiName==null)
			throw new Throwable("Context attribute [dinamica.security.datasource] is null, check your security filter configuration.");
		
		DataSource ds = Jndi.getDataSource(jndiName); 
		Connection conn = ds.getConnection();
		this.setConnection(conn);
				
		try {
		
			Db db = getDb();
			String str="";
			str = str + "PROCESAR CUESTIONARIO"+ " \n";	
			
			String sqlCheckCue = getSQL(getResource("sql-consultaCuestionario.sql"), inputParams);
			Recordset rssqlCheckCue = db.get(sqlCheckCue);
		
			if(rssqlCheckCue.getRecordCount() > 0) {
			
				rssqlCheckCue.first();
				
				str = str + "Cuestionario ID"+ " \n";			
				str = str + "Procesando Cuestionario con ID: "+ rssqlCheckCue.getInt("smn_cuestionario_id") + " \n";
				
				String insertplantcab = getSQL(getResource("insert_plantilla_cabecera.sql"), inputParams);
				Recordset rsinsertplantcab = db.get(insertplantcab);
				if(rsinsertplantcab.getRecordCount() > 0) {
					while(rsinsertplantcab.next()){
					int id_plant_cab = rsinsertplantcab.getInteger("id_plantilla");
					
					 inputParams.setValue("id_plantilla", id_plant_cab);
					      			      
					 str  = str + "Insertando plantilla detalle"+ " \n";
					 String insertplantdet = getSQL(getResource("insert_plantilla_detalle.sql"), inputParams);
											
					 db.exec(insertplantdet);
									
					}
				}
			}
	        fw.write(str);
	        fw.close();
		}catch (Throwable e){
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
