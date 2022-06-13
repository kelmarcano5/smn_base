package domain;

public class Marcaje 
{

	public static String getTransactionMarkType2(String tipo_marcaje) 
	{
		StringBuilder builder = new StringBuilder();
		String[] listMark = tipo_marcaje.split(",");
		String[] listMarkLack = new String[listMark.length];

		//initialize array
		for(int i = 0; i < listMarkLack.length; i++)
		{
			listMarkLack[i] = new String("OK");
		}

		if (listMark.length == 1)
		{
			if (listMark[0].compareTo("ENT") == 0)
			{
				builder.append("ENT,SAL_SLACK");
			}
			else
			{
				builder.append("ENT_LACK,SAL");
			}
			return builder.toString();
		}

		int i = 0;
		while(i < listMark.length - 1)
		{
			if (i >= listMark.length - 1)
			{
				break;
			}
			if (listMark[i].compareTo(listMark[i+1]) == 0)
			{
				if (listMark[i].compareTo("ENT") == 0)
				{
					listMarkLack[i] = "SAL_LACK";
				}
				else
				{
					listMarkLack[i] = "ENT_LACK";
				}
				i++;
			}
			else
			{
				if (listMark[i].compareTo("SAL") == 0)
				{
					listMarkLack[i] = "ENT_LACK";
					i++;
				}//if listMark[i] = "ENT" then is OK
				else
				{
					i+=2;
				}
			}
		}
		if (listMark[listMark.length - 2].compareTo(listMark[listMark.length - 1]) == 0)
		{
			if (listMark[listMark.length - 1].compareTo("ENT") == 0)
			{
				listMarkLack[listMark.length - 1] = "SAL_LACK";
			}
			else
			{
				listMarkLack[listMark.length - 1] = "ENT_LACK";
			}
		}
		else
		{
			if (listMark[listMark.length - 2].compareTo("SAL") == 0)
			{
				listMarkLack[listMark.length - 2] = "ENT_LACK";
				listMarkLack[listMark.length - 1] = "SAL_LACK";
			}//if listMark[i] = "ENT" then is OK  
		}

		/*for(int k = 0; k < listMark.length; k++)
		{
			System.out.print(listMark[k] + ",");
		}
		System.out.println();


		for(int k = 0; k < listMarkLack.length; k++)
		{
			System.out.print(listMarkLack[k] + ",");
		}
		System.out.println();		
		 */

		for(int k = 0; k < listMarkLack.length; k++)
		{
			if (listMarkLack[k].compareTo("OK") == 0)
			{
				builder.append(listMark[k]);
			}
			else
			{
				if (listMarkLack[k].compareTo("ENT_LACK") == 0)
				{
					builder.append("ENT_LACK,SAL");
				}
				else
				{
					builder.append("ENT,SAL_LACK");
				}
			}
			builder.append(",");
		}
		//remove last comma
		String result = builder.toString();
		return result.substring(0, result.length() - 1);
	}

	public static String getTransactionMarkHour2(String tipo_marcaje, String hora_trans, int tolerancia) 
	{
		StringBuilder builder = new StringBuilder();
		String[] listMark = getTransactionMarkType2(tipo_marcaje).split(",");
		String[] listHour = hora_trans.split(",");

		int i = 0, j = 0;
		while(i < listMark.length - 1)
		{
			if ((listMark[i].endsWith("LACK")) || (listMark[i+1].endsWith("LACK")))
			{
				builder.append(listHour[j] + "," + listHour[j]);
				j++;
			}
			else
			{
				builder.append(listHour[j] + "," + listHour[j+1]);
				j+=2;
			}
			i+=2;
			builder.append(",");
		}		

		//remove last comma
		String result = builder.toString();
		return result.substring(0, result.length() - 1);
	}

