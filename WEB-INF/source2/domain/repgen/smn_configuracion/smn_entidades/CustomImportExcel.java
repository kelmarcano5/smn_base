package domain.repgen.smn_configuracion.smn_entidades;

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
        String[] params = new String[] {"ent_codigo",
        		                        "ent_comunidad_ref",
        		                        "ent_corporacion_ref",
        		                        "ent_unidad_negocio_ref",
        		                        "ent_maneja_sucursal_ref",
        		                        "ent_moneda_ref",
        		                        "ent_sector_economico_ref",
        		                        "ent_descripcion_corta",
        		                        "ent_descripcion_larga",
        		                        "ent_nro_id_fiscal",
        		                        "ent_direccion_ref",
        		                        "ent_contacto",
        		                        "ent_telefono_fijo",
        		                        "ent_telefono_movil",
        		                        "ent_email",
        		                        "ent_act_economica"};
        return params;
     }
	 


}
