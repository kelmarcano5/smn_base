select smn_base.smn_paises.smn_paises_id as id, smn_base.smn_paises.pai_codigo || ' - ' || smn_base.smn_paises.pai_nombre_largo as item from smn_base.smn_paises order by 2