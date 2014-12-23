Takeaway
========

```
 _______
|__   __|   _       
   | | __ _| | _____   __ _ _    __ __ _ _   _
   | |/ _` | |/ / _ \ / _` | \/\/  / _` \ \_/ /
   | | (_| |   <  __/| (_| |      | (_| |\   /
   |_|\__,_|_|\_\___| \__,_|\_/\_/ \__,_| / /
                                       _ / /
                                      \ _ /
```

Takeaway restaurant (Makers Academy week2)
###Problem Description

Write a Takeaway program.

Implement the following functionality:

* list of dishes with prices
* placing the order by giving: 
  * the list of dishes
  * their quantities
  * a number that should be the exact total (if sum not correct => raise an error, else customer is sent a text with order status)


The text sending functionality should be implemented using Twilio API. 
Use twilio-ruby gem to access the API
e.g. "Thank you! Your order was placed and will be delivered before 18:52".
Use a Gemfile to manage your gems.

Make sure that your Takeaway is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
However, if your Takeaway is loaded into IRB and the order is placed, the text should actually be sent
Use Twilio with your "verified number" to send messages.

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
has_email            |  - 
place order          | Order, Dish
pay for order        | Order, Dish
(cancel order)       | (Order, Dish)

##Order
    Responsibility   |  Collaborators
---------------------|-------------------
accept_order         |  Customer, Dish, Menu
is_payed?            |  Customer

##Restaurant
    Responsibility   |  Collaborators
---------------------|-------------------
has_name             |  -
has_menus            |  -
has_list_of_orders   |  -
confirm order        |  - 



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
               
