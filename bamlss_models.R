###########################
#
#Model formulation
#
###########################
choose_models <- function() {
  list(
###########################
#Model 1
Model_1 = list(
  carbon_ha ~ s(lat,long),
  sigma ~ 1
),
###########################
#Model 13
Model_2 = list(
  carbon_ha ~ s(age) + 
    s(lat,long),
  sigma ~ 1
),
###########################
#Model 11
Model_3 = list(
  carbon_ha ~ specie + 
    s(age) + 
    s(lat,long),
  sigma ~ 1
),
###########################
#Model 12
Model_4 = list(
  carbon_ha ~ specie +
    s(age) +
    s(temp) +
    s(rain) +
    s(elev),
  sigma ~ 1
),
###########################
#Model 14
Model_5 = list(
  carbon_ha ~ specie +
    s(age) +
    s(temp) +
    s(rain) +
    s(elev) + 
    s(reference, bs = "re"),
  sigma ~ 1
),
###########################
#Model 15
Model_6 = list(
  carbon_ha ~ specie +
    s(age) +
    s(temp) +
    s(rain) +
    s(elev) + 
    s(lat,long),
  sigma ~ 1
),
###########################
#Model 16
Model_7 = list(
  carbon_ha ~ specie +
    s(age) +
    s(temp) +
    s(rain) +
    s(elev) + 
    s(lat,long) + 
    s(reference, bs = "re"),
  sigma ~ 1
),
###########################
#Model 17
Model_8 = list(
  carbon_ha ~ s(lat,long),
  sigma ~ s(lat,long)
),
###########################
#Model 18
Model_10 = list(
  carbon_ha ~ specie +
    s(age) +
    s(temp) +
    s(rain) +
    s(elev),
  sigma ~ s(lat,long)
),
###########################
#Model 19
Model_11 = list(
  carbon_ha ~ specie +
    s(age) +
    s(temp) +
    s(rain) +
    s(elev) + 
    s(reference, bs = "re"),
  sigma ~ s(lat,long)
),
###########################
#Model 20
Model_12 = list(
  carbon_ha ~ specie +
    s(age) +
    s(temp) +
    s(rain) +
    s(elev) + 
    s(lat,long) + 
    s(reference, bs = "re"),
  sigma ~ s(lat,long)
),
###########################
#Model 21
Model_14 = list(
  carbon_ha ~ specie + 
    s(age) +
    s(lat,long),
  sigma ~ s(age) +
    s(lat,long)
),
###########################
#Model 22
Model_15 = list(
  carbon_ha ~ specie +
    s(age) +
    s(rain) + 
    s(lat,long) +
    s(reference, bs = "re"),
  sigma ~ s(age) +
    s(rain) +
    s(lat,long)
),
###########################
#Model 2
Model_16 = list(
  carbon_ha ~s(age),
  sigma ~ 1
),
###########################
#Model 3
Model_17 = list(
  carbon_ha ~ s(temp),
  sigma ~ 1
),
###########################
#Model 4
Model_18 = list(
  carbon_ha ~ s(rain),
  sigma ~ 1
),
###########################
#Model 5
Model_19 = list(
  carbon_ha ~ s(elev),
  sigma ~ 1
),
###########################
#Model 7
Model_20 = list(
  carbon_ha ~ specie +
    s(age),
  sigma ~ 1
),
###########################
#Model 8
Model_21 = list(
  carbon_ha ~ specie +
    s(temp),
  sigma ~ 1
),
###########################
#Model 9
Model_22 = list(
  carbon_ha ~ specie +
    s(rain) ,
  sigma ~ 1
),
###########################
#Model 10
Model_23 = list(
  carbon_ha ~ specie +
    s(elev),
  sigma ~ 1
),
###########################
#Model 6
Model_24 = list(
  carbon_ha ~ specie,
  sigma ~ 1
)
 )
}