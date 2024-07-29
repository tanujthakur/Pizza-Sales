-- the precentage contribution of each pizza type in revenue.

select pizza_types.category,
round(sum(orders_details.quantity * pizzas.price) / '356723.85' *100,2) as revenue
from pizza_types join pizzas
on pizzas.pizza_type_id = pizza_types.pizza_type_id
join orders_details
on orders_details.pizza_id  =pizzas.pizza_id
group by pizza_types.category order by revenue desc;