select smn_base.smn_auxiliar_contacto.smn_auxiliar_rf, 
case
 when smn_base.smn_auxiliar_contacto.auc_descripcion is null then '' else smn_base.smn_auxiliar_contacto.auc_descripcion
end as auc_descripcion from smn_base.smn_auxiliar_contacto
where smn_base.smn_auxiliar_contacto.smn_tipo_contactos_rf='2' and smn_base.smn_auxiliar_contacto.smn_auxiliar_rf=${fld:id}