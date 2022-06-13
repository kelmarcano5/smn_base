package domain.repgen.smn_configuracion.smn_entidades.smn_sucursales;

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
        String[] params = new String[] {"suc_empresa_ref",
        		                        "suc_codigo",
        		                        "suc_nombre",
        		                        "suc_unidad_negocio_ref",
        		                        "suc_maneja_area_servicio_ref",
        		                        "suc_responsable",
        		                        "suc_direccion_ref",
        		                        "suc_telefono_fijo",
        		                        "suc_telefono_movil",
        		                        "suc_email"};
        return params;
     }
	 


}
