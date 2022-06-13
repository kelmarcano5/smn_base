select
	smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id, 
	smn_base.smn_descuentos_retenciones.dyr_codigo as dyr_codigo_pl0,
	smn_base.smn_activo_fijo.smn_afijo_id, 
	smn_base.smn_activo_fijo.acf_codigo as acf_codigo_pl1,
	(select smn_base.smn_descuentos_retenciones.dyr_codigo|| ' - ' || smn_base.smn_descuentos_retenciones.dyr_descripcion from  smn_base.smn_descuentos_retenciones  where smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id is not null  and smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id=smn_base.smn_rel_afijo_desc_retenc.smn_descuentos_retenciones_id  order by dyr_descripcion ) as smn_descuentos_retenciones_id_combo,
	(select smn_base.smn_activo_fijo.acf_codigo|| ' - ' || smn_base.smn_activo_fijo.acf_nombre from  smn_base.smn_activo_fijo  where smn_base.smn_activo_fijo.smn_afijo_id is not null  and smn_base.smn_activo_fijo.smn_afijo_id=smn_base.smn_rel_afijo_desc_retenc.smn_afijo_id  order by acf_nombre ) as smn_afijo_id_combo,
	smn_base.smn_activo_fijo.acf_codigo as acf_codigo_pl1,
	smn_base.smn_rel_afijo_desc_retenc.smn_descuentos_retenciones_id,
	smn_base.smn_rel_afijo_desc_retenc.smn_afijo_id,
	smn_base.smn_rel_afijo_desc_retenc.rad_idioma,
	smn_base.smn_rel_afijo_desc_retenc.rad_usuario,
	smn_base.smn_rel_afijo_desc_retenc.rad_fecha_registro,
	smn_base.smn_rel_afijo_desc_retenc.rad_hora,
	smn_base.smn_rel_afijo_desc_retenc.smn_rel_afijo_desc_retenc_id
	
from
	smn_base.smn_descuentos_retenciones,
	smn_base.smn_activo_fijo,
	smn_base.smn_rel_afijo_desc_retenc
where
	smn_rel_afijo_desc_retenc_id is not null
	and 	smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id=smn_base.smn_rel_afijo_desc_retenc.smn_descuentos_retenciones_id and
	smn_base.smn_activo_fijo.smn_afijo_id=smn_base.smn_rel_afijo_desc_retenc.smn_afijo_id
	${filter}
order by
		smn_rel_afijo_desc_retenc_id