	public static String getTransactionMarkType(String tipo_marcaje) 
	{
		StringBuilder builder = new StringBuilder();
		String[] listMark = tipo_marcaje.split(",");
		String[] listMarkLack = new String[listMark.length];

		//case when there is once mark
		if (listMark.length == 1)
		{
			if (listMark[0].compareTo("ENT") == 0)
			{
				builder.append("ENT,SAL_LACK");
			}
			else
			{
				builder.append("ENT_LACK,SAL");	
			}

			String result = builder.toString();
			//System.out.println("Builder: " + result);
			return result;
		}

		//initialize array
		for(int i = 0; i < listMarkLack.length; i++)
		{
			listMarkLack[i] = new String("");
		}

		// 0   1   2   3   4   5   6   7   8   9
		//ENT,SAL,ENT,SAL,SAL,SAL,SAL,SAL,ENT,SAL
		//computing which are mark lack
		int i = 0;
		while(i < listMark.length - 1)
		{
			if (listMark[i].compareTo(listMark[i+1]) == 0)
			{
				if (listMark[i].compareTo("ENT") == 0)
				{
					listMarkLack[i] = "SAL_LACK";
				}
				else
				{
					listMarkLack[i] = "ENT_LACK";
				}
				i+=2;
			}
			else
			{
				i++;
			}
		}
		if (listMark[listMark.length - 1].compareTo("ENT") == 0)
		{
			listMarkLack[listMark.length - 1] = "SAL_LACK";
		}
		else
		{
			if (listMark[listMark.length - 2].compareTo("ENT") != 0)
			{
				listMarkLack[listMark.length - 1] = "ENT_LACK";
			}
		}


		for(int k = 0; k < listMark.length; k++)
		{
			System.out.print(listMark[k] + ",");
		}
		System.out.println();


		for(int k = 0; k < listMarkLack.length; k++)
		{
			System.out.print(listMarkLack[k] + ",");
		}
		System.out.println();


		//complete mark lack
		int j = 0;
		while(j < listMark.length - 1) 
		{
			if (listMark[j].compareTo(listMark[j+1]) == 0)
			{
				if (listMarkLack[j].indexOf("ENT") != -1)
				{
					builder.append(listMark[j] + "," + listMarkLack[j]);
				}
				else if (listMarkLack[j].indexOf("SAL") != -1)
				{
					builder.append(listMarkLack[j] + "," + listMark[j]);
				}
				j++;
			}
			else
			{
				builder.append(listMark[j] + "," + listMark[j+1]);
				j+=2;
			}			
			builder.append(",");
		}

		//add last element
		if (listMark.length % 2 != 0)
		{
			if (listMark[listMark.length - 1].compareTo("ENT") == 0)
			{
				builder.append(listMark[listMark.length - 1]);
				builder.append(",");
				builder.append("SAL_LACK");				
			}
			else
			{
				builder.append("ENT_LACK");
				builder.append(",");
				builder.append(listMark[listMark.length - 1]);
			}
			builder.append(",");
		}

		String result = builder.toString();
		//System.out.println("Builder: " + result);

		//remove last comma
		return result.substring(0, result.length() - 1);
	}


