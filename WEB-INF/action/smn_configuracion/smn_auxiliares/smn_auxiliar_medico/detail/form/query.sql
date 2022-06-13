select
    smn_base.smn_auxiliar_cond_financiera.cfn_descripcion,
    smn_base.smn_condicion_pago.cop_descripcion,
    smn_base.smn_cuentas_bancarias.cba_nombre,
    smn_base.smn_direccion.dir_descripcion,
    smn_base.smn_paises.pai_gentilicio,
    smn_base.smn_auxiliar.smn_auxiliar_id,
    case
    when smn_base.smn_auxiliar.aux_tipo_persona='PJ' then '${lbl:b_legal_person_value}'
    when smn_base.smn_auxiliar.aux_tipo_persona='PN' then '${lbl:b_natural_person_value}'
    when smn_base.smn_auxiliar.aux_tipo_persona='GO' then '${lbl:b_government_person}'
    end as aux_tipo_persona,
    smn_base.smn_naturaleza_auxiliar.naa_codigo||'-'||smn_base.smn_naturaleza_auxiliar.naa_nombre as smn_naturaleza_auxiliar_rf,
    smn_base.smn_clase_auxiliar.cla_codigo||'-'||smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
    smn_base.smn_auxiliar.aux_tipo_persona,
    smn_base.smn_auxiliar.aux_codigo,
    smn_base.smn_auxiliar.aux_descripcion,
    smn_base.smn_auxiliar.aux_apellidos,
    smn_base.smn_auxiliar.aux_nombres,
    smn_base.smn_auxiliar.aux_num_coleg_medicos,
    smn_base.smn_auxiliar.aux_fecha_registro    
from
    smn_base.smn_auxiliar
    left outer join smn_base.smn_auxiliar_cond_financiera on    smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_rf = smn_base.smn_auxiliar.aux_condicion_financiera_rf
    left outer join smn_base.smn_condicion_pago on smn_base.smn_condicion_pago.smn_condicion_pago_id = smn_base.smn_auxiliar.aux_cond_pago_rf
    left outer join smn_base.smn_cuentas_bancarias on smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id = smn_base.smn_auxiliar.aux_cuenta_bancaria_rf
    inner join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_auxiliar.aux_direccion_rf
    inner join smn_base.smn_paises on smn_base.smn_paises.smn_paises_id = smn_base.smn_direccion.dir_pais
    left outer join  smn_base.smn_naturaleza_auxiliar on 
    smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id=smn_base.smn_auxiliar.smn_naturaleza_auxiliar_rf
    left outer join smn_base.smn_clase_auxiliar on 
    smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_base.smn_auxiliar.smn_clase_auxiliar_rf
where
    smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id='4' and smn_base.smn_auxiliar.smn_auxiliar_id = ${fld:id} order by smn_auxiliar_id desc
