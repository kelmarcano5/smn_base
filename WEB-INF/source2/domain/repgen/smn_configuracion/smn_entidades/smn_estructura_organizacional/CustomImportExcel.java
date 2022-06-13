package domain.repgen.smn_configuracion.smn_entidades.smn_estructura_organizacional;

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
        String[] params = new String[] {"smn_configuracion_estructura_id_ref",
        		                        "eor_codigo",
        		                        "eor_nombre",
        		                        "eor_centro_costo_ref",
        		                        "eor_clase_auxiliar_ref",
        		                        "eor_auxiliar_ref"};
        return params;
     }
	 


}
