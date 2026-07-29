create schema logistics;
set search_path to logistics;
show search_path;

select * from logistics.car_sales;

-- ======================================= DATA CLEANING ================================
-- order id

update logistics.car_sales cs 
set order_id = TRIM(UPPER(cs.order_id ))

select distinct(order_id)
from logistics.car_sales cs 
order by cs.order_id;

update logistics.car_sales cs 
set order_id = replace(cs.order_id, '-', '')

-- cleaning order date column 
select distinct(order_date) from logistics.car_sales
order by order_date asc;

update logistics.car_sales
set order_date = replace(order_date,'//','/')

update logistics.car_sales
set order_date = trim(order_date);

update logistics.car_sales
set order_date = ''
where order_date = '0001-01-01 BC';

update logistics.car_sales
set order_date = to_date(order_date, 'MM/DD/YYYY');

select to_date(order_date, 'MM/DD/YYYY')
from logistics.car_sales cs ;

ALTER TABLE logistics.car_sales 
ALTER COLUMN order_date TYPE DATE
USING TO_DATE(order_date, 'YYYY/MM/DD');


-- cleaning delivery date
select distinct(delivery_date) from logistics.car_sales
order by delivery_date  asc;

update logistics.car_sales
set delivery_date = replace(delivery_date,'//','/')

update logistics.car_sales
set delivery_date = trim(delivery_date );

update logistics.car_sales
set delivery_date = 'Null'
where delivery_date = '0001-01-01';

update logistics.car_sales
set delivery_date = to_date(delivery_date, 'MM/DD/YYYY');

select to_date(cs.delivery_date, 'MM/DD/YYYY')
from logistics.car_sales cs ;

ALTER TABLE logistics.car_sales 
ALTER COLUMN delivery_date TYPE DATE
USING TO_DATE(delivery_date, 'MM/DD/YYYY');


-- Customer name column
update logistics.car_sales
set customer_name = trim(initcap(customer_name));

select distinct(customer_name)
from logistics.car_sales
order by customer_name;

update logistics.car_sales
set customer_name = 'Unknown'
where customer_name = 'N/A';

select count(customer_name)
from logistics.car_sales
where customer_name = 'Unknown'

-- Cleaning customer type
update logistics.car_sales
set customer_type = TRIM(initcap(customer_type));

select distinct(customer_type)
from logistics.car_sales;

update logistics.car_sales
set customer_type = 'Unknown'
where customer_type = 'N/A'

-- cleaning the customer age 
select distinct(customer_age)
from logistics.car_sales
order by customer_age ;

update logistics.car_sales
set customer_age = ''
where customer_age = 'Unknown'

-- cleaning Region

update logistics.car_sales
set region = TRIM(initcap(region));

select distinct(region)
from logistics.car_sales
order by region;

update logistics.car_sales
set region = 'Unknown'
where region = '';

-- cleaning County 
update logistics.car_sales
set county = TRIM(initcap(county));

select distinct(county)
from logistics.car_sales
order by county;

update logistics.car_sales
set county = 'Unknown'
where county = 'Null'

-- cleaning city
update logistics.car_sales
set city = TRIM(initcap(city))

select distinct(city)
from logistics.car_sales
order by city;

update logistics.car_sales
set city = 'Thika'
where city = 'Thikka'

-- cleaning branch column
update logistics.car_sales
set branch = TRIM(initcap(branch));

select distinct(branch)
from logistics.car_sales
order by branch;

update logistics.car_sales
set branch = 'Nairobi'
where branch = 'Main Yard';

-- cleaning sales rep
update logistics.car_sales
set sales_rep = trim(sales_rep);

update logistics.car_sales
set sales_rep = initcap(sales_rep)

select distinct(sales_rep)
from logistics.car_sales
order by sales_rep ;

update logistics.car_sales
set sales_rep = 'Samuel Mutua'
where sales_rep = 'Samuel';

-- cleaning lead source column
update logistics.car_sales
set lead_source = TRIM(initcap(lead_source));

select distinct(lead_source)
from logistics.car_sales
order by lead_source;

update logistics.car_sales
set lead_source = 'Unknown'
where lead_source = '';

