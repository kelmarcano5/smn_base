select	
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl0,
	smn_base.smn_unidades_negocios.smn_entidades_id,
	smn_base.smn_unidades_negocios.uen_codigo,
	smn_base.smn_unidades_negocios.uen_nombre,
	smn_base.smn_unidades_negocios.uen_responsable,
	smn_base.smn_unidades_negocios.uen_direccion,
	smn_base.smn_unidades_negocios.uen_telefono_movil,
	smn_base.smn_unidades_negocios.uen_fecha_registro

from
	smn_base.smn_entidades,
	smn_base.smn_unidades_negocios 
where
	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_unidades_negocios.smn_entidades_id 

