package domain.repgen.smn_configuracion.smn_auxiliares.smn_auxiliar_cuenta_bancaria;

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
        String[] params = new String[] {"acb_num_cuenta",
        		                        "acb_tipo_cta_banco_ref",
        		                        "acb_respons_cuenta",
        		                        "acb_banco_pertenece_ref",
        		                        "acb_num_aba"};
        return params;
     }
	 


}
