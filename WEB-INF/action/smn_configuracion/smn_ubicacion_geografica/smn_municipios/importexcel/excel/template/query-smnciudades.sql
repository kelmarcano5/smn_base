select  
      upper(trim(smn_base.smn_ciudades.ciu_codigo)) || ' - ' || upper(trim(smn_base.smn_ciudades.ciu_nombre_corto)) as ciu_nombre_corto
from    
      smn_base.smn_ciudades