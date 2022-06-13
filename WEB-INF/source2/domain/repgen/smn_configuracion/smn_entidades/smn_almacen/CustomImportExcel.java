package domain.repgen.smn_configuracion.smn_entidades.smn_almacen;

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
        String[] params = new String[] {"alm_codigo",
        		                        "alm_nombre",
        		                        "alm_empresa_ref",
        		                        "alm_unidad_negocio_ref",
        		                        "alm_sucursal_ref",
        		                        "alm_area_servicio_ref",
        		                        "alm_unidad_servicio_ref"};
        return params;
     }
	 


}
