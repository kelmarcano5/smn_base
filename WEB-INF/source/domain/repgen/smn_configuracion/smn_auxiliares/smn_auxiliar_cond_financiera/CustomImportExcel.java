package domain.repgen.smn_configuracion.smn_auxiliares.smn_auxiliar_cond_financiera;

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
        String[] params = new String[] {"cfn_codigo",
        		                        "cfn_descripcion",
        		                        "cfn_clase_auxiliar_ref",
        		                        "cfn_auxiliar_categoria_ref",
        		                        "cfn_limite_credito",
        		                        "cfn_porc_exceso_limite",
        		                        "cfn_valida_saldos_vec_ref",
        		                        "cfn_dias_adic_saldos_venc",
        		                        "cfn_num_cheques_devuel"};
        return params;
     }
	 


}
