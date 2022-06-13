package domain.repgen.smn_configuracion.smn_financiera.smn_prestadores_servicios;

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
        String[] params = new String[] {"prs_codigo",
        		                        "prs_nombres",
        		                        "prs_apellidos",
        		                        "prs_area_servicio_ref",
        		                        "prs_unidad_servicio_ref",
        		                        "prs_clase_auxiliar_ref",
        		                        "prs_auxiliar_ref",
        		                        "smn_grupos_prestadores_ref",
        		                        "prs_direccion_ref",
        		                        "prs_telefono_fijo",
        		                        "prs_telefono_movil",
        		                        "prs_frecuencia"};
        return params;
     }
	 


}
