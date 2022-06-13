select  
      upper(trim(smn_base.smn_entidades_federales.efe_codigo)) || ' - ' || upper(trim(smn_base.smn_entidades_federales.efe_nombre_corto)) as efe_nombre_corto
from    
      smn_base.smn_entidades_federales