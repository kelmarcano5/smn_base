select 
	smn_seguridad.s_menu.menu_id as mnt_menu_id_ref 
from   
	smn_seguridad.s_menu 
where  
	upper(title) = upper(${fld:mnt_menu_id_desc})
