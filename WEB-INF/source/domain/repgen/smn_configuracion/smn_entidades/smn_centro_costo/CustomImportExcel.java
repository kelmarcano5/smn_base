package domain.repgen.smn_configuracion.smn_entidades.smn_centro_costo;

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
        String[] params = new String[] {"cco_codigo",
        		                        "cco_descripcion_corta",
        		                        "cco_descripcion_larga",
        		                        "cco_empresa_ref",
        		                        "cco_sucursal_ref",
        		                        "cco_area_servicio_ref",
        		                        "cco_unidad_servicio_ref",
        		                        "cco_almacen_ref",
        		                        "cco_nivel_ref"};
        return params;
     }
	 


}
