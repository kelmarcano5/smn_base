select smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id as id, smn_base.smn_auxiliar_contacto.acn_email || ' - ' || smn_base.smn_auxiliar_contacto.acn_telefono_movil as item from smn_base.smn_auxiliar_contacto order by smn_base.smn_auxiliar_contacto.acn_telefono_movil