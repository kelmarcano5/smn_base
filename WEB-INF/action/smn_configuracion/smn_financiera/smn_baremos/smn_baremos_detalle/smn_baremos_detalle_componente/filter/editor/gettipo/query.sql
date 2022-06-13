select 
	smn_base.smn_componentes.cmp_tipo_componente as tipo from smn_base.smn_componentes 
where
	smn_base.smn_componentes.smn_componentes_id=${fld:id}