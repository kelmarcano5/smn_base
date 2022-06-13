package domain.repgen.smn_configuracion.smn_ubicacion_geografica.smn_direccion;

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
        String[] params = new String[] {"dir_codigo",
        		                        "dir_descripcion",
        		                        "dir_pais_ref",
        		                        "dir_entidad_federal_ref",
        		                        "dir_ciudad_ref",
        		                        "dir_municipio_ref",
        		                        "dir_parroquia_ref",
        		                        "dir_zona_postal_ref",
        		                        "dir_tipo_via_ref",
        		                        "dir_tipo_via_nom",
        		                        "dir_tipo_via_num",
        		                        "dir_edificacion_ref",
        		                        "dir_edificacion_nom",
        		                        "dir_edificacion_num",
        		                        "dir_tipo_localidad_ref",
        		                        "dir_tipo_localidad_nom",
        		                        "dir_apartado_postal",
        		                        "dir_categoria",
        		                        "dir_mapa_longitud",
        		                        "dir_mapa_latitud"};
        return params;
     }
	 


}
