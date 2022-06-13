package domain.repgen.smn_configuracion.smn_auxiliares.smn_auxiliar_corporaciones;

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
        String[] params = new String[] {"tcp_codigo",
        		                        "tcp_nombre",
        		                        "tcp_auxiliar_unidad_negocio_ref",
        		                        "tcp_moneda_ref",
        		                        "tcp_direccion_ref"};
        return params;
     }
	 


}
