select "Marital Status", avg(age) as "Average Age" 
from customer 
group by "Marital Status";

select 
	case 
		when gender = 0 then 'Female'
		when gender = 1 then 'Male'
	end as gender, 
	avg(age) as "Average Age"
from customer 
group by "gender";

select 
	s.storename as "Store Name" , 
	sum(t.qty) as "Total Quantity"
from store s
join "Transaction" t  on s.storeid = t.storeid 
group by s.storename
order by "Total Quantity" desc limit 1;

select 
	t.productid as "Product ID", 
	p."Product Name", 
	SUM(t.totalamount) as "Total Amount (Rp)"
from "Transaction" t
join product p on t.productid = p.productid
group by t.productid, p."Product Name"
order by "Total Amount (Rp)" desc limit 1;





