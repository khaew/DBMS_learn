#order_datail_tb + order_tb
 #user_tb에 들어있는 NAME이 상구 인 사람의 총 구매 총액을 조회하시오
--  
-- left outer join 2 on(2.id = 1.상품)
-- left outer joun 3 on (3.id = 1.색상)
 
 
 
SELECT 
    ut.name,
    sum(pt.product_price * odt.count_number) as total_order_price
FROM
    order_detail_tb odt
        left outer join product_tb pt on (pt.product_id = odt.product_id)
        left outer join order_tb ot on (ot.order_id = odt.order_id)
        left outer join user_tb ut on (ut.user_id = ot.user_id)
        left outer join address_tb at on (at.address_id = ot.address_id)
where
	ut.name = '상구'
group by
	ut.name;
    
select 
* 
from
#product_tb;
 #order_tb;
 user_tb;
#category_tb;#  oder_detatil_tb;

   


#2023-06-01 ~ 2023- 06- 07까지의 카테고리 별 총 판매 수량.
select
	ct.category_name,
    sum(odt.count_number) total_order_stock
from
	order_detail_tb odt
    left outer join order_tb ot on (ot.order_id = odt.order_id)
    left outer join product_tb pt on(pt.product_id = odt.product_id)
    left outer join category_tb ct on (ct.category_id = pt.category_id)     
where
	ot.order_date between '2023-06-01' and '2023-06-07'
group by
    ct.category_id;
     
     
     
   --   left outer join product_tb pt on (pt.product_id = odt.product_id)
--         left outer join order_tb ot on (ot.order_id = odt.order_id)
--         left outer join user_tb ut on (ut.user_id = ot.user_id)
--         left outer join address_tb at on (at.address_id = ot.address_id)
-- where
-- 	ut.name = '상구'
-- group by
-- 	ut.name;








    
    
   
    

    





    

							
    