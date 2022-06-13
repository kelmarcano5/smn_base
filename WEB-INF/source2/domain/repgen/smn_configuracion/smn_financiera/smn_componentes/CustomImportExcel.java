package domain.repgen.smn_configuracion.smn_financiera.smn_componentes;

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
        String[] params = new String[] {"cmp_codigo",
        		                        "cmp_descripcion",
        		                        "cmp_area_servicio_ref",
        		                        "cmp_unidad_servicio_ref",
        		                        "cmp_vigencia_desde",
        		                        "cmp_vigencia_hasta",
        		                        "cmp_visible_ref",
        		                        "cmp_req_grupo_prestador_ref",
        		                        "cmp_grupo_prestador_ref",
        		                        "cmp_req_honorario_ref",
        		                        "cmp_tiempo_estimado",
        		                        "cmp_clase_auxiliar_ref",
        		                        "cmp_tipo_ref",
        		                        "cmp_almacen_ref",
        		                        "cmp_calculo_ref",
        		                        "cmp_cantidad",
        		                        "cmp_precio",
        		                        "cmp_porcentaje",
        		                        "cmp_trans_general_ref"};
        return params;
     }
	 


}
