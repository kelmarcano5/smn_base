package domain.repgen.smn_configuracion.smn_auxiliares.smn_auxiliar_unidades_negocios;

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
        String[] params = new String[] {"tun_codigo",
        		                        "tun_nombre",
        		                        "tun_responsable",
        		                        "tun_direccion_ref",
        		                        "tun_telefono_fijo",
        		                        "tun_telefono_movil",
        		                        "tun_email"};
        return params;
     }
	 


}
