-- the quantity of each pizza categories ordered.

select pizza_types.category,
sum(orders_details.quantity) as quantity
From pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.category order by quantity ;