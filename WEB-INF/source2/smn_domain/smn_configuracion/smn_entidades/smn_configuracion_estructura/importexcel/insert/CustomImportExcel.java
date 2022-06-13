package smn_domain.smn_configuracion.smn_entidades.smn_configuracion_estructura.importexcel.insert;

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
			"coe_separador",
			"coe_niveles",
			"coe_mascara",
			"coe_codigo",
			"coe_nombre"
		};
        return params;
     }
	 


}
