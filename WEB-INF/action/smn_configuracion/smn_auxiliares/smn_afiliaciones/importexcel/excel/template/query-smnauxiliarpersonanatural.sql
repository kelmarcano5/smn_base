select  
	  smn_base.smn_auxiliar_persona_natural.ant_nombres || ' ' || smn_base.smn_auxiliar_persona_natural.ant_apellidos as afiliado,
      smn_base.smn_auxiliar_persona_natural.*   
from    
      smn_base.smn_auxiliar_persona_natural