-- Cleaning car make column 
update logistics.car_sales
set car_make = TRIM(initcap(car_make));

select distinct(car_make)
from logistics.car_sales
order by car_make;

update logistics.car_sales
set car_make = 'Volkswagen'
where car_make = 'V.W';

-- Cleaning car model
update logistics.car_sales
set car_model = TRIM(initcap(car_model));

select distinct(car_model)
from logistics.car_sales
order by car_model ;

update logistics.car_sales
set car_model = 'X-Trail'
where car_model = 'X Trail'

-- Cleaning vehicle type 
update logistics.car_sales
set vehicle_type = TRIM(initcap(vehicle_type));

select distinct(vehicle_type)
from logistics.car_sales
order by vehicle_type ;

update logistics.car_sales
set vehicle_type = 'Unknown'
where vehicle_type = '-';

-- Cleaning vehicle year
select distinct(vehicle_year)
from logistics.car_sales
order by vehicle_year;

update logistics.car_sales
set vehicle_year = 'Unknown'
where vehicle_year = ''

-- Cleaning fuel type 
update logistics.car_sales
set fuel_type = TRIM(initcap(fuel_type));

select distinct(fuel_type)
from logistics.car_sales
order by fuel_type ;

update logistics.car_sales
set fuel_type = 'Petrol'
where fuel_type ='Pms'

-- Cleaning transmission
update logistics.car_sales
set transmission = TRIM(initcap(transmission))

select distinct(transmission)
from logistics.car_sales
order by transmission;

update logistics.car_sales
set transmission = 'Unknown'
where transmission = 'N/A';

-- Cleaning the color
update logistics.car_sales
set color = TRIM(initcap(color))

select distinct(color)
from logistics.car_sales
order by color;

update logistics.car_sales
set color = 'Unknown'
where color = '-';

-- Cleaning units sold
select distinct(units_sold)
from logistics.car_sales
order by units_sold;

update logistics.car_sales
set units_sold = ''
where units_sold = 'Unknown';

-- Cleaning unit selling price
update logistics.car_sales
set unit_selling_price = TRIM(initcap(unit_selling_price));

update logistics.car_sales
set unit_selling_price = replace(unit_selling_price,',','');

select distinct(unit_selling_price)
from logistics.car_sales
order by unit_selling_price;

update logistics.car_sales
set unit_selling_price = 'Unknown'
where unit_selling_price = '-';

-- Cleaning unit_cost column
update logistics.car_sales
set unit_cost = trim(initcap(unit_cost));

select distinct(unit_cost)
from logistics.car_sales
order by unit_cost;

update logistics.car_sales
set unit_cost = replace(unit_cost,',','')

update logistics.car_sales
set unit_cost = 'Unknown'
where unit_cost = '';

-- Cleaning discount column
select distinct(discount)
from logistics.car_sales cs 
order by discount;

update logistics.car_sales cs 
set discount = replace(discount,' percent','')

update logistics.car_sales cs 
set discount = trim(discount)

update logistics.car_sales cs 
set discount = '0'
where discount = 'No Discount'

-- Cleaning delivery fee

update logistics.car_sales cs 
set delivery_fee = TRIM(initcap(delivery_fee));

update logistics.car_sales cs 
set delivery_fee = replace(delivery_fee,',','');

select distinct (delivery_fee)
from logistics.car_sales cs 
order by delivery_fee ;

update logistics.car_sales cs 
set delivery_fee = '67000'
where delivery_fee = '-67000'


-- Logistic cost
update logistics.car_sales cs 
set logistics_cost = replace(cs.logistics_cost,',','');

update logistics.car_sales cs 
set logistics_cost = TRIM(initcap(cs.logistics_cost ));

select distinct(logistics_cost)
from logistics.car_sales cs 
order by cs.logistics_cost ;

update logistics.car_sales cs 
set logistics_cost = 'Unknown'
where cs.logistics_cost = '#Value!'

-- Payment method
update logistics.car_sales cs 
set payment_method = TRIM(initcap(cs.payment_method))

select distinct(payment_method)
from logistics.car_sales cs 
order by cs.payment_method ;

update logistics.car_sales cs 
set payment_method = 'Mpesa'
where cs.payment_method = 'M-Pesa';

