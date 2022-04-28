# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'



#' Title
#'
#' @param length one of three numeric measurements for calculation of volume
#' @param width one of three numeric measurements for calculation of volume
#' @param height one of three numeric measurements for calculation of volume
#'
#' @return volume of package
#' @export
#'
#' @example Volume_calculator(9,6,6)

Volume_calculator <- function(length, width, height){
  package_volume <- (length * width * height)
  return(package_volume)
}

#' Title
#'
#' @param volume A numeric vector used in calculation for packing and shipping cost
#' @param fragile A Boolean parameter used to help the cost of packaging
#'
#' @return cost of packing
#' @export
#'
#' @example packaging_cost(2000,TRUE)

packaging_cost <- function(volume, fragile)
{
  cost <- 0
  fragile_pack <- 5

  if(volume < 1728 && volume > 0){
    cost <- 10
  }else if(volume > 1728 && volume < 5000){
    cost <- 15
  }else if(volume > 5000 && volume < 22000){
    cost <- 30
  }else if (volume > 22000){
    cost <- "Your package is too large to ship by non freight means"
  }else if(fragile == TRUE){
    cost <- cost + fragile_pack
  }
  return(cost)
}

#' Title
#'
#' @param weight A numeric vector for calculation of shipping cost
#' @param distance A numeric vector for calculation of shipping cost
#' @param volume A numeric vector used in calculation for packing and shipping cost
#'
#' @return cost of shipment
#' @export
#'
#' @example ShippingCost(2000,10,500)

ShippingCost <- function(volume, weight, distance){
  if(volume > 22000){
    cost <- "Your package is too large to ship by non freight means"
  }else if(volume < 22000){
    cost <- ((distance * 0.01) + (weight * 0.07) + (volume * 0.0065))
  }

  #bottomline cost can't be less than this value
  while(cost < 11.93){
    cost <- 11.93
  }
  return(cost)
}

#' Title
#'
#' @param miles A numeric vector used in calculation for days until package arrives
#'
#' @return number if business days
#' @export
#'
#' @example DaysTillArrival(2000)
DaysTillArrival <- function(miles){
  if(miles > 0 && miles <= 300){
    Days = 1
  }else if(miles > 300 && miles <= 700){
    Days = 2
  }else if(miles > 700 && miles <= 1300){
    Days = 3
  }else if(miles > 1300 && miles <= 2100){
    Days = 4
  }else if(miles > 2100 && miles <= 3000){
    Days = 5
  }else if (miles > 3000){
    Days <- NA
  }
  return(Days)
}

DaysTillArrival(2500)
