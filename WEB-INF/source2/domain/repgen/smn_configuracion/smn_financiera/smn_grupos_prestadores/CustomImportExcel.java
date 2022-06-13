package domain.repgen.smn_configuracion.smn_financiera.smn_grupos_prestadores;

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
        String[] params = new String[] {"gpp_codigo",
        		                        "gpp_descripcion",
        		                        "gpp_area_servicio_ref",
        		                        "gpp_unidad_servicio_ref",
        		                        "gpp_orden_atencion_ref"};
        return params;
     }
	 


}
