select
	smn_base.smn_activo_fijo.smn_afijo_id, 
	smn_base.smn_activo_fijo.acf_codigo as acf_codigo_pl0,
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id, 
	smn_base.smn_codigos_impuestos.imp_codigo as imp_codigo_pl1,
	(select smn_base.smn_activo_fijo.acf_codigo|| ' - ' || smn_base.smn_activo_fijo.acf_nombre from  smn_base.smn_activo_fijo where smn_base.smn_activo_fijo.smn_afijo_id is not null  and smn_base.smn_activo_fijo.smn_afijo_id=smn_base.smn_rel_afijo_cod_impuesto.smn_afijo_id  order by acf_nombre ) as smn_afijo_id_combo,
	(select smn_base.smn_codigos_impuestos.imp_codigo|| ' - ' || smn_base.smn_codigos_impuestos.imp_descripcion from  smn_base.smn_codigos_impuestos  where smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id is not null  and smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id=smn_base.smn_rel_afijo_cod_impuesto.smn_codigos_impuestos_id  order by imp_descripcion ) as smn_codigos_impuestos_id_combo,
	smn_base.smn_rel_afijo_cod_impuesto.smn_afijo_id,
	smn_base.smn_rel_afijo_cod_impuesto.smn_codigos_impuestos_id,
	smn_base.smn_rel_afijo_cod_impuesto.rai_idioma,
	smn_base.smn_rel_afijo_cod_impuesto.rai_usuario,
	smn_base.smn_rel_afijo_cod_impuesto.rai_fecha_registro,
	smn_base.smn_rel_afijo_cod_impuesto.rai_hora,
	smn_base.smn_rel_afijo_cod_impuesto.smn_rel_afijo_cod_impuesto_id
	
from
	smn_base.smn_activo_fijo,
	smn_base.smn_codigos_impuestos,
	smn_base.smn_rel_afijo_cod_impuesto
where
	smn_base.smn_activo_fijo.smn_afijo_id=smn_base.smn_rel_afijo_cod_impuesto.smn_afijo_id and
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id=smn_base.smn_rel_afijo_cod_impuesto.smn_codigos_impuestos_id
and smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id =${fld:id2}			
order by
		smn_rel_afijo_cod_impuesto_id
