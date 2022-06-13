select 
	case
		when upper(${fld:mnt_locale_desc}) = upper('${lbl:b_spanish}') then 'ES'
		when upper(${fld:mnt_locale_desc}) = upper('${lbl:b_english}') then 'EN'
		when upper(${fld:mnt_locale_desc}) = upper('${lbl:b_french}') then 'FR'
		when upper(${fld:mnt_locale_desc}) = upper('${lbl:b_germany}') then 'DE'
		when upper(${fld:mnt_locale_desc}) = upper('${lbl:b_portuguese}') then 'PT'
		when upper(${fld:mnt_locale_desc}) = upper('${lbl:b_italian}') then 'IT'
	end as mnt_locale_ref