SELECT ae.id, cat.category_name AS cat, ae.sub_cat_id, ae.title, ae.description, ae.price, ae.user_id, ci.city_name as city, nh.neighbourhoods_title as neighbourhood, ae.phone_number, ae.STATUS 
FROM advertisements ae, neighbourhoods nh, cities ci, categories cat
where ae.neighbourhood_Id = nh.id and ae.cityid=ci.id
AND cat.id = ae.cat_Id
AND ae.id=25;

SELECT * FROM categories