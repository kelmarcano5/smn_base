package domain.repgen.smn_configuracion.smn_entidades.smn_unidades_negocios;

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
        String[] params = new String[] {"uen_codigo",
        		                        "uen_nombre",
        		                        "uen_responsable",
        		                        "uen_direccion_ref",
        		                        "uen_telefono_fijo",
        		                        "uen_telefono_movil",
        		                        "uen_email"};
        return params;
     }
	 


}
