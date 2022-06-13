package domain.repgen.smn_configuracion.smn_entidades.smn_areas_servicios;

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
        String[] params = new String[] {"smn_tipos_servicios_id_ref",
        		                        "ase_codigo",
        		                        "ase_descripcion",
        		                        "ase_empresa_ref",
        		                        "ase_sucursal_ref",
        		                        "ase_unidad_negocio_ref"};
        return params;
     }
	 


}
