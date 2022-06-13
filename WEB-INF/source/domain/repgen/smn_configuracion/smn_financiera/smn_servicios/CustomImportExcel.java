package domain.repgen.smn_configuracion.smn_financiera.smn_servicios;

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
        String[] params = new String[] {"svc_codigo",
        		                        "svc_descripcion",
        		                        "svc_clase_auxiliar_ref",
        		                        "svc_tipo_servicio_ref",
        		                        "svc_area_servicio_ref",
        		                        "svc_unidad_servicio_ref",
        		                        "svc_centro_costo_ref",
        		                        "svc_frecuencia",
        		                        "svc_precio_general",
        		                        "svc_inactivo_ref",
        		                        "svc_req_honorario_ref",
        		                        "svc_vigencia_desde",
        		                        "svc_vigencia_hasta",
        		                        "svc_requisitos",
        		                        "svc_trans_general_ref",
        		                        "svc_compuesto"};
        return params;
     }
	 


}
