library(ShippingCost)

#'This function serves as a cheat sheet for two other function as they require 
#'the volume, so enter in inches the Length width, and height of the package
Volume_calculator(9,6,6)

#'This function gives an estimate of cost in USD for those who don't want to
#'or lack the experience of packing an item. Just enter the volume of the package
#'and enter TRUE or FALSE if the item is fragile
packaging_cost(1200, TRUE)

#This function will give the cost of the shipment in USD after you enter the volume 
#the volume, weight, and distance in miles to the destination city

#example for shipment within Florida
ShippingCost(364, 20, 118)

#example for shipment to California
ShippingCost(364, 20, 2802)

#'This function provides you the number of business days it will take
#'your package to arrive after entering the amount of miles 
#'between your city and destination city

#Example of package shipping to Denver Colorado
DaysTillArrival(1860)

#Example of package shipping to Orlando Florida
DaysTillArrival(118)