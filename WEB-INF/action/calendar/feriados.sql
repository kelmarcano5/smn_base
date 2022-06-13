select
	smn_base.smn_feriados.fer_descripcion as descripcion,
	smn_base.smn_feriados.fer_pais as pais,
	smn_base.smn_feriados.fer_entidad_federal as estado,
	to_date(smn_base.smn_feriados.fer_feriado || '/' || 
	        extract(year from now()), 'dd/MM/yyyy') as fecha
from
	smn_base.smn_feriados