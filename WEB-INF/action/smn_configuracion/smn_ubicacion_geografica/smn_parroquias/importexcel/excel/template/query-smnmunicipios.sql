select  
      upper(trim(smn_base.smn_municipios.mun_codigo)) || ' - ' || upper(trim(smn_base.smn_municipios.mun_nombre_corto)) as mun_nombre_corto
from    
      smn_base.smn_municipios