	public static String getTransactionMarkHour(String tipo_marcaje, String hora_trans, int tolerancia) 
	{
		String[] listMark = tipo_marcaje.split(",");

		String[] listHour = hora_trans.split(",");
		String[] listHourLack = new String[listMark.length];

		if (listMark.length == 1)
		{
			StringBuffer builder = new StringBuffer();
			int tolerance = 0;
			if (listMark[0].compareTo("ENT") == 0)
			{
				tolerance = tolerancia; // if mark type is an input then you must plus tolerance value 
				String newHour = getNewHour(listHour[0],tolerance);

				builder.append(newHour + "_LACK");
				builder.append(",");
				builder.append(listHour[0]);
			}
			else
			{
				tolerance = -tolerancia; // if mark type is an output then you must subtract tolerance value
				String newHour = getNewHour(listHour[0],tolerance);

				builder.append(listHour[0]);
				builder.append(",");
				builder.append(newHour + "_LACK");
			}

			return builder.toString();
		}

		//initialize array
		for(int i = 0; i < listHourLack.length; i++)
		{
			listHourLack[i] = new String("");
		}

		int i = 0;
		while(i < listMark.length - 1)
		{
			if (listMark[i].compareTo(listMark[i+1]) == 0)
			{
				int tolerance = 0;
				if (listMark[i].compareTo("ENT") == 0)
				{
					tolerance = tolerancia; // if mark type is an input then you must plus tolerance value 
				}
				else
				{
					tolerance = -tolerancia; // if mark type is an output then you must subtract tolerance value 
				}
				String newHour = getNewHour(listHour[i],tolerance);
				listHourLack[i] = newHour + "_LACK";
				listHourLack[i+1] = newHour + "_LACK";
			}
			i+=2;
		}

		for(int k = 0; k < listHour.length; k++)
		{
			System.out.print(listHour[k] + ",");
		}
		System.out.println();


		for(int k = 0; k < listHourLack.length; k++)
		{
			System.out.print(listHourLack[k] + ",");
		}
		System.out.println();

		StringBuilder builder = new StringBuilder();
		int j = 0;
		while(j < listHourLack.length) 
		{
			String hourLack = listHourLack[j];
			if (hourLack.compareTo("") != 0)
			{
				if (hourLack.indexOf("ENT") != -1)
				{
					builder.append(hourLack);
					builder.append(",");
					builder.append(listHour[j].substring(0, listHour[j].indexOf("_")));
				}
				else
				{
					builder.append(listHour[j].substring(0, listHour[j].indexOf("_")));
					builder.append(",");
					builder.append(hourLack);
				}
			}
			else
			{
				builder.append(listHour[j].substring(0, listHour[j].indexOf("_")));
			}
			builder.append(",");
			j++;
		}

		//add last element
		if (listHour.length % 2 != 0)
		{
			if (listHour[listHour.length - 1].compareTo("ENT") == 0)
			{
				builder.append(listHour[listHour.length - 1]);
				builder.append(",");
				builder.append(listHourLack[listHourLack.length - 1]);			
			}
			else
			{
				builder.append(listHourLack[listHourLack.length - 1]);
				builder.append(",");
				builder.append(listHour[listHour.length - 1]);
			}
			builder.append(",");
		}

		String result = builder.toString();		

		return result.substring(0, result.length() - 1);
	}

	public static String getNewHour(String hora_trans, int tolerancia) 
	{
		boolean pad = false; 

		int minutes = 0;
		if (hora_trans.charAt(3) == '0')
		{
			minutes = hora_trans.charAt(4) - '0';
			pad = true;
		}
		else
		{
			minutes = Integer.parseInt(hora_trans.charAt(3) + "" + hora_trans.charAt(4));	
		}
		minutes += tolerancia;

		StringBuffer sb = new StringBuffer(hora_trans.substring(0, hora_trans.indexOf("_")));

		if (!pad)
		{
			sb.replace(3, 5, Integer.toString(minutes));
		}
		else
		{
			sb.replace(3, 5, "0" + Integer.toString(minutes));
		}

		return sb.toString();
	}

	public static int getHours(String hora_trans) 
	{		
		int hour = 0;
		if (hora_trans.charAt(0) == '0')
		{
			if (hora_trans.charAt(1) == '0')
			{
				hour = 24;
			}
			else
			{
				hour = Integer.parseInt(hora_trans.charAt(1) + "");
			}
		}
		else
		{
			hour = Integer.parseInt(hora_trans.charAt(0) + "" + hora_trans.charAt(1));	
		}

		return hour;
	}

	public static int getMinutes(String hora_trans) 
	{		
		int minutes = 0;
		if (hora_trans.charAt(3) == '0')
		{
			minutes = Integer.parseInt(hora_trans.charAt(1) + "");
		}
		else
		{
			minutes = Integer.parseInt(hora_trans.charAt(3) + "" + hora_trans.charAt(4));	
		}

		return minutes;
	}

