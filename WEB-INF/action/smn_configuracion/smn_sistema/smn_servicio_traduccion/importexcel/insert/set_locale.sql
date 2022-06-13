select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:set_locale_desc})) = upper(trim('${lbl:b_spanish}')) then 'ES'
				when upper(trim(${fld:set_locale_desc})) = upper(trim('${lbl:b_english}')) then 'EN'
				when upper(trim(${fld:set_locale_desc})) = upper(trim('${lbl:b_french}')) then 'FR'
				when upper(trim(${fld:set_locale_desc})) = upper(trim('${lbl:b_germany}')) then 'DE'
				when upper(trim(${fld:set_locale_desc})) = upper(trim('${lbl:b_portuguese}')) then 'PT'
				when upper(trim(${fld:set_locale_desc})) = upper(trim('${lbl:b_italian}')) then 'IT'
			end 
	), '') as set_locale_ref