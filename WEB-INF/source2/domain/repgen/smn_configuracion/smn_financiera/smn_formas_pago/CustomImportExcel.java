package domain.repgen.smn_configuracion.smn_financiera.smn_formas_pago;

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
        String[] params = new String[] {"fop_codigo",
        		                        "fop_descripcion",
        		                        "fop_medio_pago_ref",
        		                        "fop_requiere_banco_ref",
        		                        "fop_franquicia_ref"};
        return params;
     }
	 


}
