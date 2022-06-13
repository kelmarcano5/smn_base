package domain.repgen.smn_configuracion.smn_auxiliares.smn_auxiliar_sucursales;

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
        String[] params = new String[] {"trs_codigo",
        		                        "trs_nombre",
        		                        "trs_auxiliar_unidad_negocio_ref",
        		                        "trs_responsable",
        		                        "trs_direccion_ref",
        		                        "trs_telefono_fijo",
        		                        "trs_telefono_movil",
        		                        "trs_email"};
        return params;
     }
	 


}
