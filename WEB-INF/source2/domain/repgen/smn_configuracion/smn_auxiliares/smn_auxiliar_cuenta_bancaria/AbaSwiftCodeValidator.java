package domain.repgen.smn_configuracion.smn_auxiliares.smn_auxiliar_cuenta_bancaria;

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
 * Creation date: 3/march/2004<br>
 * Last Update: 3/march/2004<br>
 * (c) 2004 Martin Cordova<br>
 * This code is released under the LGPL license<br>
 * @author Martin Cordova (dinamica@martincordova.com)
 * */
public class AbaSwiftCodeValidator extends AbstractValidator
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
		String min = (String)attribs.get("min");
		String max = (String)attribs.get("max");
		
		if (code==null)
			throw new Throwable("Invalid attribute 'code' - cannot be null.");
		
		if (min==null || max==null)
			throw new Throwable("Invalid attribute 'min' or 'max' - cannot be null.");
		
		if (inputParams.isNull(code))
			return true;
			
		String value = inputParams.getString(code);
		int minValue = Integer.valueOf(min);
		int maxValue = Integer.valueOf(max);
		
		int n = value.length();		
		if ((n >= minValue) && (n <= maxValue))
			return true;
		else
			return false;
			
	}

}
