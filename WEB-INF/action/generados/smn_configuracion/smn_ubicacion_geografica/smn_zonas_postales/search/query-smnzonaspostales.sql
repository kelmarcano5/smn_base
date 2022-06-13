select
	(select smn_base.smn_parroquias.prr_codigo || ' - ' ||  smn_base.smn_parroquias.prr_nombre_corto from  smn_base.smn_parroquias  where smn_base.smn_parroquias.smn_parroquias_id is not null  and smn_base.smn_parroquias.smn_parroquias_id=smn_base.smn_zonas_postales.zpo_parroquias  order by smn_base.smn_parroquias.prr_nombre_corto ) as zpo_parroquias_combo,
	smn_base.smn_zonas_postales.zpo_parroquias,
	smn_base.smn_zonas_postales.zpo_sector,
	smn_base.smn_zonas_postales.zpo_codigo,
	smn_base.smn_zonas_postales.zpo_fecha_registro
from 
	smn_base.smn_zonas_postales
order by 
	smn_base.smn_zonas_postales.smn_zonas_postales_id desc