package domain.repgen.smn_configuracion.smn_auxiliares.smn_auxiliar_contacto;

import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import dinamica.*;

/**
 * Generic validator for integer value ranges (value-from - value-to).<br>
 * Will return FALSE if value2 &lt; value1, requires two custom attributes named "value1" and "value2",
 * representing the field names of the two recordset fields to use
 * in the validation logic. Returns TRUE if any of the parameters is null. 
 * 
 * <br>
 * Creation date: 3/march/2016<br>
 * Last Update: 3/march/2016<br>
 * (c) 2016 SIMONE C.A<br>
 * This code is released under the LGPL license<br>
 * @author Martin Cordova (dinamica@martincordova.com)
 * */
public class AbaSwiftDigitsCodeValidator extends AbstractValidator
{

	/* (non-Javadoc)
	 * @see dinamica.AbstractValidator#isValid(javax.servlet.http.HttpServletRequest, dinamica.Recordset, java.util.HashMap)
	 */
	public boolean isValid(
		HttpServletRequest req,
		Recordset inputParams,
		HashMap<String, String> attribs)
		throws Throwable
	{
		String code = (String)attribs.get("code");
		
		if (code==null)
			throw new Throwable("Invalid attribute 'code' - cannot be null.");
		
		if (inputParams.isNull(code))
			return true;
			
		String value = inputParams.getString(code);
		
		int n = value.length();
		for(int i = 0; i < n; i++)
		{
			char c = value.charAt(i);
			boolean isDigit = Character.isDigit(c);
			if (!isDigit)
			{
				return false;
			}
		}
		
		return true;
					
	}

}
