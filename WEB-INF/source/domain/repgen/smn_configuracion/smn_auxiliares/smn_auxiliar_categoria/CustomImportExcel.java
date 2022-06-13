package domain.repgen.smn_configuracion.smn_auxiliares.smn_auxiliar_categoria;

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
        String[] params = new String[] {"aca_naturaleza_auxiliar_ref",
        		                        "aca_tipo_persona_ref",
        		                        "aca_empresa_ref",
        		                        "aca_sucursal_ref",
        		                        "aca_unidad_negocio_ref",
        		                        "aca_area_servicio_ref",
        		                        "aca_unidad_servicio_ref"};
        return params;
     }
	 


}
