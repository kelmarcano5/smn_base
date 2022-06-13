select
smn_base.smn_idiomas.idi_descripcion,
	smn_base.smn_monedas.mon_nombre,
		smn_base.smn_paises.smn_paises_id,
	smn_base.smn_paises.pai_codigo,
	smn_base.smn_paises.pai_nombre_corto,
	smn_base.smn_paises.pai_nombre_largo,
	smn_base.smn_paises.pai_gentilicio,
	smn_base.smn_paises.pai_codigo_ddi,
	smn_base.smn_paises.pai_idioma_oficial,
	smn_base.smn_paises.pai_moneda_oficial,
	smn_base.smn_paises.pai_fecha_registro
	
from

	smn_base.smn_idiomas,
	smn_base.smn_monedas,
	smn_base.smn_paises
where
	smn_base.smn_idiomas.smn_idiomas_id = smn_base.smn_paises.pai_idioma_oficial and
	smn_base.smn_monedas.smn_monedas_id = smn_base.smn_paises.pai_moneda_oficial
