-- list 5 most ordered pizzas along with quantity
select pizza_types.name,
sum(orders_details.quantity) as quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
Group by pizza_types.name order by quantity desc limit 5 ;