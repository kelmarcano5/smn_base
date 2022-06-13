package domain.repgen.smn_configuracion.smn_financiera.smn_cuentas_bancarias;

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
        String[] params = new String[] {"cba_entidades_financieras_ref",
        		                        "cba_codigo",
        		                        "cba_nombre",
        		                        "cba_nro_cuenta",
        		                        "cba_tipo_cta_banco_ref",
        		                        "cba_tipo_cta_banco_ref"};
        return params;
     }
	 


}
