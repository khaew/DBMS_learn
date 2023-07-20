#like = 특정 텍스트 데이터로 추출

select * from product_tb;

select
*
from
	product_tb
where
-- 	product_name like '%BASIC%';   # like  '  ~~~ %' 찾을부분%
	--  product_name in('No.4 TEE', 'PROPERTY OF TEE');
     product_name like 'NO%'
     or product_name like 'PROPERTY%';
