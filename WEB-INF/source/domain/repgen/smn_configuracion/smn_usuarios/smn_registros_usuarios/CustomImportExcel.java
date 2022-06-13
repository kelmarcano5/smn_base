package domain.repgen.smn_configuracion.smn_usuarios.smn_registros_usuarios;

import dinamica.ImportExcel;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class CustomImportExcel extends ImportExcel
{	
	@Override
	public InputStream getInputStream(File file) throws Throwable 
	{

		InputStream f = new FileInputStream(file); 
		InputStream xls = new domain.convert.ExcelConvertHelper().convertFromXLSXtoXLS(f);
		
		return xls;
	}
	
	 @Override
     public String[] getParamsNames() throws Throwable 
	 {
        String[] params = new String[] {"rgu_tipo_doc_oficial_ref",
        		                        "rgu_num_doc_oficial",
        		                        "rgu_nro_id_fiscal",
        		                        "rgu_nombres",
        		                        "rgu_apellidos",
        		                        "rgu_tipo_registro_ref",
        		                        "rgu_email"};
        return params;
     }
	 


}