	public static String getEffectiveTimeList(String hora_trans) 
	{
		String[] listHour = hora_trans.split(",");

		System.out.println(hora_trans);

		String acum = "";
		int i = 0; 
		while(i < listHour.length - 1)
		{
			double hourToMin = 0.0;
			double minute = 0.0;
			double result = 0.0;
			//boolean lack = false;
			if (i + 1 < listHour.length)
			{
				hourToMin = (getHours(listHour[i+1]) - getHours(listHour[i])) * 60; 
				minute = Math.abs(getMinutes(listHour[i+1]) - getMinutes(listHour[i]));
				result = hourToMin + minute;
			}
			acum += result + ",";
			i+=2;
		}

		acum = acum.substring(0, acum.lastIndexOf(","));

		StringBuffer sb = new StringBuffer(acum);

		return sb.toString();
	}

	public static void main(String[] args) {

		System.out.println(getEffectiveTimeList("08:30_3594660,08:54_3594661,09:09_3594662,09:19_3594663,09:57_3594664,09:57_3594664,10:17_3594665,10:17_3594665,10:38_3594666,10:38_3594666,12:49_3594667,12:49_3594667,13:13_3594668,13:19_3594669"));

		/*
		System.out.println("08:00,08:30,10:00,10:15,10:30,11:00,11:15,11:30,13:00,17:30");
		System.out.println(getTransactionMarkHour2("ENT,SAL,ENT,SAL,SAL,SAL,SAL,SAL,ENT,SAL","08:00,08:30,10:00,10:15,10:30,11:00,11:15,11:30,13:00,17:30",0));
		System.out.println();
		System.out.println(getTransactionMarkHour2("SAL,SAL","07:00,13:00",0));
		System.out.println();
		System.out.println(getTransactionMarkHour2("ENT,ENT","08:00,10:00",0));
		System.out.println();
		System.out.println(getTransactionMarkHour2("SAL,ENT,SAL","07:00,09:00,17:00",0));
		System.out.println();
		System.out.println(getTransactionMarkHour2("SAL,SAL,SAL","08:00,010:00,16:00",0));
		System.out.println();
		System.out.println(getTransactionMarkHour2("ENT,ENT,ENT","08:30,12:00,18:00",0));
		System.out.println();
		System.out.println(getTransactionMarkType2("ENT,SAL,ENT,SAL,SAL,SAL,SAL,SAL,ENT,SAL"));
		System.out.println();
		System.out.println(getTransactionMarkType2("ENT,SAL,ENT,SAL,SAL,SAL,SAL,SAL,SAL,ENT"));
		System.out.println();
		System.out.println(getTransactionMarkType2("SAL,ENT,ENT,SAL,SAL,SAL,SAL,SAL,SAL,ENT"));
		System.out.println();
		System.out.println(getTransactionMarkType2("SAL,SAL"));
		System.out.println();
		System.out.println(getTransactionMarkType2("ENT,ENT"));
		System.out.println();
		System.out.println(getTransactionMarkType2("SAL,ENT,SAL"));
		System.out.println();
		System.out.println(getTransactionMarkType2("SAL,SAL,SAL"));
		System.out.println();
		System.out.println(getTransactionMarkType2("ENT,ENT,ENT"));

		System.out.println(getTransactionMarkType("ENT,SAL,ENT,SAL,SAL,SAL,SAL,SAL,ENT,SAL"));
		System.out.println();
		System.out.println(getTransactionMarkType("SAL,SAL"));
		System.out.println();
		System.out.println(getTransactionMarkType("ENT,ENT"));
		System.out.println();
		System.out.println(getTransactionMarkType("SAL,ENT,SAL"));
		System.out.println();
		System.out.println(getTransactionMarkType("SAL,SAL,SAL"));
		System.out.println();
		System.out.println(getTransactionMarkType("ENT,ENT,ENT"));
		System.out.println();
		System.out.println(getTransactionMarkType("SAL,ENT,ENT,SAL,ENT,ENT,SAL"));*/

		/*System.out.println(getTransactionMarkHour("ENT,SAL,ENT,SAL,SAL,SAL,SAL,SAL,ENT,SAL", 
				                                  "08:30_3048277,08:54_3048278,09:09_3048279,09:19_3048280,09:57_3048281,10:17_3048282,10:38_3048283,12:49_3048284,13:13_3048285,13:19_3048286", 0));
		 */
	}

}
