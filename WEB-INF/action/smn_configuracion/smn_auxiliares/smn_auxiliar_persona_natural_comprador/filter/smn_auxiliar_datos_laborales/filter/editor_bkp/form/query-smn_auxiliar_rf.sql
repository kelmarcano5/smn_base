select smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id as id, smn_base.smn_auxiliar_persona_natural.ant_nombres ||' - '|| 
smn_base.smn_auxiliar_persona_natural.ant_apellidos as item from 
smn_base.smn_auxiliar_persona_natural 
left OUTER join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_persona_natural.smn_clase_auxiliar_id 
where smn_base.smn_clase_auxiliar.cla_codigo='PA'