package smn_domain.smn_configuracion.smn_auxiliares.smn_auxiliar_persona_natural.importexcel.insert;

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
        String[] params = new String[] {
        		"smn_naturaleza_auxiliar_id_ref",
        		"smn_clase_auxiliar_id_ref",
        		"aux_tipo_persona_ref",
        		"aux_apellidos",
        		"aux_nombres",
        		"aux_tipo_doc_oficial_rf_ref",
        		"aux_num_doc_oficial",
        		"aux_rif",
        		"aux_sexo_ref", 		
        		"aux_estado_civil_ref",
        		"aux_fecha_nac",
        		"aux_lugar_nac",
        		"aux_direccion_rf_ref",
        		"aux_nacionalidad_rf_ref",
        		"aux_nacionalizado_ref",
        		"aux_fecha_gaceta_nac",
        		"aux_num_gaceta",
        		"aux_afiliacion_ref",
        		"aux_condicion_financiera_rf_ref",
        		"aux_cuenta_bancaria_rf_ref",
        		"aux_persona_contacto",
        		"aux_titular_rf_ref",
        		"aux_observacion",
        		"aux_peso",
        		"aux_unidad_med_peso_rf_ref",
        		"aux_estatura",
        		"aux_unidad_med_estatura_rf_ref",
        		"aux_lateralidad_ref",
        		"aux_talla_camisa",
        		"aux_unidad_med_camisa_rf_ref",
        		"aux_talla_pantalon",
        		"aux_unidad_med_pantalon_rf_ref",
        		"aux_talla_zapato",
        		"aux_unidad_med_zapato_rf_ref",
        		"aux_talla_braga",
        		"aux_unidad_med_braga_rf_ref",
        		"aux_talla_casco",
        		"aux_unidad_med_casco_rf_ref"
		};
        return params;
     }
	 


}
