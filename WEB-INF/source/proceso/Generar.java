package proceso;

import dinamica.*;

import javax.sql.DataSource;

import java.io.BufferedWriter;
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
		//String response = "";
		String fechaActual= new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		String sistemaOperativo = System.getProperty("os.name");
		String file;
		
		if(sistemaOperativo.equals("Windows 7") || sistemaOperativo.equals("Windows 8") || sistemaOperativo.equals("Windows 10")) 
			file =  "C:/log/log_GenerarComponentes"+fechaActual+".txt";
		else
			file = "./log_GenerarComponentes"+fechaActual+".txt";
		
		File newLogFile = new File(file);
		FileWriter fw;
		String str="";
		
		if(!newLogFile.exists())
			fw = new FileWriter(newLogFile);
		else
			fw = new FileWriter(newLogFile,true);
		
		BufferedWriter bw=new BufferedWriter(fw);
		
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
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
			//String str="";
			//boolean procesamiento_caja = true;
			
			str = str + "INICIO PROCESO INSERT BAREMOS DETALLE COMPONENTE"+ " \n";	

			bw.write(str);
			bw.flush();
			bw.newLine();
		
			String sqlconsComponent = getSQL(getResource("sql-consultaComponente.sql"), inputParams);
			Recordset rscomponente = db.get(sqlconsComponent);
				
		   if(rscomponente.getRecordCount() > 0) {
			   
			   String sqlEx = getSQL(getResource("sql-consultaSiExiste.sql"), inputParams);
				Recordset rsE = db.get(sqlEx);
				
				   if(rsE.getRecordCount() > 0 ){
					   str = str + "YA EXISTE UN REGISTRO EN BAREMOS DETALLE COMPONENTE SOLO SE ACTUALIZARAN LOS PRECIO Y MONTOS"+ " \n";	
					   bw.write(str);
					   bw.flush();
					   bw.newLine();
					   getRequest().setAttribute("mensaje", str);
						rc = 1;
						
				   }else{
					   
					   //rscomponente.first();	
						str = str + "INSERT BAREMOS DETALLE COMPONENTE"+ " \n";	
							
						while(rscomponente.next()){
							String sqlInsertOF = getResource("insert-componente.sql");
							sqlInsertOF = getSQL(sqlInsertOF, rscomponente);
							db.exec(sqlInsertOF);
						}
						
						bw.write(str);
						bw.flush();
						bw.newLine();
						getRequest().setAttribute("mensaje", str);
						rc = 1;
						//return 1;
					
				   }
						
			
				String sqlUpdatePor = getResource("update-componente.sql");
				sqlUpdatePor = getSQL(sqlUpdatePor, inputParams);
				db.exec(sqlUpdatePor);
		
				
				str = str + "Fin proceso insertar BAREMOS DETALLE Componente"+ " \n";
				bw.write(str);
				bw.flush();
				bw.newLine();
				
				//return 1;
								
			}else{
				str = str + "Error getRecordCount BAREMOS DETALLE Componente < 0"+ " \n";
				bw.write(str);
				bw.flush();
				bw.newLine();
				
				//return 1;
			}
		
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
