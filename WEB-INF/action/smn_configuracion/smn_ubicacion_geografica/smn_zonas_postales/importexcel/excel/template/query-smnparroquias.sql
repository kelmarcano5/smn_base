select  
      upper(trim(smn_base.smn_parroquias.prr_codigo)) || ' - ' || upper(trim(smn_base.smn_parroquias.prr_nombre_corto)) as prr_nombre_corto
from    
      smn_base.smn_parroquias