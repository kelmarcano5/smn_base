select  
      upper(trim(smn_base.smn_paises.pai_codigo)) || ' - ' || upper(trim(smn_base.smn_paises.pai_nombre_corto)) as pai_nombre_corto
from    
      smn_base.smn_paises