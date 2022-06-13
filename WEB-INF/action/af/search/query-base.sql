select
to_char(fecha,'YYYY/MM'),
to_char(fecha,'MM/YYYY') as item,
sum(monto) as subtotal
from
curso.gasto
where
monto is not null
${filter}
group by
1,2
order by
1