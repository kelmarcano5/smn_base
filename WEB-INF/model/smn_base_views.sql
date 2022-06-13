--Vista de terceros con clase de auxiliar
drop view smn_base.v_tercero;
create view smn_base.v_tercero as select 
	smn_base.smn_terceros.smn_terceros_id as id, 
	smn_base.smn_clase_auxiliar.cla_codigo as codigo,
	smn_base.smn_clase_auxiliar.cla_nombre as nombre
from 
	smn_base.smn_terceros,
	smn_base.smn_auxiliar_categoria,
	smn_base.smn_clase_auxiliar
where
	smn_base.smn_terceros.ter_auxiliar_categoria=smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id 
and
	smn_base.smn_auxiliar_categoria.aca_clase_auxiliar=smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id;
	
--Vista de terceros con clase de auxiliar
-- View: smn_base.smn_v_auxiliar

DROP VIEW smn_base.smn_v_auxiliar;

CREATE OR REPLACE VIEW smn_base.smn_v_auxiliar AS 
 SELECT smn_base.smn_auxiliar_contable.smn_auxiliar_contable_id AS smn_v_auxiliar_id,
    smn_base.smn_auxiliar_contable.aac_codigo AS smn_codigo,
    smn_base.smn_auxiliar_contable.aac_descripcion AS smn_item
   FROM smn_base.smn_auxiliar_categoria,
    smn_base.smn_auxiliar_contable
  WHERE smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id = smn_base.smn_auxiliar_contable.smn_auxiliar_categoria_id
UNION
 SELECT smn_base.smn_auxiliar_banco.smn_auxiliar_banco_id AS smn_v_auxiliar_id,
    smn_base.smn_auxiliar_banco.aab_codigo AS smn_codigo,
    smn_base.smn_auxiliar_banco.aab_descripcion AS smn_item
   FROM smn_base.smn_auxiliar_categoria,
    smn_base.smn_auxiliar_banco
  WHERE smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id = smn_base.smn_auxiliar_banco.smn_auxiliar_categoria_id
UNION
 SELECT smn_base.smn_auxiliar_medico.smn_auxiliar_medico_id AS smn_v_auxiliar_id,
    smn_base.smn_auxiliar_medico.aam_codigo AS smn_codigo,
    smn_base.smn_auxiliar_medico.aam_descripcion AS smn_item
   FROM smn_base.smn_auxiliar_categoria,
     smn_base.smn_auxiliar_medico
  WHERE smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id = smn_base.smn_auxiliar_medico.smn_auxiliar_categoria_id
UNION
 SELECT smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_prestador_servicio_id AS smn_v_auxiliar_id,
    smn_base.smn_auxiliar_prestador_servicio.aps_codigo AS smn_codigo,
    smn_base.smn_auxiliar_prestador_servicio.aps_descripcion AS smn_item
   FROM smn_base.smn_auxiliar_categoria,
    smn_base.smn_auxiliar_prestador_servicio
  WHERE smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id = smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_categoria_id
UNION
 SELECT smn_base.smn_auxiliar_tercero.smn_auxiliar_tercero_id AS smn_v_auxiliar_id,
    smn_base.smn_auxiliar_tercero.atr_codigo AS smn_codigo,
    smn_base.smn_auxiliar_tercero.atr_descripcion AS smn_item
   FROM smn_base.smn_auxiliar_categoria,
    smn_base.smn_auxiliar_tercero
  WHERE smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id = smn_base.smn_auxiliar_tercero.smn_auxiliar_categoria_id
UNION
 SELECT smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id AS smn_v_auxiliar_id,
    smn_base.smn_auxiliar_persona_natural.ant_codigo AS smn_codigo,
    smn_base.smn_auxiliar_persona_natural.ant_descripcion AS smn_item
   FROM smn_base.smn_auxiliar_categoria,
    smn_base.smn_auxiliar_persona_natural
  WHERE smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id = smn_base.smn_auxiliar_persona_natural.smn_auxiliar_categoria_id;
	
create view smn_base.v_clase_auxiliar as
	select
	    smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id,
		smn_base.smn_clase_auxiliar.cla_codigo,
		smn_base.smn_clase_auxiliar.cla_nombre
	from
		smn_base.smn_auxiliar_categoria,
		smn_base.smn_clase_auxiliar
	where
		smn_base.smn_auxiliar_categoria.aca_clase_auxiliar=smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id;
		
create view smn_base.v_entidades_financieras as 
	select	
		*
	from 
		smn_base.smn_entidades_financieras;
		
create view smn_base.v_baremos as 
	 select
		smn_base.smn_entidades.ent_descripcion_corta as ter_descripcion_corta,
		smn_base.smn_baremos.smn_baremos_id
	 from 
		smn_base.smn_entidades,
		smn_base.smn_baremos
	 where
		smn_base.smn_baremos.bar_entidad=smn_base.smn_entidades.smn_entidades_id;

CREATE OR REPLACE VIEW public.v_ingreso_persona AS 
select	
	smn_base.smn_comunidades.cmn_nombre,
	smn_base.smn_corporaciones.crp_nombre,
	smn_base.smn_entidades.ent_descripcion_corta,
	count(*) as total
from
	public.t_ingreso_persona
	inner join smn_base.smn_entidades on public.t_ingreso_persona.ing_entidad = smn_base.smn_entidades.smn_entidades_id
	left outer join smn_base.smn_comunidades on public.t_ingreso_persona.ing_comunidad = smn_base.smn_comunidades.smn_comunidades_id
	left outer join smn_base.smn_corporaciones on public.t_ingreso_persona.ing_corporacion = smn_base.smn_corporaciones.smn_corporaciones_id
group by
	smn_base.smn_comunidades.cmn_nombre,
	smn_base.smn_corporaciones.crp_nombre,
	smn_base.smn_entidades.ent_descripcion_corta
order by 
	smn_base.smn_comunidades.cmn_nombre,
	smn_base.smn_corporaciones.crp_nombre,
	smn_base.smn_entidades.ent_descripcion_corta;

CREATE OR REPLACE VIEW v_ingreso_persona_detalle AS 
select	
	smn_base.smn_comunidades.cmn_nombre,
	smn_base.smn_corporaciones.crp_nombre,
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_unidades_negocios.uen_nombre,
	public.t_persona.per_nombres || ' ' || public.t_persona.per_apellidos as per_nombre
from
	public.t_ingreso_persona
	inner join public.t_persona on public.t_ingreso_persona.ing_persona = public.t_persona.per_codigo_id
	inner join smn_base.smn_entidades on public.t_ingreso_persona.ing_entidad = smn_base.smn_entidades.smn_entidades_id
	left outer join smn_base.smn_sucursales on public.t_ingreso_persona.ing_sucursal = smn_base.smn_sucursales.smn_sucursales_id
	left outer join smn_base.smn_unidades_negocios on public.t_ingreso_persona.ing_unidad_negocio = smn_base.smn_unidades_negocios.smn_unidades_negocios_id
	left outer join smn_base.smn_comunidades on public.t_ingreso_persona.ing_comunidad = smn_base.smn_comunidades.smn_comunidades_id
	left outer join smn_base.smn_corporaciones on public.t_ingreso_persona.ing_corporacion = smn_base.smn_corporaciones.smn_corporaciones_id
order by 
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_unidades_negocios.uen_nombre,
	public.t_persona.per_nombre;
