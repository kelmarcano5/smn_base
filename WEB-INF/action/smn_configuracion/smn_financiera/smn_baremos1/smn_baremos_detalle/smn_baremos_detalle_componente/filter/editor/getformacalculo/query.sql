select 
	smn_base.smn_componentes.cmp_forma_calculo as forma from smn_base.smn_componentes 
where
	smn_base.smn_componentes.smn_componentes_id=${fld:id}