-- Payment status
update logistics.car_sales cs 
set payment_status = TRIM(initcap(cs.payment_status ));

select distinct(payment_status)
from logistics.car_sales cs 
order by cs.payment_status ;

update logistics.car_sales cs 
set payment_status = 'Partially Paid'
where payment_status = 'Deposit Paid';



-- Delivery satus
update logistics.car_sales cs 
set delivery_status = TRIM(initcap(cs.delivery_status));

select distinct(delivery_status)
from logistics.car_sales cs 
order by delivery_status;

update logistics.car_sales cs 
set delivery_status = 'Unknown'
where cs.delivery_status = '';

-- Customer rating
update logistics.car_sales cs 
set customer_rating = replace(cs.customer_rating,'/5','')

update logistics.car_sales cs 
set customer_rating = TRIM(customer_rating)

select distinct(customer_rating)
from logistics.car_sales cs 
order by cs.customer_rating;

update logistics.car_sales cs 
set customer_rating = 'Unknown'
where customer_rating = '-';

-- Review count
select distinct(review_count)
from logistics.car_sales cs 
order by cs.review_count;

update logistics.car_sales cs 
set review_count = 'Unknown'
where cs.review_count = 'N/A';

update logistics.car_sales cs 
set review_count = TRIM(cs.review_count);

-- returned
update logistics.car_sales cs 
set returned = TRIM(initcap(cs.returned));

select distinct(returned)
from logistics.car_sales cs 
order by cs.returned ;

update logistics.car_sales cs 
set returned = 'Unknown'
where cs.returned = '';

-- Revenue recorderd
update logistics.car_sales cs 
set revenue_recorded = replace(cs.revenue_recorded,',','');

update logistics.car_sales cs 
set revenue_recorded = TRIM(cs.revenue_recorded);

select distinct(revenue_recorded)
from logistics.car_sales cs 
order by cs.revenue_recorded desc ;

update logistics.car_sales cs 
set revenue_recorded = 'Unknown'
where cs.revenue_recorded = 'missing'

-- ========== dealing with duplicates

select order_id, count(*)
from logistics.car_sales cs 
group by order_id 
having count(*) > 1;

-- ========= dealing with the dates column ========
select 
	order_date,
	extract( day from order_date) as day
from logistics.car_sales cs ;

select order_date,
extract( day from order_date) as day,
to_char(order_date,'Day') as day_name,
extract(month from order_date) as month,
to_char(order_date,'Month') as month_name,
extract(QUARTER from order_date) as quarter
from logistics.car_sales cs;

select age(order_date,delivery_date)
from logistics.car_sales cs;


select current_timestamp
select now()


-- =============================== ALTER ==============================
alter table logistics.car_sales 
alter column customer_age type integer
using nullif(customer_age, ''):: integer;

ALTER TABLE logistics.car_sales
ALTER COLUMN units_sold TYPE NUMERIC
USING NULLIF(units_sold, '')::NUMERIC;

-- alter unit selling price
alter table logistics.car_sales 
alter column unit_selling_price type numeric
using nullif(unit_selling_price,'Unknown')::numeric;

-- alter unit_cost 
alter table logistics.car_sales 
alter column unit_cost type numeric
using nullif(unit_cost,'Unknown')::numeric;

-- alter discount
alter table logistics.car_sales 
alter column discount type numeric
using nullif(discount,'Unknown')::numeric;

-- alter delivery fee
alter table logistics.car_sales 
alter column delivery_fee type numeric
using nullif(delivery_fee,'Unknown')::numeric;

-- alter logistic cost
alter table logistics.car_sales 
alter column logistics_cost type numeric
using nullif(logistics_cost,'Unknown')::numeric;

-- alter customer rating column 
alter table logistics.car_sales 
alter column customer_rating type numeric
using nullif(customer_rating,'Unknown')::numeric;

-- alter review count column
alter table logistics.car_sales 
alter column review_count type numeric
using nullif(review_count,'Unknown'):: numeric;

-- alter revenue recorded column
alter table logistics.car_sales 
alter column revenue_recorded type numeric
using nullif(revenue_recorded,'Unknown'):: numeric;



select * from logistics.car_sales;
