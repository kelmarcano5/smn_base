select
	smn_base.smn_paises.smn_paises_id,
	${field}
from
	smn_base.smn_idiomas,
	smn_base.smn_monedas,
	smn_base.smn_paises
where
	smn_base.smn_paises.smn_paises_id is not null
and
	smn_base.smn_idiomas.smn_idiomas_id = smn_base.smn_paises.pai_idioma_oficial 
and
	smn_base.smn_monedas.smn_monedas_id = smn_base.smn_paises.pai_moneda_oficial
and
   	smn_base.smn_paises.pai_idioma = '${def:locale}'
and
	smn_base.smn_paises.pai_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_paises.smn_paises_id desc
	
	
