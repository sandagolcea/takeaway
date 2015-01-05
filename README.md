Takeaway
========

```
 _____     _           _                      
|_   _|_ _| | _____   / \__      ____ _ _   _ 
  | |/ _` | |/ / _ \ / _ \ \ /\ / / _` | | | |
  | | (_| |   <  __// ___ \ V  V / (_| | |_| |
  |_|\__,_|_|\_\___/_/   \_\_/\_/ \__,_|\__, |
                                        |___/ 

```

Takeaway restaurant (Makers Academy week2)
###Problem Description

Write a Takeaway program.

Implement the following functionality:

* list of dishes with prices
* placing the order by giving: 
  * the list of dishes
  * their quantities
  * a number that should be the exact total 
  if sum not correct => raise an error 
  else customer is sent a text with order status
* send a text saying "Thank you! Your order was placed and will be delivered before #{ETA}"

The text sending functionality is implemented using Twilio. 


##CRC

##Dish
    Responsibility   |  Collaborators
---------------------|-------------------
has_name             |  -
has_price            |  -

##Menu
    Responsibility   |  Collaborators
---------------------|-------------------
add new dish         |  Dish
dishes list          |  Dish
Count dishes         |   -               

##Customer
    Responsibility   |  Collaborators
---------------------|-------------------
has_name             |  -
has_phone            |  - 

##Order
    Responsibility   |  Collaborators
---------------------|-------------------
add_item             |  -
populate_order       |  Customer, Dish, Menu
is_payed?            |  Customer
can be payed         |  Restaurant
is_empty?            |  -
has_total            |  -

##Restaurant
    Responsibility   |  Collaborators
---------------------|-------------------
take order           |  - 
has_name             |  -

##Main
    Responsibility   |  Collaborators
---------------------|-------------------
get order dishes     | -
take_order           | Restaurant, Order, Customer
enter_payment        | Order, Customer
has_menus            |  -
has_list_of_orders   |  -



<!-- 
Another option was to have a list of hashes for the dish:
  # def create_dish(name, price)
  #   dish = {}
  #   dish[:name] = name
  #   dish[:price] = price
  #   @dishes << dish
  # end


# @dishes = [dish.name,dish.value,..] => class
# @dishes = [{:name => "dish1", :price => 20},{:name => "dish1", :price => 20}...] => no f class
# dishes = { {:name => dish1}, {":name" => dish2}} 
-->
               
