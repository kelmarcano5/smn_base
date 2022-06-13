package domain.repgen.smn_configuracion.smn_auxiliares.smn_auxiliar_centro_costo;

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
        String[] params = new String[] {"tco_codigo",
        		                        "tco_descripcion_corta",
        		                        "tco_descripcion_larga",
        		                        "tco_clase_auxiliar_ref",
        		                        "tco_auxiliar_ref",
        		                        "tco_responsable",
        		                        "tco_tipo_cco_ref",
        		                        "tco_nivel"};
        return params;
     }
	 


}
