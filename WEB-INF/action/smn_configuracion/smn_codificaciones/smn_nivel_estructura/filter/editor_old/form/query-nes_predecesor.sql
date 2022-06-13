select	
	smn_base.smn_nivel_estructura.nes_predecesor as id, smn_base.smn_nivel_estructura.nes_codigo||' - '|| smn_base.smn_nivel_estructura.nes_nombre as item  
from 
	smn_base.smn_nivel_estructura
  --inner join smn_base.smn_estructura_codigo on smn_base.smn_estructura_codigo.eco_codigo = smn_base.smn_nivel_estructura.nes_codigo
