package domain.repgen.smn_configuracion.smn_entidades.smn_corporaciones;

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
        String[] params = new String[] {"crp_codigo",
        		                        "crp_nombre",
        		                        "crp_unidad_negocio_ref",
        		                        "crp_moneda_ref",
        		                        "crp_direccion_ref"};
        return params;
     }
	 


}
