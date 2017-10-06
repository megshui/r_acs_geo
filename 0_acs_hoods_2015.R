# *Load needed packages and install api key ##########
library(acs)
library(data.table)
api.key.install(key="2a51d38229752ed75987be508ae43ebf52dba210")

# *Create geographies ##########
sf <- geo.make(state="CA", county="San Francisco")

cal <- geo.make(state="CA", county = "*")

sf_ct <- geo.make(state="CA", county="San Francisco") +
  geo.make(state="CA", county="San Francisco", tract="*")

sf_bg <- geo.make(state="CA", county="San Francisco") +
  geo.make(state="CA", county="San Francisco", tract="*", block.group = "*")

sf_zip <-geo.make(zip.code=c(94102,
                             94103,
                             94104,
                             94105,
                             94107,
                             94108,
                             94109,
                             94110,
                             94111,
                             94112,
                             94114,
                             94115,
                             94116,
                             94117,
                             94118,
                             94121,
                             94122,
                             94123,
                             94124,
                             94127,
                             94129,
                             94130,
                             94131,
                             94132,
                             94133,
                             94134,
                             94158))
sfzips<-c(sf,sf_zip)

# create supervisor districts--------------------------------------------

one=geo.make(state="CA", county="San Francisco", tract=c(15600,
                                                         15700,
                                                         40100,
                                                         40200,
                                                         42601,
                                                         42602,
                                                         42700,
                                                         45100,
                                                         45200,
                                                         47600,
                                                         47701,
                                                         47702,
                                                         47801,
                                                         47802,
                                                         47901,
                                                         47902,
                                                         980200,
                                                         980300))
two=geo.make(state="CA", county="San Francisco", tract=c(10200,
                                                         12601,
                                                         12602,
                                                         12700,
                                                         12800,
                                                         12901,
                                                         12902,
                                                         13000,
                                                         13101,
                                                         13102,
                                                         13200,
                                                         13300,
                                                         13400,
                                                         13500,
                                                         15100,
                                                         15400,
                                                         42800,
                                                         60100))
three=geo.make(state="CA", county="San Francisco", tract=c(10100,
                                                           10300,
                                                           10400,
                                                           10500,
                                                           10600,
                                                           10700,
                                                           10800,
                                                           10900,
                                                           11000,
                                                           11100,
                                                           11200,
                                                           11300,
                                                           11700,
                                                           11800,
                                                           11901,
                                                           11902,
                                                           12000,
                                                           12100,
                                                           61100))
four=geo.make(state="CA", county="San Francisco", tract=c(32601,
                                                          32602,
                                                          32700,
                                                          32801,
                                                          32802,
                                                          32901,
                                                          32902,
                                                          33000,
                                                          35100,
                                                          35201,
                                                          35202,
                                                          35300,
                                                          35400))
five=geo.make(state="CA", county="San Francisco", tract=c(15200,
                                                          15300,
                                                          15500,
                                                          15801,
                                                          15802,
                                                          15900,
                                                          16100,
                                                          16300,
                                                          16400,
                                                          16500,
                                                          16600,
                                                          16700,
                                                          16802,
                                                          17101,
                                                          17102,
                                                          30101,
                                                          30201,
                                                          30202))
six=geo.make(state="CA", county="San Francisco", tract=c(12201,
                                                         12202,
                                                         12301,
                                                         12302,
                                                         12401,
                                                         12402,
                                                         12501,
                                                         12502,
                                                         16000,
                                                         16200,
                                                         17601,
                                                         17700,
                                                         17801,
                                                         17802,
                                                         17902,
                                                         18000,
                                                         20100,
                                                         20200,
                                                         22801,
                                                         60700,
                                                         61500))
seven=geo.make(state="CA", county="San Francisco", tract=c(30102,
                                                           30301,
                                                           30302,
                                                           30400,
                                                           30500,
                                                           30600,
                                                           30700,
                                                           30800,
                                                           30900,
                                                           31000,
                                                           31100,
                                                           33100,
                                                           33201,
                                                           33203,
                                                           33204,
                                                           60400))
eight=geo.make(state="CA", county="San Francisco", tract=c(16801,
                                                           16900,
                                                           17000,
                                                           20300,
                                                           20401,
                                                           20402,
                                                           20500,
                                                           20600,
                                                           20700,
                                                           21000,
                                                           21100,
                                                           21200,
                                                           21300,
                                                           21400,
                                                           21500,
                                                           21600,
                                                           21700,
                                                           21800))
nine=geo.make(state="CA", county="San Francisco", tract=c(20800,
                                                          20900,
                                                          22803,
                                                          22901,
                                                          22902,
                                                          22903,
                                                          25100,
                                                          25200,
                                                          25300,
                                                          25401,
                                                          25402,
                                                          25403,
                                                          25600,
                                                          25701))
ten=geo.make(state="CA", county="San Francisco", tract=c(22600,
                                                         22702,
                                                         22704,
                                                         22802,
                                                         23001,
                                                         23003,
                                                         23102,
                                                         23103,
                                                         23200,
                                                         23300,
                                                         23400,
                                                         25702,
                                                         25800,
                                                         25900,
                                                         26401,
                                                         26402,
                                                         26403,
                                                         26404,
                                                         60502,
                                                         61000,
                                                         61200,
                                                         61400,
                                                         980501,
                                                         980600,
                                                         980900))
eleven=geo.make(state="CA", county="San Francisco", tract=c(25500,
                                                            26001,
                                                            26002,
                                                            26003,
                                                            26004,
                                                            26100,
                                                            26200,
                                                            26301,
                                                            26302,
                                                            26303,
                                                            31201,
                                                            31202,
                                                            31301,
                                                            31302,
                                                            31400))
combine(one) = 	T
combine.term(one) = 	"SUPERVISORIAL DISTRICT 1"
combine(two) = 	T
combine.term(two) = 	"SUPERVISORIAL DISTRICT 2"
combine(three) = 	T
combine.term(three) = 	"SUPERVISORIAL DISTRICT 3"
combine(four) = 	T
combine.term(four) = 	"SUPERVISORIAL DISTRICT 4"
combine(five) = 	T
combine.term(five) = 	"SUPERVISORIAL DISTRICT 5"
combine(six) = 	T
combine.term(six) = 	"SUPERVISORIAL DISTRICT 6"
combine(seven) = 	T
combine.term(seven) = 	"SUPERVISORIAL DISTRICT 7"
combine(eight) = 	T
combine.term(eight) = 	"SUPERVISORIAL DISTRICT 8"
combine(nine) = 	T
combine.term(nine) = 	"SUPERVISORIAL DISTRICT 9"
combine(ten) = 	T
combine.term(ten) = 	"SUPERVISORIAL DISTRICT 10"
combine(eleven) = 	T
combine.term(eleven) = 	"SUPERVISORIAL DISTRICT 11"

sfdist <- c(sf, one, two, three, four, five, six, seven, eight, nine, ten, eleven)

# create neighborhoods---------------------------------------------------

bay=geo.make(state="CA", county="San Francisco", tract=c(980600,
                                                         980900,
                                                         61200,
                                                         23103,
                                                         61000,
                                                         23003,
                                                         23200,
                                                         23400,
                                                         23300,
                                                         23102,
                                                         23001))

bern=geo.make(state="CA", county="San Francisco", tract=c(25401,
                                                          25200,
                                                          25402,
                                                          25403,
                                                          25300,
                                                          25100))

castro=geo.make(state="CA", county="San Francisco", tract=c(16900,
                                                            17000,
                                                            20300,
                                                            20401,
                                                            20500,
                                                            20600))

China= geo.make(state="CA", county="San Francisco", tract=c(10700,
                                                            11300,
                                                            11800,
                                                            61100))

excel=geo.make(state="CA", county="San Francisco", tract=c(25600,
                                                           26001,
                                                           26002,
                                                           26003,
                                                           26004,
                                                           26301,
                                                           26302,
                                                           26303))

finance=geo.make(state="CA", county="San Francisco", tract=c(10500,
                                                             11700,
                                                             61500))

glen=geo.make(state="CA", county="San Francisco", tract=c(21700,
                                                          21800))

ggpark=geo.make(state="CA", county="San Francisco", tract=980300)

haight=geo.make(state="CA", county="San Francisco", tract=c(16600,
                                                            16700,
                                                            17101,
                                                            17102))

Hayes=geo.make(state="CA", county="San Francisco", tract=c(16200,
                                                           16300,
                                                           16400,
                                                           16801,
                                                           16802))

inrich=geo.make(state="CA", county="San Francisco", tract=c(40100,
                                                            40200,
                                                            45100,
                                                            45200))

insun=geo.make(state="CA", county="San Francisco", tract=c(30101,
                                                           30102,
                                                           30201,
                                                           30202,
                                                           30301,
                                                           30302))

japan=geo.make(state="CA", county="San Francisco", tract = 15500)


lake=geo.make(state="CA", county="San Francisco", tract=c(33201,
                                                          33203,
                                                          33204,
                                                          60400))

lincoln=geo.make(state="CA", county="San Francisco", tract=980200)

USF=geo.make(state="CA", county="San Francisco", tract=c(15600,
                                                         15700,
                                                         16500))

marina=geo.make(state="CA", county="San Francisco", tract=c(12601,
                                                            12602,
                                                            12700,
                                                            12800,
                                                            12901,
                                                            12902,
                                                            13000))

mclaren=geo.make(state="CA", county="San Francisco", tract=980501)

mission=geo.make(state="CA", county="San Francisco", tract=c(17700,
                                                             20100,
                                                             20200,
                                                             20700,
                                                             20800,
                                                             20900,
                                                             21000,
                                                             22801,
                                                             22802,
                                                             22803,
                                                             22901,
                                                             22902,
                                                             22903))

missbay=geo.make(state="CA", county="San Francisco", tract = 60700)

nob=geo.make(state="CA", county="San Francisco", tract=c(10800,
                                                         11100,
                                                         11200,
                                                         11901,
                                                         11902,
                                                         12000,
                                                         12100))

noe=geo.make(state="CA", county="San Francisco", tract=c(21100,
                                                         21200,
                                                         21300,
                                                         21400,
                                                         21500,
                                                         21600))

north=geo.make(state="CA", county="San Francisco", tract=c(10100,
                                                           10400,
                                                           10600))

ocean=geo.make(state="CA", county="San Francisco", tract=c(31201,
                                                           31202,
                                                           31301,
                                                           31302,
                                                           31400))

outmiss=geo.make(state="CA", county="San Francisco", tract=c(25500,
                                                             26100,
                                                             26200))

outrich=geo.make(state="CA", county="San Francisco", tract=c(42601,
                                                             42602,
                                                             42700,
                                                             47600,
                                                             47701,
                                                             47702,
                                                             47801,
                                                             47802,
                                                             47901,
                                                             47902))

pac=geo.make(state="CA", county="San Francisco", tract=c(13101,
                                                         13102,
                                                         13200,
                                                         13400,
                                                         13500,
                                                         15200,
                                                         15300))

port=geo.make(state="CA", county="San Francisco", tract=c(25701,
                                                          25702,
                                                          25800,
                                                          25900))

potr=geo.make(state="CA", county="San Francisco", tract=c(22600,
                                                          22702,
                                                          22704,
                                                          61400))

presidio=geo.make(state="CA", county="San Francisco", tract=60100)

presheight=geo.make(state="CA", county="San Francisco", tract=c(13300,
                                                                15400))

russian=geo.make(state="CA", county="San Francisco", tract=c(10200,
                                                             10300,
                                                             10900,
                                                             11000))

sea=geo.make(state="CA", county="San Francisco", tract=42800)

soma=geo.make(state="CA", county="San Francisco", tract=c(17601,
                                                          17801,
                                                          17802,
                                                          18000))

sunset=geo.make(state="CA", county="San Francisco", tract=c(32601,
                                                            32602,
                                                            32700,
                                                            32801,
                                                            32802,
                                                            32901,
                                                            32902,
                                                            33000,
                                                            33100,
                                                            35100,
                                                            35201,
                                                            35202,
                                                            35300,
                                                            35400))

tenderloin=geo.make(state="CA", county="San Francisco", tract=c(12201,
                                                                12202,
                                                                12301,
                                                                12302,
                                                                12401,
                                                                12402,
                                                                12501,
                                                                12502))

treasure=geo.make(state="CA", county="San Francisco", tract=17902)

twin=geo.make(state="CA", county="San Francisco", tract=c(20402,
                                                          30500))

vis=geo.make(state="CA", county="San Francisco", tract=c(26401,
                                                         26402,
                                                         26403,
                                                         26404,
                                                         60502))

westtwin=geo.make(state="CA", county="San Francisco", tract=c(30400,
                                                              30600,
                                                              30700,
                                                              30800,
                                                              30900,
                                                              31000,
                                                              31100))

westadd=geo.make(state="CA", county="San Francisco", tract=c(15100,
                                                             15801,
                                                             15802,
                                                             15900,
                                                             16000,
                                                             16100))

combine(bay) = 	T
combine.term(bay) = 	"Bayview Hunters Point"
combine(bern) = 	T
combine.term(bern) = 	"Bernal Heights"
combine(castro) = 	T
combine.term(castro) = 	"Castro/Upper Market"
combine(China) = 	T
combine.term(China) = 	"Chinatown"
combine(excel) = 	T
combine.term(excel) = 	"Excelsior"
combine(finance) = 	T
combine.term(finance) = 	"Financial District/South Beach"
combine(glen) = 	T
combine.term(glen) = 	"Glen Park"
combine(ggpark) = 	T
combine.term(ggpark) = 	"Golden Gate Park"
combine(haight) = 	T
combine.term(haight) = 	"Haight Ashbury"
combine(Hayes) = 	T
combine.term(Hayes) = 	"Hayes Valley"
combine(inrich) = 	T
combine.term(inrich) = 	"Inner Richmond"
combine(insun) = 	T
combine.term(insun) = 	"Inner Sunset"
combine(japan) = 	T
combine.term(japan) = 	"Japantown"
combine(lake) = 	T
combine.term(lake) = 	"Lakeshore"
combine(lincoln) = 	T
combine.term(lincoln) = 	"Lincoln Park"
combine(USF) = 	T
combine.term(USF) = 	"Lone Mountain/USF"
combine(marina) = 	T
combine.term(marina) = 	"Marina"
combine(mclaren) = 	T
combine.term(mclaren) = 	"McLaren Park"
combine(mission) = 	T
combine.term(mission) = 	"Mission"
combine(missbay) = 	T
combine.term(missbay) = 	"Mission Bay"
combine(nob) = 	T
combine.term(nob) = 	"Nob Hill"
combine(noe) = 	T
combine.term(noe) = 	"Noe Valley"
combine(north) = 	T
combine.term(north) = 	"North Beach"
combine(ocean) = 	T
combine.term(ocean) = 	"Oceanview/Merced/Ingleside"
combine(outmiss) = 	T
combine.term(outmiss) = 	"Outer Mission"
combine(outrich) = 	T
combine.term(outrich) = 	"Outer Richmond"
combine(pac) = 	T
combine.term(pac) = 	"Pacific Heights"
combine(port) = 	T
combine.term(port) = 	"Portola"
combine(potr) = 	T
combine.term(potr) = 	"Potrero Hill"
combine(presidio) = 	T
combine.term(presidio) = 	"Presidio"
combine(presheight) = 	T
combine.term(presheight) = 	"Presidio Heights"
combine(russian) = 	T
combine.term(russian) = 	"Russian Hill"
combine(sea) = 	T
combine.term(sea) = 	"Seacliff"
combine(soma) = 	T
combine.term(soma) = 	"South of Market"
combine(sunset) = 	T
combine.term(sunset) = 	"Sunset/Parkside"
combine(tenderloin) = 	T
combine.term(tenderloin) = 	"Tenderloin"
combine(treasure) = 	T
combine.term(treasure) = 	"Treasure Island"
combine(twin) = 	T
combine.term(twin) = 	"Twin Peaks"
combine(vis) = 	T
combine.term(vis) = 	"Visitacion Valley"
combine(westtwin) = 	T
combine.term(westtwin) = 	"West of Twin Peaks"
combine(westadd) = 	T
combine.term(westadd) = 	"Western Addition"

sfhoods <- c(sf, bay, bern, castro, China, excel, finance, glen, ggpark, haight, Hayes, inrich, insun, japan, lake, lincoln, USF, marina, mclaren,
             mission, missbay, nob, noe, north, ocean, outmiss, outrich, pac, port, potr, presidio, presheight, russian, sea, soma, sunset, tenderloin,
             treasure, twin, vis, westtwin, westadd)


# 1. TOTAL POPULATION ##########

#2015

#Fetch table
population.count = acs.fetch(endyear = 2015,geography=sfhoods,table.number = "B01003")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
population.cnt=data.frame(estimate(population.count), 1.645*standard.error(population.count), 
                          standard.error(population.count)/estimate(population.count))
colnames(population.cnt)=c("population", "population_moe", "population_cv")

#Export counts to csv in year folder
setattr(population.cnt, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                       "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                       "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                       "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                       "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                       "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                       "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(population.cnt, file="./2015/hood/hood_population15_cnt.csv")


# 2. SEX ##########

#2015

#Fetch table fields of interest
totalpop.var = acs.fetch(endyear = 2015, span = 5,
                         geography=c(sfhoods),
                         variable = "B01001_001")
male.var = acs.fetch(endyear = 2015, span = 5,
                     geography=c(sfhoods),
                     variable = "B01001_002")
female.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "B01001_026")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
sex.count=data.frame(estimate(totalpop.var), 1.645*standard.error(totalpop.var), standard.error(totalpop.var)/estimate(totalpop.var),
                     estimate(male.var), 1.645*standard.error(male.var), standard.error(male.var)/estimate(male.var),
                     estimate(female.var), 1.645*standard.error(female.var), standard.error(female.var)/estimate(female.var))                     

colnames(sex.count)=c("tothh", "tothh_moe", "tothh_cv",
                      "male", "male_moe", "male_cv",
                      "female", "female_moe", "female_cv")

#Export counts to csv in year folder
setattr(sex.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                  "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                  "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                  "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                  "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                  "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                  "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(sex.count, file="./2015/hood/hood_sex15_cnt.csv")

#Calculate proportions

male.pct = divide.acs(male.var, totalpop.var,
                      method = "proportion")
female.pct = divide.acs(female.var, totalpop.var,
                        method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
sex.pct=data.frame(estimate(male.pct), 1.645*standard.error(male.pct), standard.error(male.pct)/estimate(male.pct),
                   estimate(female.pct), 1.645*standard.error(female.pct), standard.error(female.pct)/estimate(female.pct))

colnames(sex.pct)=c("male", "male_moe", "male_cv",
                    "female", "female_moe", "female_cv")

#Export proportions to csv in year folder
setattr(sex.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(sex.pct, file="./2015/hood/hood_sex15_pct.csv")


# 3. AGE GROUPS ##########
# (this code is good for when you first need to collapse sex stratified age data)

#2015

#Fetch table fields of interest
total.var = acs.fetch(endyear = 2015,
                      geography=sfhoods,
                      variable = "B01001_001")
under5.var = acs.fetch(endyear = 2015,
                       geography=sfhoods,
                       variable = c("B01001_003", "B01001_027"))
under15.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_003", "B01001_004", "B01001_005",
                                     "B01001_027", "B01001_028", "B01001_029"))
under18.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_003", "B01001_004", "B01001_005", "B01001_006",
                                     "B01001_027", "B01001_028", "B01001_029", "B01001_030"))
a18to24.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_007", "B01001_007", "B01001_009", "B01001_010",
                                     "B01001_031", "B01001_032", "B01001_033", "B01001_034"))
a18to34.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_007", "B01001_007", "B01001_009", "B01001_010", "B01001_011", "B01001_012",
                                     "B01001_031", "B01001_032", "B01001_033", "B01001_034", "B01001_035", "B01001_036"))
a18to64.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_007", "B01001_007", "B01001_009", "B01001_010", "B01001_011", "B01001_012", "B01001_013", "B01001_014", "B01001_015", 
                                     "B01001_016", "B01001_017", "B01001_018","B01001_019", 
                                     "B01001_031", "B01001_032", "B01001_033", "B01001_034", "B01001_035", "B01001_036", "B01001_037", "B01001_038", "B01001_039", 
                                     "B01001_040", "B01001_041", "B01001_042", "B01001_043"))
a25to34.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_011", "B01001_012", 
                                     "B01001_035", "B01001_036"))
a35to44.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_013", "B01001_014", 
                                     "B01001_037", "B01001_038"))
a35to59.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_013", "B01001_014", "B01001_015", "B01001_016", "B01001_017",
                                     "B01001_037", "B01001_038", "B01001_039", "B01001_040", "B01001_041"))
a45to64.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_015", "B01001_016", "B01001_017", "B01001_018","B01001_019",
                                     "B01001_039", "B01001_040", "B01001_041", "B01001_042", "B01001_043"))
a60plus.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_019", "B01001_019", "B01001_020", "B01001_021", "B01001_022", "B01001_023", "B01001_024","B01001_025",
                                     "B01001_042", "B01001_043", "B01001_044", "B01001_045", "B01001_046", "B01001_047", "B01001_048","B01001_049"))
a65plus.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_020", "B01001_021", "B01001_022", "B01001_023", "B01001_024","B01001_025",
                                     "B01001_044", "B01001_045", "B01001_046", "B01001_047", "B01001_048","B01001_049"))
a75plus.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = c("B01001_023", "B01001_024","B01001_025",
                                     "B01001_047", "B01001_048","B01001_049"))

# Sum columns

under5.sum <- apply(under5.var, MARGIN = 2, FUN = sum,
                    agg.term = c("y", "under5.sum"), one.zero = TRUE)
under15.sum <- apply(under15.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "under15.sum"), one.zero = TRUE)
under18.sum <- apply(under18.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "under18.sum"), one.zero = TRUE)
a18to24.sum <- apply(a18to24.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "a18to24.sum"), one.zero = TRUE)
a18to34.sum <- apply(a18to34.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "a18to34.sum"), one.zero = TRUE)
a18to64.sum <- apply(a18to64.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "a18to64.sum"), one.zero = TRUE)
a25to34.sum <- apply(a25to34.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "a25to34.sum"), one.zero = TRUE)
a35to44.sum <- apply(a35to44.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "a35to44.sum"), one.zero = TRUE)
a35to59.sum <- apply(a35to59.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "a35to59.sum"), one.zero = TRUE)
a45to64.sum <- apply(a45to64.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "a45to64.sum"), one.zero = TRUE)
a60plus.sum <- apply(a60plus.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "a60plus.sum"), one.zero = TRUE)
a65plus.sum <- apply(a65plus.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "a65plus.sum"), one.zero = TRUE)
a75plus.sum <- apply(a75plus.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "a75plus.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
agegroups.count=data.frame(estimate(total.var), 1.645*standard.error(total.var), standard.error(total.var)/estimate(total.var),
                           estimate(under5.sum), 1.645*standard.error(under5.sum), standard.error(under5.sum)/estimate(under5.sum),
                           estimate(under15.sum), 1.645*standard.error(under15.sum), standard.error(under15.sum)/estimate(under15.sum),
                           estimate(under18.sum), 1.645*standard.error(under18.sum), standard.error(under18.sum)/estimate(under18.sum),
                           estimate(a18to24.sum), 1.645*standard.error(a18to24.sum), standard.error(a18to24.sum)/estimate(a18to24.sum),
                           estimate(a18to34.sum), 1.645*standard.error(a18to34.sum), standard.error(a18to34.sum)/estimate(a18to34.sum),
                           estimate(a18to64.sum), 1.645*standard.error(a18to64.sum), standard.error(a18to64.sum)/estimate(a18to64.sum),
                           estimate(a25to34.sum), 1.645*standard.error(a25to34.sum), standard.error(a25to34.sum)/estimate(a25to34.sum),
                           estimate(a35to44.sum), 1.645*standard.error(a35to44.sum), standard.error(a35to44.sum)/estimate(a35to44.sum),
                           estimate(a35to59.sum), 1.645*standard.error(a35to59.sum), standard.error(a35to59.sum)/estimate(a35to59.sum),
                           estimate(a45to64.sum), 1.645*standard.error(a45to64.sum), standard.error(a45to64.sum)/estimate(a45to64.sum),
                           estimate(a60plus.sum), 1.645*standard.error(a60plus.sum), standard.error(a60plus.sum)/estimate(a60plus.sum),
                           estimate(a65plus.sum), 1.645*standard.error(a65plus.sum), standard.error(a65plus.sum)/estimate(a65plus.sum),
                           estimate(a75plus.sum), 1.645*standard.error(a75plus.sum), standard.error(a75plus.sum)/estimate(a75plus.sum))
colnames(agegroups.count)=c("total", "total_moe", "total_cv", 
                            "under5", "under5_moe", "under5_cv",
                            "under15", "under15_moe", "under15_cv", 
                            "under18", "under18_moe", "under18_cv", 
                            "a18to24", "a18to24_moe", "a18to24_cv",
                            "a18to34", "a18to34_moe", "a18to34_cv",
                            "a18to64", "a18to64_moe", "a18to64_cv",
                            "a25to34", "a25to34_moe", "a25to34_cv",
                            "a35to44", "a35to44_moe", "a35to44_cv",
                            "a35to59", "a35to59_moe", "a35to59_cv",
                            "a45to64", "a45to64_moe", "a45to64_cv",
                            "a60plus", "a60plus_moe", "a60plus_cv",
                            "a65plus", "a65plus_moe", "a65plus_cv",
                            "a75plus", "a75plus_moe", "a75plus_cv")

#Export counts to csv in year folder
setattr(agegroups.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                        "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                        "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                        "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                        "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                        "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                        "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(agegroups.count, file="./2015/hood/hood_agegroups15_cnt.csv")

#Calculate proportions

under5.pct = divide.acs(under5.sum, total.var, method = "proportion")
under15.pct = divide.acs(under15.sum, total.var, method = "proportion")
under18.pct = divide.acs(under18.sum, total.var, method = "proportion")
a18to24.pct = divide.acs(a18to24.sum, total.var, method = "proportion")
a18to34.pct = divide.acs(a18to34.sum, total.var, method = "proportion")
a18to64.pct = divide.acs(a18to64.sum, total.var, method = "proportion")
a25to34.pct = divide.acs(a25to34.sum, total.var, method = "proportion")
a35to44.pct = divide.acs(a35to44.sum, total.var, method = "proportion")
a35to59.pct = divide.acs(a35to59.sum, total.var, method = "proportion")
a45to64.pct = divide.acs(a45to64.sum, total.var, method = "proportion")
a60plus.pct = divide.acs(a60plus.sum, total.var, method = "proportion")
a65plus.pct = divide.acs(a65plus.sum, total.var, method = "proportion")
a75plus.pct = divide.acs(a75plus.sum, total.var, method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
agegroups.pct=data.frame(estimate(under5.pct), 1.645*standard.error(under5.pct), standard.error(under5.pct)/estimate(under5.pct),
                         estimate(under15.pct), 1.645*standard.error(under15.pct), standard.error(under15.pct)/estimate(under15.pct),
                         estimate(under18.pct), 1.645*standard.error(under18.pct), standard.error(under18.pct)/estimate(under18.pct),
                         estimate(a18to24.pct), 1.645*standard.error(a18to24.pct), standard.error(a18to24.pct)/estimate(a18to24.pct),
                         estimate(a18to34.pct), 1.645*standard.error(a18to34.pct), standard.error(a18to34.pct)/estimate(a18to34.pct),
                         estimate(a18to64.pct), 1.645*standard.error(a18to64.pct), standard.error(a18to64.pct)/estimate(a18to64.pct),
                         estimate(a25to34.pct), 1.645*standard.error(a25to34.pct), standard.error(a25to34.pct)/estimate(a25to34.pct),
                         estimate(a35to44.pct), 1.645*standard.error(a35to44.pct), standard.error(a35to44.pct)/estimate(a35to44.pct),
                         estimate(a35to59.pct), 1.645*standard.error(a35to59.pct), standard.error(a35to59.pct)/estimate(a35to59.pct),
                         estimate(a45to64.pct), 1.645*standard.error(a45to64.pct), standard.error(a45to64.pct)/estimate(a45to64.pct),
                         estimate(a60plus.pct), 1.645*standard.error(a60plus.pct), standard.error(a60plus.pct)/estimate(a60plus.pct),
                         estimate(a65plus.pct), 1.645*standard.error(a65plus.pct), standard.error(a65plus.pct)/estimate(a65plus.pct),
                         estimate(a75plus.pct), 1.645*standard.error(a75plus.pct), standard.error(a75plus.pct)/estimate(a75plus.pct))
colnames(agegroups.pct)=c("under5", "under5_moe", "under5_cv",
                          "under15", "under15_moe", "under15_cv", 
                          "under18", "under18_moe", "under18_cv", 
                          "a18to24", "a18to24_moe", "a18to24_cv",
                          "a18to34", "a18to34_moe", "a18to34_cv",
                          "a18to64", "a18to64_moe", "a18to64_cv",
                          "a25to34", "a25to34_moe", "a25to34_cv",
                          "a35to44", "a35to44_moe", "a35to44_cv",
                          "a35to59", "a35to59_moe", "a35to59_cv",
                          "a45to64", "a45to64_moe", "a45to64_cv",
                          "a60plus", "a60plus_moe", "a60plus_cv",
                          "a65plus", "a65plus_moe", "a65plus_cv",
                          "a75plus", "a75plus_moe", "a75plus_cv")

#Export proportions to csv in year folder
setattr(agegroups.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(agegroups.pct, file="./2015/hood/hood_agegroups15_pct.csv")


# 4. DISABILITY ##########

#2015

#Fetch table fields of interest
totalpop.var = acs.fetch(endyear = 2015, span = 5,
                         geography=c(sfhoods),
                         variable = "B18101_001")
dis.var = acs.fetch(endyear = 2015, span = 5,
                    geography=c(sfhoods),
                    variable = c("B18101_004", "B18101_007", "B18101_010", "B18101_013", "B18101_016", "B18101_019",
                                 "B18101_026", "B18101_029", "B18101_032", "B18101_035", "B18101_038"))
senior.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = c("B18101_034", "B18101_037"))
seniordis.var = acs.fetch(endyear = 2015, span = 5,
                          geography=c(sfhoods),
                          variable = c("B18101_004", "B18101_007", "B18101_010", "B18101_013", "B18101_016", "B18101_019",
                                       "B18101_026", "B18101_029", "B18101_032", "B18101_035", "B18101_038", "B18101_036", "B18101_039"))
# Sum columns
dis.sum <- apply(dis.var, MARGIN = 2, FUN = sum,
                 agg.term = c("y", "dis.sum"), one.zero = TRUE)
senior.sum <- apply(senior.var, MARGIN = 2, FUN = sum,
                    agg.term = c("y", "senior.sum"), one.zero = TRUE)
seniordis.sum <- apply(seniordis.var, MARGIN = 2, FUN = sum,
                       agg.term = c("y", "seniordis.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
seniordis.count=data.frame(estimate(totalpop.var), 1.645*standard.error(totalpop.var), standard.error(totalpop.var)/estimate(totalpop.var),
                           estimate(dis.sum), 1.645*standard.error(dis.sum), standard.error(dis.sum)/estimate(dis.sum),
                           estimate(senior.sum), 1.645*standard.error(senior.sum), standard.error(senior.sum)/estimate(senior.sum),
                           estimate(seniordis.sum), 1.645*standard.error(seniordis.sum), standard.error(seniordis.sum)/estimate(seniordis.sum))                     

colnames(seniordis.count)=c("totalpop", "totalpop_moe", "totalpop_cv",
                            "dis", "dis_moe", "dis_cv",
                            "senior", "senior_moe", "senior_cv",
                            "seniordis", "seniordis_moe", "seniordis_cv")

#Export counts to csv in year folder
setattr(seniordis.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                        "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                        "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                        "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                        "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                        "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                        "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(seniordis.count, file="./2015/hood/hood_disabled15_cnt.csv")

#Calculate proportions

dis.pct = divide.acs(dis.sum, totalpop.var,
                     method = "proportion")
senior.pct = divide.acs(senior.sum, totalpop.var,
                        method = "proportion")
seniordis.pct = divide.acs(seniordis.sum, totalpop.var,
                           method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
snrdis.pct=data.frame(estimate(dis.pct), 1.645*standard.error(dis.pct), standard.error(dis.pct)/estimate(dis.pct),
                      estimate(senior.pct), 1.645*standard.error(senior.pct), standard.error(senior.pct)/estimate(senior.pct),
                      estimate(seniordis.pct), 1.645*standard.error(seniordis.pct), standard.error(seniordis.pct)/estimate(seniordis.pct))

colnames(snrdis.pct)=c("dis", "dis_moe", "dis_cv",
                       "senior", "senior_moe", "senior_cv",
                       "seniordis", "seniordis_moe", "seniordis_cv")

#Export proportions to csv in year folder
setattr(snrdis.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                   "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                   "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                   "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                   "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                   "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                   "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(snrdis.pct, file="./2015/hood/hood_disabled15_pct.csv")


# 5. ETHNICITY ##########

#2015
#Fetch table fields of interest
ethnicity.count = acs.fetch(endyear = 2015,
                            geography=c(sfhoods),
                            variable = c("B03002_001", "B03002_003", "B03002_004", "B03002_012",
                                         "B03002_006", "B03002_007", "B03002_005", "B03002_008",
                                         "B03002_009"))

api.count <- apply(ethnicity.count[,5:6], MARGIN = 2, FUN = sum,
                   agg.term = c("y", "api.count"), one.zero = TRUE)

other.count <- apply(ethnicity.count[,7:9], MARGIN = 2, FUN = sum,
                     agg.term = c("y", "other.count"), one.zero = TRUE)

poc.count <- apply(ethnicity.count[,3:9], MARGIN = 2, FUN = sum,
                   agg.term = c("y", "poc.count"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
ethnicity.cnt=data.frame(estimate(ethnicity.count), 1.645*standard.error(ethnicity.count), standard.error(ethnicity.count)/estimate(ethnicity.count),
                         estimate(api.count), 1.645*standard.error(api.count), standard.error(api.count)/estimate(api.count),
                         estimate(other.count), 1.645*standard.error(other.count), standard.error(other.count)/estimate(other.count),
                         estimate(poc.count), 1.645*standard.error(poc.count), standard.error(poc.count)/estimate(poc.count))
colnames(ethnicity.cnt)=c("total","white","black","latino","asian","nhpi","aian","other1","twoplus",
                          "total_moe","white_moe","black_moe","latino_moe","asian_moe","nhpi_moe","aian_moe","other1_moe","twoplus_moe",
                          "total_cv","white_cv","black_cv","latino_cv","asian_cv","nhpi_cv","aian_cv","other1_cv","twoplus_cv",
                          "api", "api_moe", "api_cv", "other", "other_moe", "other_cv", "poc", "poc_moe", "poc_cv")

#Export counts to csv in year folder
setattr(ethnicity.cnt, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(ethnicity.cnt, file="./2015/hood/hood_ethnicity15_cnt.csv")

#Calculate proportions
white.pct = divide.acs(ethnicity.count[,2], ethnicity.count[,1],
                       method = "proportion")
black.pct = divide.acs(ethnicity.count[,3], ethnicity.count[,1],
                       method = "proportion")
latino.pct = divide.acs(ethnicity.count[,4], ethnicity.count[,1],
                        method = "proportion")
asian.pct = divide.acs(ethnicity.count[,5], ethnicity.count[,1],
                       method = "proportion")
nhpi.pct = divide.acs(ethnicity.count[,6], ethnicity.count[,1],
                      method = "proportion")
aian.pct = divide.acs(ethnicity.count[,7], ethnicity.count[,1],
                      method = "proportion")
other1.pct = divide.acs(ethnicity.count[,8], ethnicity.count[,1],
                        method = "proportion")
twoplus.pct = divide.acs(ethnicity.count[,9], ethnicity.count[,1],
                         method = "proportion")
api.pct = divide.acs(api.count, ethnicity.count[,1],
                     method = "proportion")
other.pct = divide.acs(other.count, ethnicity.count[,1],
                       method = "proportion")
poc.pct = divide.acs(poc.count, ethnicity.count[,1],
                     method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
ethnicity.pct=data.frame(estimate(white.pct), 1.645*standard.error(white.pct), standard.error(white.pct)/estimate(white.pct),
                         estimate(black.pct), 1.645*standard.error(black.pct), standard.error(black.pct)/estimate(black.pct),
                         estimate(latino.pct), 1.645*standard.error(latino.pct), standard.error(latino.pct)/estimate(latino.pct),
                         estimate(asian.pct), 1.645*standard.error(asian.pct), standard.error(asian.pct)/estimate(asian.pct),
                         estimate(nhpi.pct), 1.645*standard.error(nhpi.pct), standard.error(nhpi.pct)/estimate(nhpi.pct),
                         estimate(aian.pct), 1.645*standard.error(aian.pct), standard.error(aian.pct)/estimate(aian.pct),
                         estimate(other1.pct), 1.645*standard.error(other1.pct), standard.error(other1.pct)/estimate(other1.pct),
                         estimate(twoplus.pct), 1.645*standard.error(twoplus.pct), standard.error(twoplus.pct)/estimate(twoplus.pct),
                         estimate(api.pct), 1.645*standard.error(api.pct), standard.error(api.pct)/estimate(api.pct),
                         estimate(other.pct), 1.645*standard.error(other.pct), standard.error(other.pct)/estimate(other.pct),
                         estimate(poc.pct), 1.645*standard.error(poc.pct), standard.error(poc.pct)/estimate(poc.pct))
colnames(ethnicity.pct)=c("white", "white_moe", "white_cv", 
                          "black", "black_moe", "black_cv", 
                          "latino", "latino_moe", "latino_cv",
                          "asian", "asian_moe", "asian_cv",
                          "nhpi", "nhpi_moe", "nhpi_cv",
                          "aian", "aian_moe", "aian_cv",
                          "other1", "other1_moe", "other1_cv",
                          "twoplus", "twoplus_moe", "twoplus_cv",
                          "api", "api_moe", "api_cv",
                          "other", "other_moe", "other_cv", 
                          "poc", "poc_moe", "poc_cv")

#Export proportions to csv in year folder
setattr(ethnicity.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(ethnicity.pct, file="./2015/hood/hood_ethnicity15_pct.csv")


# 6. LANGUAGE & LIMITED ENGLISH PROFICIENCY ##########

#Fetch table fields of interest
total.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = "B16001_001")
all.lang.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = "B16001_002")
spanish.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = "B16001_003")
chinese.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = "B16001_066")
tagalog.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = "B16001_093")
other1.var = acs.fetch(endyear = 2015,
                       geography=c(sfhoods),
                       variable = c("B16001_006",	"B16001_009",	"B16001_012",	"B16001_015",	"B16001_018",	
                                    "B16001_021",	"B16001_024",	"B16001_027",	"B16001_030",	"B16001_033",
                                    "B16001_036",	"B16001_039",	"B16001_042",	"B16001_045",	"B16001_048",	
                                    "B16001_051",	"B16001_054",	"B16001_057",	"B16001_060",	"B16001_063",	
                                    "B16001_069",	"B16001_072",	"B16001_075",	"B16001_078",	
                                    "B16001_081",	"B16001_084",	"B16001_087",	"B16001_090",
                                    "B16001_096",	"B16001_099",	"B16001_102",	"B16001_105",	"B16001_108",	
                                    "B16001_111",	"B16001_114",	"B16001_117"))
pooreng.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = c("B16001_005",	"B16001_008",	"B16001_011",	"B16001_014",	"B16001_017",	
                                     "B16001_020",	"B16001_023",	"B16001_026",	"B16001_029",	"B16001_032",	
                                     "B16001_035",	"B16001_038",	"B16001_041",	"B16001_044",	"B16001_047",	
                                     "B16001_050",	"B16001_053",	"B16001_056",	"B16001_059",	"B16001_062",	
                                     "B16001_065",	"B16001_068",	"B16001_071",	"B16001_074",	"B16001_077",	
                                     "B16001_080",	"B16001_083",	"B16001_086",	"B16001_089",	"B16001_092",	
                                     "B16001_095",	"B16001_098",	"B16001_101",	"B16001_104",	"B16001_107",	
                                     "B16001_110",	"B16001_113",	"B16001_116",	"B16001_119"))
api.var = acs.fetch(endyear = 2015,
                    geography=c(sfhoods),
                    variable = c("B16001_066", "B16001_069",	"B16001_072",	"B16001_075",	"B16001_078",	
                                 "B16001_081",	"B16001_084",	"B16001_087",	"B16001_090", "B16001_093",
                                 "B16001_096"))
indoeur.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = c("B16001_006",	"B16001_009",	"B16001_012",	"B16001_015",	"B16001_018",	
                                     "B16001_021",	"B16001_024",	"B16001_027",	"B16001_030",	"B16001_033",
                                     "B16001_036",	"B16001_039",	"B16001_042",	"B16001_045",	"B16001_048",	
                                     "B16001_051",	"B16001_054",	"B16001_057",	"B16001_060",	"B16001_063"))
other2.var = acs.fetch(endyear = 2015,
                       geography=c(sfhoods),
                       variable = c("B16001_099",	"B16001_102",	"B16001_105",	"B16001_108",	
                                    "B16001_111",	"B16001_114",	"B16001_117"))

# Sum columns
other1.sum <- apply(other1.var, MARGIN = 2, FUN = sum,
                    agg.term = c("y", "other1.sum"), one.zero = TRUE)
pooreng.sum <- apply(pooreng.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "pooreng.sum"), one.zero = TRUE)
api.sum <- apply(api.var, MARGIN = 2, FUN = sum,
                 agg.term = c("y", "api.sum"), one.zero = TRUE)
indoeur.sum <- apply(indoeur.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "indoeur.sum"), one.zero = TRUE)
other2.sum <- apply(other2.var, MARGIN = 2, FUN = sum,
                    agg.term = c("y", "other2.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
language.count=data.frame(estimate(total.var), 1.645*standard.error(total.var), standard.error(total.var)/estimate(total.var),
                          estimate(english.var), 1.645*standard.error(english.var), standard.error(english.var)/estimate(english.var),
                          estimate(spanish.var), 1.645*standard.error(spanish.var), standard.error(spanish.var)/estimate(spanish.var),
                          estimate(chinese.var), 1.645*standard.error(chinese.var), standard.error(chinese.var)/estimate(chinese.var),
                          estimate(tagalog.var), 1.645*standard.error(tagalog.var), standard.error(tagalog.var)/estimate(tagalog.var),
                          estimate(other1.sum), 1.645*standard.error(other1.sum), standard.error(other1.sum)/estimate(other1.sum),
                          estimate(api.sum), 1.645*standard.error(api.sum), standard.error(api.sum)/estimate(api.sum),
                          estimate(indoeur.sum), 1.645*standard.error(indoeur.sum), standard.error(indoeur.sum)/estimate(indoeur.sum),
                          estimate(other2.sum), 1.645*standard.error(other2.sum), standard.error(other2.sum)/estimate(other2.sum),
                          estimate(pooreng.sum), 1.645*standard.error(pooreng.sum), standard.error(pooreng.sum)/estimate(pooreng.sum))
colnames(language.count)=c("total", "total_moe", "total_cv", 
                           "english", "english_moe", "english_cv", 
                           "spanish", "spanish_moe", "spanish_cv", 
                           "chinese", "chinese_moe", "chinese_cv",
                           "tagalog", "tagalog_moe", "tagalog_cv",
                           "other1", "other1_moe", "other1_cv", 
                           "api", "api_moe", "api_cv",
                           "indoeur", "indoeur_moe", "indoeur_cv",
                           "other2", "other2_moe", "other2_cv",
                           "pooreng", "pooreng_moe", "pooreng_cv")

#Export counts to csv in year folder
setattr(language.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                       "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                       "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                       "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                       "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                       "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                       "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(language.count, file="./2015/hood/hood_language15_cnt.csv")

#Calculate proportions

english.pct = divide.acs(english.var, total.var,
                         method = "proportion")
spanish.pct = divide.acs(spanish.var, total.var,
                         method = "proportion")
chinese.pct = divide.acs(chinese.var, total.var,
                         method = "proportion")
tagalog.pct = divide.acs(tagalog.var, total.var,
                         method = "proportion")
other1.pct = divide.acs(other1.sum, total.var,
                        method = "proportion")
api.pct = divide.acs(api.sum, total.var,
                     method = "proportion")
indoeur.pct = divide.acs(indoeur.sum, total.var,
                         method = "proportion")
other2.pct = divide.acs(other2.sum, total.var,
                        method = "proportion")
pooreng.pct = divide.acs(pooreng.sum, total.var,
                         method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
language.pct=data.frame(estimate(english.pct), 1.645*standard.error(english.pct), standard.error(english.pct)/estimate(english.pct),
                        estimate(spanish.pct), 1.645*standard.error(spanish.pct), standard.error(spanish.pct)/estimate(spanish.pct),
                        estimate(chinese.pct), 1.645*standard.error(chinese.pct), standard.error(chinese.pct)/estimate(chinese.pct),
                        estimate(tagalog.pct), 1.645*standard.error(tagalog.pct), standard.error(tagalog.pct)/estimate(tagalog.pct),
                        estimate(other1.pct), 1.645*standard.error(other1.pct), standard.error(other1.pct)/estimate(other1.pct),
                        estimate(api.pct), 1.645*standard.error(api.pct), standard.error(api.pct)/estimate(api.pct),
                        estimate(indoeur.pct), 1.645*standard.error(indoeur.pct), standard.error(indoeur.pct)/estimate(indoeur.pct),
                        estimate(other2.pct), 1.645*standard.error(other2.pct), standard.error(other2.pct)/estimate(other2.pct),
                        estimate(pooreng.pct), 1.645*standard.error(pooreng.pct), standard.error(pooreng.pct)/estimate(pooreng.pct))
colnames(language.pct)=c("english", "english_moe", "english_cv", 
                         "spanish", "spanish_moe", "spanish_cv", 
                         "chinese", "chinese_moe", "chinese_cv",
                         "tagalog", "tagalog_moe", "tagalog_cv",
                         "other1", "other1_moe", "other1_cv", 
                         "api", "api_moe", "api_cv",
                         "indoeur", "indoeur_moe", "indoeur_cv",
                         "other2", "other2_moe", "other2_cv",
                         "pooreng", "pooreng_moe", "pooreng_cv")

#Export proportions to csv in year folder
setattr(language.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                     "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                     "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                     "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                     "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                     "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                     "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(language.pct, file="./2015/hood/hood_language15_pct.csv")


# 7. LINGUISTICALLY ISOLATED HOUSEHOLDS ##########

#2015

#Fetch table fields of interest
tothh.var = acs.fetch(endyear = 2015, span = 5,
                      geography=c(sfhoods),
                      variable = "B16002_001")
lingiso.var = acs.fetch(endyear = 2015, span = 5,
                        geography=c(sfhoods),
                        variable = c("B16002_004","B16002_007","B16002_010","B16002_013"))
spanish.var = acs.fetch(endyear = 2015, span = 5,
                        geography=c(sfhoods),
                        variable = "B16002_004")
indoeur.var = acs.fetch(endyear = 2015, span = 5,
                        geography=c(sfhoods),
                        variable = "B16002_007")
api.var = acs.fetch(endyear = 2015, span = 5,
                    geography=c(sfhoods),
                    variable = "B16002_010")
other.var = acs.fetch(endyear = 2015, span = 5,
                      geography=c(sfhoods),
                      variable = "B16002_013")

#Sum columns
lingiso.sum <- apply(lingiso.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "lingiso.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
lingisohh.count=data.frame(estimate(tothh.var), 1.645*standard.error(tothh.var), standard.error(tothh.var)/estimate(tothh.var),
                           estimate(lingiso.sum), 1.645*standard.error(lingiso.sum), standard.error(lingiso.sum)/estimate(lingiso.sum),
                           estimate(spanish.var), 1.645*standard.error(spanish.var), standard.error(spanish.var)/estimate(spanish.var),
                           estimate(indoeur.var), 1.645*standard.error(indoeur.var), standard.error(indoeur.var)/estimate(indoeur.var),
                           estimate(api.var), 1.645*standard.error(api.var), standard.error(api.var)/estimate(api.var),
                           estimate(other.var), 1.645*standard.error(other.var), standard.error(other.var)/estimate(other.var))                     

colnames(lingisohh.count)=c("tothh", "tothh_moe", "tothh_cv",
                            "lingiso", "lingiso_moe", "lingiso_cv",
                            "spanish", "spanish_moe", "spanish_cv",
                            "indoeur", "indoeur_moe", "indoeur_cv",
                            "api", "api_moe", "api_cv",
                            "other", "other_moe", "other_cv")

#Export counts to csv in year folder
setattr(lingisohh.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                        "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                        "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                        "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                        "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                        "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                        "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(lingisohh.count, file="./2015/hood/hood_lingisohh15_cnt.csv")

#Calculate proportions

lingiso.pct = divide.acs(lingiso.sum, tothh.var,
                         method = "proportion")
spanish.pct = divide.acs(spanish.var, tothh.var,
                         method = "proportion")
indoeur.pct = divide.acs(indoeur.var, tothh.var,
                         method = "proportion")
api.pct = divide.acs(api.var, tothh.var,
                     method = "proportion")
other.pct = divide.acs(other.var, tothh.var,
                       method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
lingisohh.pct=data.frame(estimate(lingiso.pct), 1.645*standard.error(lingiso.pct), standard.error(lingiso.pct)/estimate(lingiso.pct),
                         estimate(spanish.pct), 1.645*standard.error(spanish.pct), standard.error(spanish.pct)/estimate(spanish.pct),
                         estimate(indoeur.pct), 1.645*standard.error(indoeur.pct), standard.error(indoeur.pct)/estimate(indoeur.pct),
                         estimate(api.pct), 1.645*standard.error(api.pct), standard.error(api.pct)/estimate(api.pct),
                         estimate(other.pct), 1.645*standard.error(other.pct), standard.error(other.pct)/estimate(other.pct))

colnames(lingisohh.pct)=c("lingiso", "lingiso_moe", "lingiso_cv",
                          "spanish", "spanish_moe", "spanish_cv",
                          "indoeur", "indoeur_moe", "indoeur_cv",
                          "api", "api_moe", "api_cv",
                          "other", "other_moe", "other_cv")

#Export proportions to csv in year folder
setattr(lingisohh.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(lingisohh.pct, file="./2015/hood/hood_lingisohh15_pct.csv")


# 8. NATIVITY & CITIZENSHIP ##########

#2015

#Fetch table fields of interest
totpop.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "B05002_001")
usborn.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "B05002_002")
forborn.var = acs.fetch(endyear = 2015, span = 5,
                        geography=c(sfhoods),
                        variable = "B05002_013")
natcit.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "B05002_014")
notcit.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "B05002_021")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
citizen.count=data.frame(estimate(totpop.var), 1.645*standard.error(totpop.var), standard.error(totpop.var)/estimate(totpop.var),
                         estimate(usborn.var), 1.645*standard.error(usborn.var), standard.error(usborn.var)/estimate(usborn.var),
                         estimate(forborn.var), 1.645*standard.error(forborn.var), standard.error(forborn.var)/estimate(forborn.var),
                         estimate(natcit.var), 1.645*standard.error(natcit.var), standard.error(natcit.var)/estimate(natcit.var),
                         estimate(notcit.var), 1.645*standard.error(notcit.var), standard.error(notcit.var)/estimate(notcit.var))                     

colnames(citizen.count)=c("totpop", "totpop_moe", "totpop_cv",
                          "usborn", "usborn_moe", "usborn_cv",
                          "forborn", "forborn_moe", "forborn_cv",
                          "natcit", "natcit_moe", "natcit_cv",
                          "notcit", "notcit_moe", "notcit_cv")

#Export counts to csv in year folder
setattr(citizen.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(citizen.count, file="./2015/hood/hood_citizen15_cnt.csv")

#Calculate proportions

usborn.pct = divide.acs(usborn.var, totpop.var,
                        method = "proportion")
forborn.pct = divide.acs(forborn.var, totpop.var,
                         method = "proportion")
natcit.pct = divide.acs(natcit.var, totpop.var,
                        method = "proportion")
notcit.pct = divide.acs(notcit.var, totpop.var,
                        method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
citizen.pct=data.frame(estimate(usborn.pct), 1.645*standard.error(usborn.pct), standard.error(usborn.pct)/estimate(usborn.pct),
                       estimate(forborn.pct), 1.645*standard.error(forborn.pct), standard.error(forborn.pct)/estimate(forborn.pct),
                       estimate(natcit.pct), 1.645*standard.error(natcit.pct), standard.error(natcit.pct)/estimate(natcit.pct),
                       estimate(notcit.pct), 1.645*standard.error(notcit.pct), standard.error(notcit.pct)/estimate(notcit.pct))

colnames(citizen.pct)=c("usborn", "usborn_moe", "usborn_cv",
                        "forborn", "forborn_moe", "forborn_cv",
                        "natcit", "natcit_moe", "natcit_cv",
                        "notcit", "notcit_moe", "notcit_cv")

#Export proportions to csv in year folder
setattr(citizen.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                    "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                    "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                    "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                    "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                    "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                    "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(citizen.pct, file="./2015/hood/hood_citizen15_pct.csv")


# 9. GEOGRAPHIC MOBILITY IN PAST YEAR ###########

#2015

#Fetch table fields of interest
popovr1.var = acs.fetch(endyear = 2015, span = 5,
                        geography=c(sfhoods),
                        variable = "B07001_001")
smhouse.var = acs.fetch(endyear = 2015, span = 5,
                        geography=c(sfhoods),
                        variable = "B07001_017")
smcounty.var = acs.fetch(endyear = 2015, span = 5,
                         geography=c(sfhoods),
                         variable = "B07001_033")
difcount.var = acs.fetch(endyear = 2015, span = 5,
                         geography=c(sfhoods),
                         variable = "B07001_049")
difstate.var = acs.fetch(endyear = 2015, span = 5,
                         geography=c(sfhoods),
                         variable = "B07001_065")
abroad.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "B07001_081")
moved.var = acs.fetch(endyear = 2015, span = 5,
                      geography=c(sfhoods),
                      variable = c("B07001_017","B07001_033","B07001_049","B07001_065","B07001_081"))

#sum values
moved.sum <- apply(moved.var, MARGIN = 2, FUN = sum,
                   agg.term = c("y", "moved.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
geomob.count=data.frame(estimate(popovr1.var), 1.645*standard.error(popovr1.var), standard.error(popovr1.var)/estimate(popovr1.var),
                        estimate(smhouse.var), 1.645*standard.error(smhouse.var), standard.error(smhouse.var)/estimate(smhouse.var),
                        estimate(moved.sum), 1.645*standard.error(moved.sum), standard.error(moved.sum)/estimate(moved.sum),
                        estimate(smcounty.var), 1.645*standard.error(smcounty.var), standard.error(smcounty.var)/estimate(smcounty.var),
                        estimate(difcount.var), 1.645*standard.error(difcount.var), standard.error(difcount.var)/estimate(difcount.var),
                        estimate(difstate.var), 1.645*standard.error(difstate.var), standard.error(difstate.var)/estimate(difstate.var),
                        estimate(abroad.var), 1.645*standard.error(abroad.var), standard.error(abroad.var)/estimate(abroad.var))                     

colnames(geomob.count)=c("popovr1", "popovr1_moe", "popovr1_cv",
                         "smhouse", "smhouse_moe", "smhouse_cv",
                         "moved", "moved_moe", "moved_cv",
                         "smcounty", "smcounty_moe", "smcounty_cv",
                         "difcount", "difcount_moe", "difcount_cv",
                         "difstate", "difstate_moe", "difstate_cv",
                         "abroad", "abroad_moe", "abroad_cv")

#Export counts to csv in year folder
setattr(geomob.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                     "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                     "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                     "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                     "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                     "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                     "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(geomob.count, file="./2015/hood/hood_geomobility15_cnt.csv")

#Calculate proportions

smhouse.pct = divide.acs(smhouse.var, popovr1.var,
                         method = "proportion")
moved.pct = divide.acs(moved.var, popovr1.var,
                       method = "proportion")
smcounty.pct = divide.acs(smcounty.var, popovr1.var,
                          method = "proportion")
difcount.pct = divide.acs(difcount.var, popovr1.var,
                          method = "proportion")
difstate.pct = divide.acs(difstate.var, popovr1.var,
                          method = "proportion")
abroad.pct = divide.acs(abroad.var, popovr1.var,
                        method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
geomob.pct=data.frame(estimate(smhouse.pct), 1.645*standard.error(smhouse.pct), standard.error(smhouse.pct)/estimate(smhouse.pct),
                      estimate(moved.pct), 1.645*standard.error(moved.pct), standard.error(moved.pct)/estimate(moved.pct),
                      estimate(smcounty.pct), 1.645*standard.error(smcounty.pct), standard.error(smcounty.pct)/estimate(smcounty.pct),
                      estimate(difcount.pct), 1.645*standard.error(difcount.pct), standard.error(difcount.pct)/estimate(difcount.pct),
                      estimate(difstate.pct), 1.645*standard.error(difstate.pct), standard.error(difstate.pct)/estimate(difstate.pct),
                      estimate(abroad.pct), 1.645*standard.error(abroad.pct), standard.error(abroad.pct)/estimate(abroad.pct))

colnames(geomob.pct)=c("smhouse", "smhouse_moe", "smhouse_cv",
                       "moved", "moved_moe", "moved_cv",
                       "smcounty", "smcounty_moe", "smcounty_cv",
                       "difcount", "difcount_moe", "difcount_cv",
                       "difstate", "difstate_moe", "difstate_cv",
                       "abroad", "abroad_moe", "abroad_cv")

#Export proportions to csv in year folder
setattr(geomob.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                   "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                   "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                   "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                   "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                   "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                   "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(geomob.pct, file="./2015/hood/hood_geomobility15_pct.csv")


# 10. AVERAGE HOUSEHOLD SIZE ##########

#2015

#Fetch table fields of interest
tothh.var = acs.fetch(endyear = 2015, span = 5,
                      geography=c(sfhoods),
                      variable = "B25009_001")
one.var = acs.fetch(endyear = 2015, span = 5,
                    geography=c(sfhoods),
                    variable = c("B25009_003", "B25009_011"))
two.var = acs.fetch(endyear = 2015, span = 5,
                    geography=c(sfhoods),
                    variable = c("B25009_004", "B25009_012"))
three.var = acs.fetch(endyear = 2015, span = 5,
                      geography=c(sfhoods),
                      variable = c("B25009_005", "B25009_013"))
four.var = acs.fetch(endyear = 2015, span = 5,
                     geography=c(sfhoods),
                     variable = c("B25009_006","B25009_014"))
five.var = acs.fetch(endyear = 2015, span = 5,
                     geography=c(sfhoods),
                     variable = c("B25009_007", "B25009_015"))
six.var = acs.fetch(endyear = 2015, span = 5,
                    geography=c(sfhoods),
                    variable = c("B25009_008", "B25009_016"))
sevenpls.var = acs.fetch(endyear = 2015, span = 5,
                         geography=c(sfhoods),
                         variable = c("B25009_009", "B25009_017"))
avghhsize.var = acs.fetch(endyear = 2015, span = 5,
                          geography=c(sfhoods),
                          variable = "B25010_001")

#Sum columns
one.sum <- apply(one.var, MARGIN = 2, FUN = sum,
                 agg.term = c("y", "one.sum"), one.zero = TRUE)
two.sum <- apply(two.var, MARGIN = 2, FUN = sum,
                 agg.term = c("y", "two.sum"), one.zero = TRUE)
three.sum <- apply(three.var, MARGIN = 2, FUN = sum,
                   agg.term = c("y", "three.sum"), one.zero = TRUE)
four.sum <- apply(four.var, MARGIN = 2, FUN = sum,
                  agg.term = c("y", "four.sum"), one.zero = TRUE)
five.sum <- apply(five.var, MARGIN = 2, FUN = sum,
                  agg.term = c("y", "five.sum"), one.zero = TRUE)
six.sum <- apply(six.var, MARGIN = 2, FUN = sum,
                 agg.term = c("y", "six.sum"), one.zero = TRUE)
sevenpls.sum <- apply(sevenpls.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "sevenpls.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
hhsize.count=data.frame(estimate(tothh.var), 1.645*standard.error(tothh.var), standard.error(tothh.var)/estimate(tothh.var),
                        estimate(one.sum), 1.645*standard.error(one.sum), standard.error(one.sum)/estimate(one.sum),
                        estimate(two.sum), 1.645*standard.error(two.sum), standard.error(two.sum)/estimate(two.sum),
                        estimate(three.sum), 1.645*standard.error(three.sum), standard.error(three.sum)/estimate(three.sum),
                        estimate(four.sum), 1.645*standard.error(four.sum), standard.error(four.sum)/estimate(four.sum),
                        estimate(five.sum), 1.645*standard.error(five.sum), standard.error(five.sum)/estimate(five.sum),
                        estimate(six.sum), 1.645*standard.error(six.sum), standard.error(six.sum)/estimate(six.sum),
                        estimate(sevenpls.sum), 1.645*standard.error(sevenpls.sum), standard.error(sevenpls.sum)/estimate(sevenpls.sum))                     

colnames(hhsize.count)=c("tothh", "tothh_moe", "tothh_cv",
                         "one", "one_moe", "one_cv",
                         "two", "two_moe", "two_cv",
                         "three", "three_moe", "three_cv",
                         "four", "four_moe", "four_cv",
                         "five", "five_moe", "five_cv",
                         "six", "six_moe", "six_cv",
                         "sevenpls", "sevenpls_moe", "sevenpls_cv")

#Export counts to csv in year folder
setattr(hhsize.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                     "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                     "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                     "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                     "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                     "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                     "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(hhsize.count, file="./2015/hood/hood_hhsize15_cnt.csv")

#Calculate weighted average
one.mul <- one.sum * 1
two.mul <- two.sum * 2
three.mul <- three.sum * 3
four.mul <- four.sum * 4
five.mul <- five.sum * 5
six.mul <- six.sum * 6
sevenpls.mul <- sevenpls.sum * 7

wgt.sum <- one.mul + two.mul + three.mul + four.mul + five.mul + six.mul + sevenpls.mul

wgt.avg <- wgt.sum/tothh.var

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
avghhsize.pct=data.frame(estimate(wgt.avg), 1.645*standard.error(wgt.avg), standard.error(wgt.avg)/estimate(wgt.avg))

colnames(avghhsize.pct)=c( "avghhsz", "avghhsz_moe", "avghhsz_cv")

#Export proportions to csv in year folder
setattr(avghhsize.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(avghhsize.pct, file="./2015/hood/hood_avghhsize15_avg.csv")


# 11. PERSONS BY HOUSEHOLD TYPE ##########

#2015

#Fetch table fields of interest
totpop.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "B09019_001")
family.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "B09019_003")
nonfam.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "B09019_024")
alone.var = acs.fetch(endyear = 2015, span = 5,
                      geography=c(sfhoods),
                      variable = c("B09019_027","B09019_030"))
groupq.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "B09019_038")

#Sum columns
alone.sum <- apply(alone.var, MARGIN = 2, FUN = sum,
                   agg.term = c("y", "alone.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
perhhstruct.count=data.frame(estimate(totpop.var), 1.645*standard.error(totpop.var), standard.error(totpop.var)/estimate(totpop.var),
                             estimate(family.var), 1.645*standard.error(family.var), standard.error(family.var)/estimate(family.var),
                             estimate(nonfam.var), 1.645*standard.error(nonfam.var), standard.error(nonfam.var)/estimate(nonfam.var),
                             estimate(alone.sum), 1.645*standard.error(alone.sum), standard.error(alone.sum)/estimate(alone.sum),
                             estimate(groupq.var), 1.645*standard.error(groupq.var), standard.error(groupq.var)/estimate(groupq.var))                     

colnames(perhhstruct.count)=c("totpop", "totpop_moe", "totpop_cv",
                              "family", "family_moe", "family_cv",
                              "nonfam", "nonfam_moe", "nonfam_cv",
                              "alone", "alone_moe", "alone_cv",
                              "groupq", "groupq_moe", "groupq_cv")

#Export counts to csv in year folder
setattr(perhhstruct.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                          "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                          "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                          "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                          "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                          "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                          "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(perhhstruct.count, file="./2015/hood/hood_perhhstruct15_cnt.csv")

#Calculate proportions

family.pct = divide.acs(family.var, totpop.var,
                        method = "proportion")
nonfam.pct = divide.acs(nonfam.var, totpop.var,
                        method = "proportion")
alone.pct = divide.acs(alone.sum, totpop.var,
                       method = "proportion")
groupq.pct = divide.acs(groupq.sum, totpop.var,
                        method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
perhhstruct.pct=data.frame(estimate(family.pct), 1.645*standard.error(family.pct), standard.error(family.pct)/estimate(family.pct),
                           estimate(nonfam.pct), 1.645*standard.error(nonfam.pct), standard.error(nonfam.pct)/estimate(nonfam.pct),
                           estimate(alone.pct), 1.645*standard.error(alone.pct), standard.error(alone.pct)/estimate(alone.pct),
                           estimate(groupq.pct), 1.645*standard.error(groupq.pct), standard.error(groupq.pct)/estimate(groupq.pct))

colnames(perhhstruct.pct)=c("family", "family_moe", "family_cv",
                            "nonfam", "nonfam_moe", "nonfam_cv",
                            "alone", "alone_moe", "alone_cv",
                            "groupq", "groupq_moe", "groupq_cv")

#Export proportions to csv in year folder
setattr(perhhstruct.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                        "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                        "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                        "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                        "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                        "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                        "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(perhhstruct.pct, file="./2015/hood/hood_perhhstruct15_pct.csv")


# 12. HOUSEHOLDS BY HOUSEHOLD TYPE ##########

#2015

#Fetch table fields of interest
households.count = acs.fetch(endyear = 2015,
                             geography=sfhoods,
                             variable = c("B11001_001", "B11001_002", "B11001_003", "B11001_004",
                                          "B11001_007", "B11001_008", "B11001_009"))

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
households.cnt=data.frame(estimate(households.count), 1.645*standard.error(households.count), 
                          standard.error(households.count)/estimate(households.count))
colnames(households.cnt)=c("total","family","married","othfam","nonfam","alone","roommt",
                           "total_moe","family_moe","married_moe","othfam_moe","nonfam_moe","alone_moe","roommt_moe",
                           "total_cv","family_cv","married_cv","othfam_cv","nonfam_cv","alone_cv","roommt_cv")

#Export counts to csv in year folder
setattr(households.cnt, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                       "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                       "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                       "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                       "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                       "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                       "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(households.cnt, file="./2015/hood/hood_households15_cnt.csv")

#Calculate proportions
family.pct = divide.acs(households.count[,2], households.count[,1],
                        method = "proportion")
married.pct = divide.acs(households.count[,3], households.count[,2],
                         method = "proportion")
othfam.pct = divide.acs(households.count[,4], households.count[,2],
                        method = "proportion")
nonfam.pct = divide.acs(households.count[,5], households.count[,1],
                        method = "proportion")
alone.pct = divide.acs(households.count[,6], households.count[,5],
                       method = "proportion")
roommt.pct = divide.acs(households.count[,7], households.count[,5],
                        method = "proportion")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names 
households.pct=data.frame(estimate(family.pct), 1.645*standard.error(family.pct), standard.error(family.pct)/estimate(family.pct),
                          estimate(married.pct), 1.645*standard.error(married.pct), standard.error(married.pct)/estimate(married.pct),
                          estimate(othfam.pct), 1.645*standard.error(othfam.pct), standard.error(othfam.pct)/estimate(othfam.pct),
                          estimate(nonfam.pct), 1.645*standard.error(nonfam.pct), standard.error(nonfam.pct)/estimate(nonfam.pct),
                          estimate(alone.pct), 1.645*standard.error(alone.pct), standard.error(alone.pct)/estimate(alone.pct),
                          estimate(roommt.pct), 1.645*standard.error(roommt.pct), standard.error(roommt.pct)/estimate(roommt.pct))
colnames(households.pct)=c("family", "family_moe", "family_cv", 
                           "married", "married_moe", "married_cv", 
                           "othfam", "othfam_moe", "othfam_cv", 
                           "nonfam", "nonfam_moe", "nonfam_cv",
                           "alone", "alone_moe", "alone_cv", 
                           "roommt", "roommt_moe", "roommt_cv")

#Export proportions to csv in year folder
setattr(households.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                       "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                       "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                       "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                       "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                       "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                       "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(households.pct, file="./2015/hood/hood_households15_pct.csv")


# 13. HOUSEHOLDS WITH YOUTH ##########

#2015

#Fetch table fields of interest
hhwchildren.count = acs.fetch(endyear = 2015,
                              geography=sfhoods,
                              variable = c("B11005_001", "B11005_002", "B11005_011"))

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
hhwchildren.cnt=data.frame(estimate(hhwchildren.count), 1.645*standard.error(hhwchildren.count), 
                           standard.error(hhwchildren.count)/estimate(hhwchildren.count))
colnames(hhwchildren.cnt)=c("total","wchild","nochild", 
                            "total_moe","wchild_moe","nochild_moe", 
                            "total_cv","wchild_cv","nochild_cv")

#Export counts to csv in year folder
setattr(hhwchildren.cnt, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                        "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                        "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                        "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                        "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                        "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                        "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(hhwchildren.cnt, file="./2015/hood/hood_hhwchildren15_cnt.csv")

#Calculate proportions
wchild.pct = divide.acs(hhwchildren.count[,2], hhwchildren.count[,1],
                        method = "proportion")
nochild.pct = divide.acs(hhwchildren.count[,3], hhwchildren.count[,1],
                         method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names 
hhwchildren.pct=data.frame(estimate(wchild.pct), 1.645*standard.error(wchild.pct), standard.error(wchild.pct)/estimate(wchild.pct),
                           estimate(nochild.pct), 1.645*standard.error(nochild.pct), standard.error(nochild.pct)/estimate(nochild.pct))
colnames(hhwchildren.pct)=c("wchild", "wchild_moe", "wchild_cv", 
                            "nochild", "nochild_moe", "nochild_cv")

#Export proportions to csv in year folder
setattr(hhwchildren.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                        "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                        "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                        "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                        "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                        "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                        "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(hhwchildren.pct, file="./2015/hood/hood_hhwchildren15_pct.csv")


# 14. HOUSEHOLDS WITH SENIORS ###########

#2015

#Fetch table fields of interest
hhwsenior.count = acs.fetch(endyear = 2015,
                            geography=sfhoods,
                            variable = c("B11007_001", "B11007_002", "B11007_007"))

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
hhwsenior.cnt=data.frame(estimate(hhwsenior.count), 1.645*standard.error(hhwsenior.count), 
                         standard.error(hhwsenior.count)/estimate(hhwsenior.count))
colnames(hhwsenior.cnt)=c("total","wsenior","nosenior", 
                          "total_moe","wsenior_moe","nosenior_moe", 
                          "total_cv","wsenior_cv","nosenior_cv")

#Export counts to csv in year folder
setattr(hhwsenior.cnt, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(hhwsenior.cnt, file="./2015/hood/hood_hhwsenior15_cnt.csv")

#Calculate proportions
wsenior.pct = divide.acs(hhwsenior.count[,2], hhwsenior.count[,1],
                         method = "proportion")
nosenior.pct = divide.acs(hhwsenior.count[,3], hhwsenior.count[,1],
                          method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names 
hhwsenior.pct=data.frame(estimate(wsenior.pct), 1.645*standard.error(wsenior.pct), standard.error(wsenior.pct)/estimate(wsenior.pct),
                         estimate(nosenior.pct), 1.645*standard.error(nosenior.pct), standard.error(nosenior.pct)/estimate(nosenior.pct))
colnames(hhwsenior.pct)=c("wsenior", "wsenior_moe", "wsenior_cv", 
                          "nosenior", "nosenior_moe", "nosenior_cv")

#Export proportions to csv in year folder
setattr(hhwsenior.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(hhwsenior.pct, file="./2015/hood/hood_hhwsenior15_pct.csv")




# 15. YOUTH BY PARENTAL MARITAL STATUS ##########

#2015

#Fetch table fields of interest
totyth.var = acs.fetch(endyear = 2015,
                       geography= sfhoods,
                       variable = "B09005_001")
married.var = acs.fetch(endyear = 2015,
                        geography=sfhoods,
                        variable = "B09005_003")
single.var = acs.fetch(endyear = 2015,
                       geography=sfhoods,
                       variable = c("B09005_004", "B09005_004"))
other.var = acs.fetch(endyear = 2015,
                      geography=sfhoods,
                      variable = "B09005_006")

# Sum columns
single.sum <- apply(single.var, MARGIN = 2, FUN = sum,
                    agg.term = c("y", "single.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
marital.cnt=data.frame(estimate(totyth.var), 1.645*standard.error(totyth.var), standard.error(totyth.var)/estimate(totyth.var),
                       estimate(married.var), 1.645*standard.error(married.var), standard.error(married.var)/estimate(married.var),
                       estimate(single.sum), 1.645*standard.error(single.sum), standard.error(single.sum)/estimate(single.sum),
                       estimate(other.var), 1.645*standard.error(other.var), standard.error(other.var)/estimate(other.var))
colnames(marital.cnt)=c("totyouth", "totyouth_moe", "totyouth_cv",
                        "married", "married_moe", "married_cv",
                        "single", "single_moe", "single_cv",
                        "other", "other_moe", "other_cv")

#Export counts to csv in year folder
setattr(marital.cnt, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                    "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                    "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                    "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                    "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                    "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                    "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(marital.cnt, file="./2015/hood/hood_parentmarital15_cnt.csv")

#Calculate proportions
married.pct = divide.acs(married.var, totyth.var,
                         method = "proportion")
single.pct = divide.acs(single.sum, totyth.var,
                        method = "proportion")
other.pct = divide.acs(other.var, totyth.var,
                       method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names 
married.pct=data.frame(estimate(married.var), 1.645*standard.error(married.var), standard.error(married.var)/estimate(married.var),
                       estimate(single.sum), 1.645*standard.error(single.sum), standard.error(single.sum)/estimate(single.sum),
                       estimate(other.var), 1.645*standard.error(other.var), standard.error(other.var)/estimate(other.var))
colnames(married.pct)=c("married", "married_moe", "married_cv",
                        "single", "single_moe", "single_cv",
                        "other", "other_moe", "other_cv")

#Export proportions to csv in year folder
setattr(married.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                    "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                    "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                    "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                    "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                    "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                    "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(married.pct, file="./2015/hood/hood_parentmarital15_pct.csv")

# 16. EDUCATIONAL ATTAINMENT (25Y+) ##########

#Fetch table fields of interest
total.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = "B15002_001")
lths.var = acs.fetch(endyear = 2015,
                     geography=c(sfhoods),
                     variable = c("B15002_003", "B15002_004", "B15002_005", "B15002_006",
                                  "B15002_007", "B15002_008", "B15002_009", "B15002_010",
                                  "B15002_020", "B15002_021", "B15002_022", "B15002_023",
                                  "B15002_024", "B15002_025", "B15002_026", "B15002_027"))
hsless.var = acs.fetch(endyear = 2015,
                       geography=c(sfhoods),
                       variable = c("B15002_003", "B15002_004", "B15002_005", "B15002_006",
                                    "B15002_007", "B15002_008", "B15002_009", "B15002_010","B15002_011",
                                    "B15002_020", "B15002_021", "B15002_022", "B15002_023",
                                    "B15002_024", "B15002_025", "B15002_026", "B15002_027", "B15002_028"))
hsplus.var = acs.fetch(endyear = 2015,
                       geography=c(sfhoods),
                       variable = c("B15002_011", "B15002_012", "B15002_013", "B15002_014",
                                    "B15002_015", "B15002_016", "B15002_017", "B15002_018",
                                    "B15002_028", "B15002_029", "B15002_030", "B15002_031",
                                    "B15002_032", "B15002_033", "B15002_034", "B15002_035"))
smcolplus.var = acs.fetch(endyear = 2015,
                          geography=c(sfhoods),
                          variable = c("B15002_012", "B15002_013", "B15002_014",
                                       "B15002_015", "B15002_016", "B15002_017", "B15002_018",
                                       "B15002_029", "B15002_030", "B15002_031",
                                       "B15002_032", "B15002_033", "B15002_034", "B15002_035"))
assocplus.var = acs.fetch(endyear = 2015,
                          geography=c(sfhoods),
                          variable = c("B15002_014",
                                       "B15002_015", "B15002_016", "B15002_017", "B15002_018",
                                       "B15002_031",
                                       "B15002_032", "B15002_033", "B15002_034", "B15002_035"))
bachonly.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B15002_015", "B15002_032"))
bachplus.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B15002_015", "B15002_016", "B15002_017", "B15002_018",
                                      "B15002_032", "B15002_033", "B15002_034", "B15002_035"))
mastplus.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B15002_016", "B15002_017", "B15002_018",
                                      "B15002_033", "B15002_034", "B15002_035"))

# Sum columns
lths.sum <- apply(lths.var, MARGIN = 2, FUN = sum,
                  agg.term = c("y", "lths.sum"), one.zero = TRUE)
hsless.sum <- apply(hsless.var, MARGIN = 2, FUN = sum,
                    agg.term = c("y", "hsless.sum"), one.zero = TRUE)
hsplus.sum <- apply(hsplus.var, MARGIN = 2, FUN = sum,
                    agg.term = c("y", "hsplus.sum"), one.zero = TRUE)
smcolplus.sum <- apply(smcolplus.var, MARGIN = 2, FUN = sum,
                       agg.term = c("y", "smcolplus.sum"), one.zero = TRUE)
assocplus.sum <- apply(assocplus.var, MARGIN = 2, FUN = sum,
                       agg.term = c("y", "assocplus.sum"), one.zero = TRUE)
bachonly.sum <- apply(bachonly.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "bachonly.sum"), one.zero = TRUE)
bachplus.sum <- apply(bachplus.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "bachplus.sum"), one.zero = TRUE)
mastplus.sum <- apply(mastplus.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "mastplus.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
edgroups.count=data.frame(estimate(total.var), 1.645*standard.error(total.var), standard.error(total.var)/estimate(total.var),
                          estimate(lths.sum), 1.645*standard.error(lths.sum), standard.error(lths.sum)/estimate(lths.sum),
                          estimate(hsless.sum), 1.645*standard.error(hsless.sum), standard.error(hsless.sum)/estimate(hsless.sum),
                          estimate(hsplus.sum), 1.645*standard.error(hsplus.sum), standard.error(hsplus.sum)/estimate(hsplus.sum),
                          estimate(smcolplus.sum), 1.645*standard.error(smcolplus.sum), standard.error(smcolplus.sum)/estimate(smcolplus.sum),
                          estimate(assocplus.sum), 1.645*standard.error(assocplus.sum), standard.error(assocplus.sum)/estimate(assocplus.sum),
                          estimate(bachonly.sum), 1.645*standard.error(bachonly.sum), standard.error(bachonly.sum)/estimate(bachonly.sum),
                          estimate(bachplus.sum), 1.645*standard.error(bachplus.sum), standard.error(bachplus.sum)/estimate(bachplus.sum),
                          estimate(mastplus.sum), 1.645*standard.error(mastplus.sum), standard.error(mastplus.sum)/estimate(mastplus.sum))
colnames(edgroups.count)=c("total", "total_moe", "total_cv", 
                           "lths", "lths_moe", "lths_cv", 
                           "hsless", "hsless_moe", "hsless_cv", 
                           "hsplus", "hsplus_moe", "hsplus_cv", 
                           "smcolplus", "smcolplus_moe", "smcolplus_cv",
                           "assocplus", "assocplus_moe", "assocplus_cv",
                           "bachonly", "bachonly_moe", "bachonly_cv",
                           "bachplus", "bachplus_moe", "bachplus_cv",
                           "mastplus", "mastplus_moe", "mastplus_cv")

#Export counts to csv in year folder
setattr(edgroups.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                       "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                       "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                       "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                       "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                       "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                       "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(edgroups.count, file="./2015/hood/hood_edgroups15_cnt.csv")

#Calculate proportions

lths.pct = divide.acs(lths.sum, total.var,
                      method = "proportion")
hsless.pct = divide.acs(hsless.sum, total.var,
                        method = "proportion")
hsplus.pct = divide.acs(hsplus.sum, total.var,
                        method = "proportion")
smcolplus.pct = divide.acs(smcolplus.sum, total.var,
                           method = "proportion")
assocplus.pct = divide.acs(assocplus.sum, total.var,
                           method = "proportion")
bachonly.pct = divide.acs(bachonly.sum, total.var,
                          method = "proportion")
bachplus.pct = divide.acs(bachplus.sum, total.var,
                          method = "proportion")
mastplus.pct = divide.acs(mastplus.sum, total.var,
                          method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
edgroups.pct=data.frame(estimate(lths.pct), 1.645*standard.error(lths.pct), standard.error(lths.pct)/estimate(lths.pct),
                        estimate(hsless.pct), 1.645*standard.error(hsless.pct), standard.error(hsless.pct)/estimate(hsless.pct),
                        estimate(hsplus.pct), 1.645*standard.error(hsplus.pct), standard.error(hsplus.pct)/estimate(hsplus.pct),
                        estimate(smcolplus.pct), 1.645*standard.error(smcolplus.pct), standard.error(smcolplus.pct)/estimate(smcolplus.pct),
                        estimate(assocplus.pct), 1.645*standard.error(assocplus.pct), standard.error(assocplus.pct)/estimate(assocplus.pct),
                        estimate(bachonly.pct), 1.645*standard.error(bachonly.pct), standard.error(bachonly.pct)/estimate(bachonly.pct),
                        estimate(bachplus.pct), 1.645*standard.error(bachplus.pct), standard.error(bachplus.pct)/estimate(bachplus.pct),
                        estimate(mastplus.pct), 1.645*standard.error(mastplus.pct), standard.error(mastplus.pct)/estimate(mastplus.pct))
colnames(edgroups.pct)=c("lths", "lths_moe", "lths_cv", 
                         "hsless", "hsless_moe", "hsless_cv", 
                         "hsplus", "hsplus_moe", "hsplus_cv", 
                         "smcolplus", "smcolplus_moe", "smcolplus_cv",
                         "assocplus", "assocplus_moe", "assocplus_cv",
                         "bachonly", "bachonly_moe", "bachonly_cv",
                         "bachplus", "bachplus_moe", "bachplus_cv",
                         "mastplus", "mastplus_moe", "mastplus_cv")

#Export proportions to csv in year folder
setattr(edgroups.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                     "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                     "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                     "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                     "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                     "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                     "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(edgroups.pct, file="./2015/hood/hood_edgroups15_pct.csv")


# 17. POVERTY ##########

#2015
#Fetch table fields of interest
total.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = "B17024_001")
lt100pct.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B17024_003","B17024_004","B17024_005","B17024_016","B17024_017","B17024_018","B17024_029","B17024_030","B17024_031","B17024_042",
                                      "B17024_043","B17024_044","B17024_055","B17024_056","B17024_057","B17024_068","B17024_069","B17024_070","B17024_081","B17024_082","B17024_083","B17024_094","B17024_095",
                                      "B17024_096","B17024_107","B17024_108","B17024_109","B17024_120","B17024_121","B17024_122"))
lt200pct.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B17024_003","B17024_004","B17024_005","B17024_006","B17024_007","B17024_008","B17024_009","B17024_010","B17024_016","B17024_017",
                                      "B17024_018","B17024_019","B17024_020","B17024_021","B17024_022","B17024_023", "B17024_029", "B17024_030", "B17024_031", "B17024_032", "B17024_033", "B17024_034",
                                      "B17024_035", "B17024_036", "B17024_042", "B17024_043", "B17024_044", "B17024_045", "B17024_046", "B17024_047", "B17024_048", "B17024_049", "B17024_055",
                                      "B17024_056", "B17024_057", "B17024_058", "B17024_059", "B17024_060", "B17024_061", "B17024_062", "B17024_068", "B17024_069", "B17024_070", "B17024_071", "B17024_072",
                                      "B17024_073", "B17024_074", "B17024_075", "B17024_081", "B17024_082", "B17024_083", "B17024_084", "B17024_085", "B17024_086", "B17024_087", "B17024_088",
                                      "B17024_094", "B17024_095", "B17024_096", "B17024_097", "B17024_098", "B17024_099", "B17024_100", "B17024_101", "B17024_107", "B17024_108", "B17024_109",
                                      "B17024_110", "B17024_111", "B17024_112", "B17024_113", "B17024_114", "B17024_120", "B17024_121", "B17024_122", "B17024_123", "B17024_124", "B17024_125",
                                      "B17024_126", "B17024_127"))
p100to400pct.var = acs.fetch(endyear = 2015,
                             geography=c(sfhoods),
                             variable = c("B17024_006","B17024_007","B17024_008","B17024_009","B17024_010","B17024_012","B17024_019","B17024_020","B17024_021",
                                          "B17024_022","B17024_023","B17024_024","B17024_025","B17024_032","B17024_033","B17024_034","B17024_035","B17024_036",
                                          "B17024_037", "B17024_038", "B17024_045", "B17024_046", "B17024_047", "B17024_048", "B17024_049", "B17024_050", "B17024_051", "B17024_058", "B17024_059",
                                          "B17024_060", "B17024_061", "B17024_062", "B17024_063", "B17024_064", "B17024_071", "B17024_072", "B17024_073", "B17024_074", "B17024_075", "B17024_076",
                                          "B17024_077", "B17024_084", "B17024_085", "B17024_086", "B17024_087", "B17024_088", "B17024_089", "B17024_090", "B17024_097", "B17024_098", "B17024_099",
                                          "B17024_100", "B17024_101", "B17024_102", "B17024_103", "B17024_110", "B17024_111", "B17024_112", "B17024_113", "B17024_114", "B17024_115", "B17024_116",
                                          "B17024_123", "B17024_124", "B17024_125", "B17024_126", "B17024_127", "B17024_128", "B17024_129"))
yth100pct.var = acs.fetch(endyear = 2015,
                          geography=c(sfhoods),
                          variable = c("B17024_003","B17024_004","B17024_005","B17024_016","B17024_017","B17024_018","B17024_029","B17024_030","B17024_031"))
yth200pct.var = acs.fetch(endyear = 2015,
                          geography=c(sfhoods),
                          variable = c("B17024_003","B17024_004","B17024_005","B17024_006","B17024_007","B17024_008","B17024_009","B17024_010","B17024_016","B17024_017",
                                       "B17024_018","B17024_019","B17024_020","B17024_021","B17024_022","B17024_023", "B17024_029", "B17024_030", "B17024_031", "B17024_032", "B17024_033", "B17024_034",
                                       "B17024_035", "B17024_036"))

#Sum columns
lt100pct.sum <- apply(lt100pct.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "lt100pct.sum"))
lt200pct.sum <- apply(lt200pct.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "lt200pct.sum"))
p100to400pct.sum <- apply(p100to400pct.var, MARGIN = 2, FUN = sum,
                          agg.term = c("y", "p100to400pct.sum"))
yth100pct.sum <- apply(yth100pct.var, MARGIN = 2, FUN = sum,
                       agg.term = c("y", "yth100pct.sum"))
yth200pct.sum <- apply(yth200pct.var, MARGIN = 2, FUN = sum,
                       agg.term = c("y", "yth200pct.sum"))

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
poverty.count=data.frame(estimate(total.var), 1.645*standard.error(total.var), standard.error(total.var)/estimate(total.var),
                         estimate(lt100pct.sum), 1.645*standard.error(lt100pct.sum), standard.error(lt100pct.sum)/estimate(lt100pct.sum),
                         estimate(lt200pct.sum), 1.645*standard.error(lt200pct.sum), standard.error(lt200pct.sum)/estimate(lt200pct.sum),
                         estimate(p100to400pct.sum), 1.645*standard.error(p100to400pct.sum), standard.error(p100to400pct.sum)/estimate(p100to400pct.sum),
                         estimate(yth100pct.sum), 1.645*standard.error(yth100pct.sum), standard.error(yth100pct.sum)/estimate(yth100pct.sum),
                         estimate(yth200pct.sum), 1.645*standard.error(yth200pct.sum), standard.error(yth200pct.sum)/estimate(yth200pct.sum))
colnames(poverty.count)=c("total", "total_moe", "total_cv", 
                          "lt100pct", "lt100pct_moe", "lt100pct_cv", 
                          "lt200pct", "lt200pct_moe", "lt200pct_cv", 
                          "p100to400pct", "p100to400pct_moe", "p100to400pct_cv",
                          "yth100pct", "yth100pct_moe", "yth100pct_cv",
                          "yth200pct", "yth200pct_moe", "yth200pct_cv")

#Export counts to csv in year folder
setattr(poverty.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(poverty.count, file="./2015/hood/hood_poverty15_cnt.csv")

#Calculate proportions

lt100pct.pct = divide.acs(lt100pct.sum, total.var,
                          method = "proportion")
lt200pct.pct = divide.acs(lt200pct.sum, total.var,
                          method = "proportion")
p100to400pct.pct = divide.acs(p100to400pct.sum, total.var,
                              method = "proportion")
yth100pct.pct = divide.acs(yth100pct.sum, total.var,
                           method = "proportion")
yth200pct.pct = divide.acs(yth200pct.sum, total.var,
                           method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
poverty.pct=data.frame(estimate(lt100pct.pct), 1.645*standard.error(lt100pct.pct), standard.error(lt100pct.pct)/estimate(lt100pct.pct),
                       estimate(lt200pct.pct), 1.645*standard.error(lt200pct.pct), standard.error(lt200pct.pct)/estimate(lt200pct.pct),
                       estimate(p100to400pct.pct), 1.645*standard.error(p100to400pct.pct), standard.error(p100to400pct.pct)/estimate(p100to400pct.pct),
                       estimate(yth100pct.pct), 1.645*standard.error(yth100pct.pct), standard.error(yth100pct.pct)/estimate(yth100pct.pct),
                       estimate(yth200pct.pct), 1.645*standard.error(yth200pct.pct), standard.error(yth200pct.pct)/estimate(yth200pct.pct))
colnames(poverty.pct)=c("lt100pct", "lt100pct_moe", "lt100pct_cv", 
                        "lt200pct", "lt200pct_moe", "lt200pct_cv", 
                        "p100to400pct", "p100to400pct_moe", "p100to400pct_cv",
                        "yth100pct", "yth100pct_moe", "yth100pct_cv",
                        "yth200pct", "yth200pct_moe", "yth200pct_cv") 


#Export proportions to csv in year folder
setattr(poverty.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                    "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                    "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                    "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                    "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                    "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                    "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(poverty.pct, file="./2015/hood/hood_poverty15_pct.csv")


# 18. LABOR FORCE & EMPLOYMENT ##########

#2015
#Fetch table fields of interest
tot16plus.var = acs.fetch(endyear = 2015,
                          geography=c(sfhoods),
                          variable = "B12006_001")
f.tot16plus.var = acs.fetch(endyear = 2015,
                            geography=c(sfhoods),
                            variable = c("B12006_008","B12006_019","B12006_030","B12006_041","B12006_052"))
m.tot16plus.var = acs.fetch(endyear = 2015,
                            geography=c(sfhoods),
                            variable = c("B12006_003","B12006_014","B12006_025","B12006_036","B12006_047"))
labor.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = c("B12006_004", "B12006_009", "B12006_015","B12006_020",
                                   "B12006_026","B12006_031","B12006_037","B12006_042",
                                   "B12006_048", "B12006_053"))
employ.var = acs.fetch(endyear = 2015,
                       geography=c(sfhoods),
                       variable = c("B12006_005", "B12006_010", "B12006_016","B12006_021",
                                    "B12006_027","B12006_032","B12006_038","B12006_043",
                                    "B12006_049", "B12006_054"))
f.labor.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = c("B12006_009", "B12006_020",
                                     "B12006_031", "B12006_042",
                                     "B12006_053"))
f.employ.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B12006_010", "B12006_021",
                                      "B12006_032","B12006_043",
                                      "B12006_054"))
m.labor.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = c("B12006_004", "B12006_015",
                                     "B12006_026","B12006_037",
                                     "B12006_048"))
m.employ.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B12006_005", "B12006_016",
                                      "B12006_027","B12006_038",
                                      "B12006_049"))
#Sum columns
f.tot16plus.sum <- apply(f.tot16plus.var[,1:5], MARGIN = 2, FUN = sum,
                         agg.term = c("y", "f.tot16plus.sum"), one.zero = TRUE)
m.tot16plus.sum <- apply(m.tot16plus.var[,1:5], MARGIN = 2, FUN = sum,
                         agg.term = c("y", "m.tot16plus.sum"), one.zero = TRUE)
labor.sum <- apply(labor.var[,1:10], MARGIN = 2, FUN = sum,
                   agg.term = c("y", "labor.sum"), one.zero = TRUE)
employ.sum <- apply(employ.var[,1:10], MARGIN = 2, FUN = sum,
                    agg.term = c("y", "employ.sum"), one.zero = TRUE)
f.labor.sum <- apply(f.labor.var[,1:5], MARGIN = 2, FUN = sum,
                     agg.term = c("y", "f.labor.sum"), one.zero = TRUE)
f.employ.sum <- apply(f.employ.var[,1:5], MARGIN = 2, FUN = sum,
                      agg.term = c("y", "f.employ.sum"), one.zero = TRUE)
m.labor.sum <- apply(m.labor.var[,1:5], MARGIN = 2, FUN = sum,
                     agg.term = c("y", "m.labor.sum"), one.zero = TRUE)
m.employ.sum <- apply(m.employ.var[,1:5], MARGIN = 2, FUN = sum,
                      agg.term = c("y", "m.employ.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
labor.count=data.frame(estimate(tot16plus.var), 1.645*standard.error(tot16plus.var), standard.error(tot16plus.var)/estimate(tot16plus.var),
                       estimate(f.tot16plus.sum), 1.645*standard.error(f.tot16plus.sum), standard.error(f.tot16plus.sum)/estimate(f.tot16plus.sum),
                       estimate(m.tot16plus.sum), 1.645*standard.error(m.tot16plus.sum), standard.error(m.tot16plus.sum)/estimate(m.tot16plus.sum),
                       estimate(labor.sum), 1.645*standard.error(labor.sum), standard.error(labor.sum)/estimate(labor.sum),
                       estimate(employ.sum), 1.645*standard.error(employ.sum), standard.error(employ.sum)/estimate(employ.sum),
                       estimate(f.labor.sum), 1.645*standard.error(f.labor.sum), standard.error(f.labor.sum)/estimate(f.labor.sum),
                       estimate(f.employ.sum), 1.645*standard.error(f.employ.sum), standard.error(f.employ.sum)/estimate(f.employ.sum),
                       estimate(m.labor.sum), 1.645*standard.error(m.labor.sum), standard.error(m.labor.sum)/estimate(m.labor.sum),
                       estimate(m.employ.sum), 1.645*standard.error(m.employ.sum), standard.error(m.employ.sum)/estimate(m.employ.sum))
colnames(labor.count)=c("tot16plus", "tot16plus_moe", "tot16plus_cv",
                        "f.tot16plus", "f.tot16plus_moe", "f.tot16plus_cv",
                        "m.tot16plus", "m.tot16plus_moe", "m.tot16plus_cv",
                        "inlabor", "inlabor_moe", "inlabor_cv", 
                        "employed", "employed_moe", "employed_cv",
                        "f.inlabor", "f.inlabor_moe", "f.inlabor_cv", 
                        "f.employed", "f.employed_moe", "f.employed_cv",
                        "m.inlabor", "m.inlabor_moe", "m.inlabor_cv", 
                        "m.employed", "m.employed_moe", "m.employed_cv")

#Export counts to csv in year folder
setattr(labor.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                    "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                    "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                    "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                    "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                    "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                    "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(labor.count, file="./2015/hood/hood_labor15_cnt.csv")

#Calculate proportions

labor.pct = divide.acs(labor.sum, tot16plus.var,
                       method = "proportion")
employ.pct = divide.acs(employ.sum, labor.sum,
                        method = "proportion")
f.labor.pct = divide.acs(f.labor.sum, f.tot16plus.sum,
                         method = "proportion")
f.employ.pct = divide.acs(f.employ.sum, f.labor.sum,
                          method = "proportion")
m.labor.pct = divide.acs(m.labor.sum, m.tot16plus.sum,
                         method = "proportion")
m.employ.pct = divide.acs(m.employ.sum, m.labor.sum,
                          method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
labor.pct=data.frame(estimate(labor.pct), 1.645*standard.error(labor.pct), standard.error(labor.pct)/estimate(labor.pct),
                     estimate(employ.pct), 1.645*standard.error(employ.pct), standard.error(employ.pct)/estimate(employ.pct),
                     estimate(f.labor.pct), 1.645*standard.error(f.labor.pct), standard.error(f.labor.pct)/estimate(f.labor.pct),
                     estimate(f.employ.pct), 1.645*standard.error(f.employ.pct), standard.error(f.employ.pct)/estimate(f.employ.pct),
                     estimate(m.labor.pct), 1.645*standard.error(m.labor.pct), standard.error(m.labor.pct)/estimate(m.labor.pct),
                     estimate(m.employ.pct), 1.645*standard.error(m.employ.pct), standard.error(m.employ.pct)/estimate(m.employ.pct))
colnames(labor.pct)=c("inlabor", "inlabor_moe", "inlabor_cv", 
                      "employed", "employed_moe", "employed_cv",
                      "f.inlabor", "f.inlabor_moe", "f.inlabor_cv", 
                      "f.employed", "f.employed_moe", "f.employed_cv",
                      "m.inlabor", "m.inlabor_moe", "m.inlabor_cv", 
                      "m.employed", "m.employed_moe", "m.employed_cv")

#Export proportions to csv in year folder
setattr(labor.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                  "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                  "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                  "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                  "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                  "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                  "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(labor.pct, file="./2015/hood/hood_labor15_pct.csv")


# 19. EMPLOYEEES BY OCCUPATION ##########

#2015

#Fetch table fields of interest
total.var = acs.fetch(endyear = 2015, span = 5,
                      geography=c(sfhoods),
                      variable = "C24050_001")
manpro.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "C24050_015")
serv.var = acs.fetch(endyear = 2015, span = 5,
                     geography=c(sfhoods),
                     variable = "C24050_029")
saloff.var = acs.fetch(endyear = 2015, span = 5,
                       geography=c(sfhoods),
                       variable = "C24050_043")
conmaint.var = acs.fetch(endyear = 2015, span = 5,
                         geography=c(sfhoods),
                         variable = "C24050_057")
pdt.var = acs.fetch(endyear = 2015, span = 5,
                    geography=c(sfhoods),
                    variable = "C24050_071")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
empbyocc.count=data.frame(estimate(total.var), 1.645*standard.error(total.var), standard.error(total.var)/estimate(total.var),
                          estimate(manpro.var), 1.645*standard.error(manpro.var), standard.error(manpro.var)/estimate(manpro.var),
                          estimate(serv.var), 1.645*standard.error(serv.var), standard.error(serv.var)/estimate(serv.var),
                          estimate(saloff.var), 1.645*standard.error(saloff.var), standard.error(saloff.var)/estimate(saloff.var),
                          estimate(conmaint.var), 1.645*standard.error(conmaint.var), standard.error(conmaint.var)/estimate(conmaint.var),
                          estimate(pdt.var), 1.645*standard.error(pdt.var), standard.error(pdt.var)/estimate(pdt.var))                     

colnames(empbyocc.count)=c("total", "total_moe", "total_cv",
                           "manpro", "manpro_moe", "manpro_cv",
                           "serv", "serv_moe", "serv_cv",
                           "saloff", "saloff_moe", "saloff_cv",
                           "conmaint", "conmaint_moe", "conmaint_cv",
                           "pdt", "pdt_moe", "pdt_cv")

#Export counts to csv in year folder
setattr(empbyocc.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                       "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                       "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                       "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                       "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                       "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                       "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(empbyocc.count, file="./2015/hood/hood_empbyocc15_cnt.csv")

#Calculate proportions

manpro.pct = divide.acs(manpro.var, total.var,
                        method = "proportion")
serv.pct = divide.acs(serv.var, total.var,
                      method = "proportion")
saloff.pct = divide.acs(saloff.var, total.var,
                        method = "proportion")
conmaint.pct = divide.acs(conmaint.var, total.var,
                          method = "proportion")
pdt.pct = divide.acs(conmaint.var, total.var,
                     method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
empbyocc.pct=data.frame(estimate(manpro.pct), 1.645*standard.error(manpro.pct), standard.error(manpro.pct)/estimate(manpro.pct),
                        estimate(serv.pct), 1.645*standard.error(serv.pct), standard.error(serv.pct)/estimate(serv.pct),
                        estimate(saloff.pct), 1.645*standard.error(saloff.pct), standard.error(saloff.pct)/estimate(saloff.pct),
                        estimate(conmaint.pct), 1.645*standard.error(conmaint.pct), standard.error(conmaint.pct)/estimate(conmaint.pct),
                        estimate(pdt.pct), 1.645*standard.error(pdt.pct), standard.error(pdt.pct)/estimate(pdt.pct))

colnames(empbyocc.pct)=c("manpro", "manpro_moe", "manpro_cv",
                         "serv", "serv_moe", "serv_cv",
                         "saloff", "saloff_moe", "saloff_cv",
                         "conmaint", "conmaint_moe", "conmaint_cv",
                         "pdt", "pdt_moe", "pdt_cv")

#Export proportions to csv in year folder
setattr(empbyocc.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                     "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                     "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                     "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                     "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                     "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                     "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(empbyocc.pct, file="./2015/hood/hood_empbyocc15_pct.csv")


# 20. & 21. INCOME INEQUALITY (GINI, 80/20) ##########

#2015
acs.fetch(endyear = 2015, span = 1, table.number = "B19083", geography = cal)

#Fetch table fields of interest
gini.var = acs.fetch(endyear = 2015, span = 1,
                     geography= cal,
                     table.number ="B19083")
inc8020.var = acs.fetch(endyear = 2015, span = 1,
                        geography=cal,
                        table.number ="B19080")

#Calculate ratio
inc8020.rat = divide.acs(inc8020.var[,4], inc8020.var[,1],
                         method = "ratio")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
gini.df = data.frame(estimate(gini.var), 1.645*standard.error(gini.var), standard.error(gini.var)/estimate(gini.var))
colnames(gini.df)=c("gini", "gini_moe", "gini_cv")

inc8020.df = data.frame(estimate(inc8020.rat), 1.645*standard.error(inc8020.rat), standard.error(inc8020.rat)/estimate(inc8020.rat))
colnames(inc8020.df)=c("inc8020", "inc8020_moe", "inc8020_cv")

inc8020 = data.frame(estimate(inc8020.var), 1.645*standard.error(inc8020.var), standard.error(inc8020.var)/estimate(inc8020.var))

#Export counts to csv in year folder
write.csv(gini.df, file="./2015/county/county_gini15.csv")
write.csv(inc8020.df, file="./2015/county/county_inc8020_15.csv")
write.csv(inc8020, file="./2015/county/county_inc8020_15_strata.csv")


# 22. HOUSING UNITS & VACANCY ##########

#2015

#Fetch table
hu.count = acs.fetch(endyear = 2015,
                     geography=sfhoods,
                     table.number = "B25002")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
hu.cnt=data.frame(estimate(hu.count), 1.645*standard.error(hu.count), 
                  standard.error(hu.count)/estimate(hu.count))
colnames(hu.cnt)=c("hu", "occ", "vac", 
                   "hu_moe", "occ_moe", "vac_moe",
                   "hu_cv", "occ_cv", "vac_cv")

#Export counts to csv in year folder
setattr(hu.cnt, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                               "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                               "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                               "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                               "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                               "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                               "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(hu.cnt, file="./2015/hood/hood_hu15_cnt.csv")

#Calculate proportions
occ.pct = divide.acs(hu.count[,2], hu.count[,1],
                     method = "proportion")
vac.pct = divide.acs(hu.count[,3], hu.count[,1],
                     method = "proportion")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names 
status.pct=data.frame(estimate(occ.pct), 1.645*standard.error(occ.pct), standard.error(occ.pct)/estimate(occ.pct),
                      estimate(vac.pct), 1.645*standard.error(vac.pct), standard.error(vac.pct)/estimate(vac.pct))
colnames(status.pct)=c("occ", "occ_moe", "occ_cv", 
                       "vac", "vac_moe", "vac_cv")

#Export proportions to csv in year folder
setattr(status.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                   "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                   "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                   "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                   "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                   "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                   "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(status.pct, file="./2015/hood/hood_hu15_pct.csv")


# 23. VACANCY STATUS ##########

#2015

#Fetch table fields of interest
vachu.var = acs.fetch(endyear = 2015, span = 5,
                      geography=c(sfhoods),
                      variable = "B25004_001")
forrent.var = acs.fetch(endyear = 2015, span = 5,
                        geography=c(sfhoods),
                        variable = "B25004_002")
sale.var = acs.fetch(endyear = 2015, span = 5,
                     geography=c(sfhoods),
                     variable = "B25004_004")
notyetocc.var = acs.fetch(endyear = 2015, span = 5,
                          geography=c(sfhoods),
                          variable = c("B25004_003", "B25004_005"))
seasonal.var = acs.fetch(endyear = 2015, span = 5,
                         geography=c(sfhoods),
                         variable = "B25004_006")
migrant.var = acs.fetch(endyear = 2015, span = 5,
                        geography=c(sfhoods),
                        variable = "B25004_007")
other.var = acs.fetch(endyear = 2015, span = 5,
                      geography=c(sfhoods),
                      variable = "B25004_008")

#Sum columns
notyetocc.sum <- apply(notyetocc.var, MARGIN = 2, FUN = sum,
                       agg.term = c("y", "notyetocc.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
vacancy.count=data.frame(estimate(vachu.var), 1.645*standard.error(vachu.var), standard.error(vachu.var)/estimate(vachu.var),
                         estimate(forrent.var), 1.645*standard.error(forrent.var), standard.error(forrent.var)/estimate(forrent.var),
                         estimate(sale.var), 1.645*standard.error(sale.var), standard.error(sale.var)/estimate(sale.var),
                         estimate(notyetocc.sum), 1.645*standard.error(notyetocc.sum), standard.error(notyetocc.sum)/estimate(notyetocc.sum),
                         estimate(seasonal.var), 1.645*standard.error(seasonal.var), standard.error(seasonal.var)/estimate(seasonal.var),
                         estimate(migrant.var), 1.645*standard.error(migrant.var), standard.error(migrant.var)/estimate(migrant.var),
                         estimate(other.var), 1.645*standard.error(other.var), standard.error(other.var)/estimate(other.var))                     

colnames(vacancy.count)=c("vachu", "vachu_moe", "vachu_cv",
                          "forrent", "forrent_moe", "forrent_cv",
                          "sale", "sale_moe", "sale_cv",
                          "notyetocc", "notyetocc_moe", "notyetocc_cv",
                          "seasonal", "seasonal_moe", "seasonal_cv",
                          "migrant", "migrant_moe", "migrant_cv",
                          "other", "other_moe", "other_cv")

#Export counts to csv in year folder
setattr(vacancy.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(vacancy.count, file="./2015/hood/hood_vacancy15_cnt.csv")

#Calculate proportions

forrent.pct = divide.acs(forrent.var, vachu.var,
                         method = "proportion")
sale.pct = divide.acs(sale.var, vachu.var,
                      method = "proportion")
notyetocc.pct = divide.acs(notyetocc.sum, vachu.var,
                           method = "proportion")
seasonal.pct = divide.acs(seasonal.var, vachu.var,
                          method = "proportion")
migrant.pct = divide.acs(migrant.var, vachu.var,
                         method = "proportion")
other.pct = divide.acs(other.var, vachu.var,
                       method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
vacancy.pct=data.frame(estimate(forrent.pct), 1.645*standard.error(forrent.pct), standard.error(forrent.pct)/estimate(forrent.pct),
                       estimate(sale.pct), 1.645*standard.error(sale.pct), standard.error(sale.pct)/estimate(sale.pct),
                       estimate(notyetocc.pct), 1.645*standard.error(notyetocc.pct), standard.error(notyetocc.pct)/estimate(notyetocc.pct),
                       estimate(seasonal.pct), 1.645*standard.error(seasonal.pct), standard.error(seasonal.pct)/estimate(seasonal.pct),
                       estimate(migrant.pct), 1.645*standard.error(migrant.pct), standard.error(migrant.pct)/estimate(migrant.pct),
                       estimate(other.pct), 1.645*standard.error(other.pct), standard.error(other.pct)/estimate(other.pct))

colnames(vacancy.pct)=c( "forrent", "forrent_moe", "forrent_cv",
                         "sale", "sale_moe", "sale_cv",
                         "notyetocc", "notyetocc_moe", "notyetocc_cv",
                         "seasonal", "seasonal_moe", "seasonal_cv",
                         "migrant", "migrant_moe", "migrant_cv",
                         "other", "other_moe", "other_cv")

#Export proportions to csv in year folder
setattr(vacancy.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                    "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                    "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                    "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                    "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                    "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                    "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(vacancy.pct, file="./2015/hood/hood_vacancy15_pct.csv")


# 24. HOUSING TENURE ##########

#2015

#Fetch table fields of interest
tenure.var = acs.fetch(endyear = 2015,
                       geography=c(sfhoods),
                       table.number = "B25003")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
tenure.count=data.frame(estimate(tenure.var), 1.645*standard.error(tenure.var), 
                        standard.error(tenure.var)/estimate(tenure.var))
colnames(tenure.count)=c("total", "own", "rent",
                         "total_moe", "own_moe", "rent_moe",
                         "total_cv", "own_cv", "rent_cv")

#Export counts to csv in year folder
setattr(tenure.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                     "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                     "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                     "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                     "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                     "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                     "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(tenure.count, file="./2015/hood/hood_tenure15_cnt.csv")


#Calculate proportions
own.pct = divide.acs(tenure.var[,2], tenure.var[,1],
                     method = "proportion")
rent.pct = divide.acs(tenure.var[,3], tenure.var[,1],
                      method = "proportion")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names 
tenure.pct=data.frame(estimate(own.pct), 1.645*standard.error(own.pct), standard.error(own.pct)/estimate(own.pct),
                      estimate(rent.pct), 1.645*standard.error(rent.pct), standard.error(rent.pct)/estimate(rent.pct))
colnames(tenure.pct)=c("own", "own_moe", "own_cv", 
                       "rent", "rent_moe", "rent_cv")

#Export proportions to csv in year folder
setattr(tenure.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                   "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                   "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                   "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                   "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                   "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                   "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(tenure.pct, file="./2015/hood/hood_tenure15_pct.csv")


# 25. RENT BURDEN ##########

#2015

#Fetch table fields of interest
total.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = "B25070_001")
lt30pct.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = c("B25070_002", "B25070_003", "B25070_004","B25070_005","B25070_006"))
gte30pct.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B25070_007", "B25070_008", "B25070_009","B25070_010"))
gte50pct.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = "B25070_010")					 
# Sum columns
lt30pct.sum <- apply(lt30pct.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "lt30pct.sum"), one.zero = TRUE)
gte30pct.sum <- apply(gte30pct.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "gte30pct.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
rentburd.count=data.frame(estimate(total.var), 1.645*standard.error(total.var), standard.error(total.var)/estimate(total.var),
                          estimate(lt30pct.sum), 1.645*standard.error(lt30pct.sum), standard.error(lt30pct.sum)/estimate(lt30pct.sum),
                          estimate(gte30pct.sum), 1.645*standard.error(gte30pct.sum), standard.error(gte30pct.sum)/estimate(gte30pct.sum),
                          estimate(gte50pct.var), 1.645*standard.error(gte50pct.var), standard.error(gte50pct.var)/estimate(gte50pct.var))                     

colnames(rentburd.count)=c("total", "total_moe", "total_cv", 
                           "lt30pct", "lt30pct_moe", "lt30pct_cv", 
                           "gte30pct", "gte30pct_moe", "gte30pct_cv", 
                           "gte50pct", "gte50pct_moe", "gte50pct_cv")

#Export counts to csv in year folder
setattr(rentburd.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                       "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                       "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                       "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                       "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                       "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                       "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(rentburd.count, file="./2015/hood/hood_rentburd15_cnt.csv")

#Calculate proportions

lt30pct.pct = divide.acs(lt30pct.sum, total.var,
                         method = "proportion")
gte30pct.pct = divide.acs(gte30pct.sum, total.var,
                          method = "proportion")
gte50pct.pct = divide.acs(gte50pct.var, total.var,
                          method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
rentburd.pct=data.frame(estimate(lt30pct.pct), 1.645*standard.error(lt30pct.pct), standard.error(lt30pct.pct)/estimate(lt30pct.pct),
                        estimate(gte30pct.pct), 1.645*standard.error(gte30pct.pct), standard.error(gte30pct.pct)/estimate(gte30pct.pct),
                        estimate(gte50pct.pct), 1.645*standard.error(gte50pct.pct), standard.error(gte50pct.pct)/estimate(gte50pct.pct))

colnames(rentburd.pct)=c("lt30pct", "lt30pct_moe", "lt30pct_cv", 
                         "gte30pct", "gte30pct_moe", "gte30pct_cv", 
                         "gte50pct", "gte50pct_moe", "gte50pct_cv")

#Export proportions to csv in year folder
setattr(rentburd.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                     "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                     "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                     "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                     "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                     "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                     "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(rentburd.pct, file="./2015/hood/hood_rentburd15_pct.csv")


# 26. RENT BURDEN BY INCOME LEVEL ##########

#2015

#Fetch table fields of interest
totrnhh.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = "B25074_001")
lt20k.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = c("B25074_002", "B25074_011"))
lt20k50.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = c("B25074_009", "B25074_018"))
d20to49k.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B25074_020", "B25074_029"))
d20to49k50.var = acs.fetch(endyear = 2015,
                           geography=c(sfhoods),
                           variable = c("B25074_027", "B25074_036"))
d50to99k.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B25074_038", "B25074_047"))
d50to99k50.var = acs.fetch(endyear = 2015,
                           geography=c(sfhoods),
                           variable = c("B25074_045", "B25074_054"))
d100kplk.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = "B25074_056")
d100kpl50.var = acs.fetch(endyear = 2015,
                          geography=c(sfhoods),
                          variable = "B25074_063")

# Sum columns
lt20k.sum <- apply(lt20k.var, MARGIN = 2, FUN = sum,
                   agg.term = c("y", "lt20k.sum"), one.zero = TRUE)
lt20k50.sum <- apply(lt20k50.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "lt20k50.sum"), one.zero = TRUE)
d20to49k.sum <- apply(d20to49k.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "d20to49k.sum"), one.zero = TRUE)
d20to49k50.sum <- apply(d20to49k50.var, MARGIN = 2, FUN = sum,
                        agg.term = c("y", "d20to49k50.sum"), one.zero = TRUE)
d50to99k.sum <- apply(d50to99k.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "d50to99k.sum"), one.zero = TRUE)
d50to99k50.sum <- apply(d50to99k50.var, MARGIN = 2, FUN = sum,
                        agg.term = c("y", "d50to99k50.sum"), one.zero = TRUE)
d100kplk.sum <- apply(d100kplk.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "d100kplk.sum"), one.zero = TRUE)
d100kpl50.sum <- apply(d100kpl50.var, MARGIN = 2, FUN = sum,
                       agg.term = c("y", "d100kpl50.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
increntburd.count=data.frame(estimate(totrnhh.var), 1.645*standard.error(totrnhh.var), standard.error(totrnhh.var)/estimate(totrnhh.var),
                             estimate(lt20k.sum), 1.645*standard.error(lt20k.sum), standard.error(lt20k.sum)/estimate(lt20k.sum),
                             estimate(lt20k50.sum), 1.645*standard.error(lt20k50.sum), standard.error(lt20k50.sum)/estimate(lt20k50.sum),
                             estimate(d20to49k.sum), 1.645*standard.error(d20to49k.sum), standard.error(d20to49k.sum)/estimate(d20to49k.sum),
                             estimate(d20to49k50.sum), 1.645*standard.error(d20to49k50.sum), standard.error(d20to49k50.sum)/estimate(d20to49k50.sum),
                             estimate(d50to99k.sum), 1.645*standard.error(d50to99k.sum), standard.error(d50to99k.sum)/estimate(d50to99k.sum),
                             estimate(d50to99k50.sum), 1.645*standard.error(d50to99k50.sum), standard.error(d50to99k50.sum)/estimate(d50to99k50.sum),
                             estimate(d100kplk.sum), 1.645*standard.error(d100kplk.sum), standard.error(d100kplk.sum)/estimate(d100kplk.sum),
                             estimate(d100kpl50.sum), 1.645*standard.error(d100kpl50.sum), standard.error(d100kpl50.sum)/estimate(d100kpl50.sum))                     

colnames(increntburd.count)=c("totrnhh", "totrnhh_moe", "totrnhh_cv", 
                              "lt20k", "lt20k_moe", "lt20k_cv", 
                              "lt20k50", "lt20k50_moe", "lt20k50_cv", 
                              "d20to49k", "d20to49k_moe", "d20to49k_cv",
                              "d20to49k50", "d20to49k50_moe", "d20to49k50_cv", 
                              "d50to99k", "d50to99k_moe", "d50to99k_cv", 
                              "d50to99k50", "d50to99k50_moe", "d50to99k50_cv",
                              "d100kplk", "d100kplk_moe", "d100kplk_cv",
                              "d100kpl50", "d100kpl50_moe", "d100kpl50_cv")

#Export counts to csv in year folder
setattr(increntburd.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                          "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                          "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                          "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                          "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                          "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                          "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(increntburd.count, file="./2015/hood/hood_increntburd15_cnt.csv")

#Calculate proportions

lt20k50.pct = divide.acs(lt20k50.sum, lt20k.sum,
                         method = "proportion")
d20to49k50.pct = divide.acs(d20to49k50.sum, d20to49k.sum,
                            method = "proportion")
d50to99k50.pct = divide.acs(d50to99k50.sum, d50to99k.sum,
                            method = "proportion")
d100kpl50.pct = divide.acs(d100kpl50.sum, d100kplk.sum,
                           method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
increntburd.pct=data.frame(estimate(lt20k50.pct), 1.645*standard.error(lt20k50.pct), standard.error(lt20k50.pct)/estimate(lt20k50.pct),
                           estimate(d20to49k50.pct), 1.645*standard.error(d20to49k50.pct), standard.error(d20to49k50.pct)/estimate(d20to49k50.pct),
                           estimate(d50to99k50.pct), 1.645*standard.error(d50to99k50.pct), standard.error(d50to99k50.pct)/estimate(d50to99k50.pct),
                           estimate(d100kpl50.pct), 1.645*standard.error(d100kpl50.pct), standard.error(d100kpl50.pct)/estimate(d100kpl50.pct))

colnames(increntburd.pct)=c("lt20k50", "lt20k50_moe", "lt20k50_cv", 
                            "d20to49k50", "d20to49k50_moe", "d20to49k50_cv", 
                            "d50to99k50", "d50to99k50_moe", "d50to99k50_cv",
                            "d100kpl50", "d100kpl50_moe", "d100kpl50_cv")

#Export proportions to csv in year folder
setattr(increntburd.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                        "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                        "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                        "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                        "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                        "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                        "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(increntburd.pct, file="./2015/hood/hood_increntburd15_pct.csv")


# 27. OVERCROWDING ##########

#2015

#Fetch table fields of interest
total.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = "B25014_001")
notcrowd.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B25014_003", "B25014_004", "B25014_009","B25014_010"))
crowd.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = c("B25014_005", "B25014_006", "B25014_007","B25014_011", "B25014_012", "B25014_013"))

# Sum columns
notcrowd.sum <- apply(notcrowd.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "notcrowd.sum"), one.zero = TRUE)
crowd.sum <- apply(crowd.var, MARGIN = 2, FUN = sum,
                   agg.term = c("y", "crowd.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
crowd.count=data.frame(estimate(total.var), 1.645*standard.error(total.var), standard.error(total.var)/estimate(total.var),
                       estimate(notcrowd.sum), 1.645*standard.error(notcrowd.sum), standard.error(notcrowd.sum)/estimate(notcrowd.sum),
                       estimate(crowd.sum), 1.645*standard.error(crowd.sum), standard.error(crowd.sum)/estimate(crowd.sum))                     

colnames(crowd.count)=c("total", "total_moe", "total_cv", 
                        "notcrowd", "notcrowd_moe", "notcrowd_cv", 
                        "crowd", "crowd_moe", "crowd_cv")

#Export counts to csv in year folder
setattr(crowd.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                    "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                    "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                    "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                    "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                    "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                    "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(crowd.count, file="./2015/hood/hood_crowded15_cnt.csv")

#Calculate proportions

notcrowd.pct = divide.acs(notcrowd.sum, total.var,
                          method = "proportion")
crowd.pct = divide.acs(crowd.sum, total.var,
                       method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
crowded.pct=data.frame(estimate(notcrowd.pct), 1.645*standard.error(notcrowd.pct), standard.error(notcrowd.pct)/estimate(notcrowd.pct),
                       estimate(crowd.pct), 1.645*standard.error(crowd.pct), standard.error(crowd.pct)/estimate(crowd.pct))

colnames(crowded.pct)=c("notcrowd", "notcrowd_moe", "notcrowd_cv", 
                        "crowd", "crowd_moe", "crowd_cv")

#Export proportions to csv in year folder
setattr(crowded.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                    "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                    "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                    "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                    "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                    "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                    "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(crowded.pct, file="./2015/hood/hood_crowded15_pct.csv")


# 28. UNITS IN STRUCTURE ##########

#2015

#Fetch table fields of interest
tothu.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = "B25024_001")
one.var = acs.fetch(endyear = 2015,
                    geography=c(sfhoods),
                    variable = c("B25024_002"), "B25024_003")
twotofour.var = acs.fetch(endyear = 2015,
                          geography=c(sfhoods),
                          variable = c("B25024_004", "B25024_005"))
fivetonine.var = acs.fetch(endyear = 2015,
                           geography=c(sfhoods),
                           variable = "B25024_006")
tento19.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = "B25024_007")
twentyplus.var = acs.fetch(endyear = 2015,
                           geography=c(sfhoods),
                           variable = c("B25024_008", "B25024_009"))
other.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = c("B25024_010", "B25024_011"))

# Sum columns
one.sum <- apply(one.var, MARGIN = 2, FUN = sum,
                 agg.term = c("y", "one.sum"), one.zero = TRUE)
twotofour.sum <- apply(twotofour.var, MARGIN = 2, FUN = sum,
                       agg.term = c("y", "twotofour.sum"), one.zero = TRUE)
twentyplus.sum <- apply(twentyplus.var, MARGIN = 2, FUN = sum,
                        agg.term = c("y", "twentyplus.sum"), one.zero = TRUE)
other.sum <- apply(other.var, MARGIN = 2, FUN = sum,
                   agg.term = c("y", "other.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
units.count=data.frame(estimate(tothu.var), 1.645*standard.error(tothu.var), standard.error(tothu.var)/estimate(tothu.var),
                       estimate(one.sum), 1.645*standard.error(one.sum), standard.error(one.sum)/estimate(one.sum),
                       estimate(twotofour.sum), 1.645*standard.error(twotofour.sum), standard.error(twotofour.sum)/estimate(twotofour.sum),                     
                       estimate(fivetonine.var), 1.645*standard.error(fivetonine.var), standard.error(fivetonine.var)/estimate(fivetonine.var),
                       estimate(tento19.var), 1.645*standard.error(tento19.var), standard.error(tento19.var)/estimate(tento19.var),
                       estimate(twentyplus.sum), 1.645*standard.error(twentyplus.sum), standard.error(twentyplus.sum)/estimate(twentyplus.sum),
                       estimate(other.sum), 1.645*standard.error(other.sum), standard.error(other.sum)/estimate(other.sum))

colnames(units.count)=c("tothu", "tothu_moe", "tothu_cv", 
                        "one", "one_moe", "one_cv", 
                        "twotofour", "twotofour_moe", "twotofour_cv",
                        "fivetonine", "fivetonine_moe", "fivetonine_cv", 
                        "tento19", "tento19_moe", "tento19_cv", 
                        "twentyplus", "twentyplus_moe", "twentyplus_cv",
                        "other", "other_moe", "other_cv")

#Export counts to csv in year folder
setattr(units.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                    "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                    "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                    "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                    "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                    "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                    "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(units.count, file="./2015/hood/hood_units15_cnt.csv")

#Calculate proportions

one.pct = divide.acs(one.sum, tothu.var,
                     method = "proportion")
twotofour.pct = divide.acs(twotofour.sum, tothu.var,
                           method = "proportion")
fivetonine.pct = divide.acs(fivetonine.var, tothu.var,
                            method = "proportion")
tento19.pct = divide.acs(tento19.var, tothu.var,
                         method = "proportion")
twentyplus.pct = divide.acs(twentyplus.sum, tothu.var,
                            method = "proportion")
other.pct = divide.acs(other.sum, tothu.var,
                       method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
units.pct=data.frame(estimate(one.pct), 1.645*standard.error(one.pct), standard.error(one.pct)/estimate(one.pct),
                     estimate(twotofour.pct), 1.645*standard.error(twotofour.pct), standard.error(twotofour.pct)/estimate(twotofour.pct),                     
                     estimate(fivetonine.pct), 1.645*standard.error(fivetonine.pct), standard.error(fivetonine.pct)/estimate(fivetonine.pct),
                     estimate(tento19.pct), 1.645*standard.error(tento19.pct), standard.error(tento19.pct)/estimate(tento19.pct),
                     estimate(twentyplus.pct), 1.645*standard.error(twentyplus.pct), standard.error(twentyplus.pct)/estimate(twentyplus.pct),
                     estimate(other.pct), 1.645*standard.error(other.pct), standard.error(other.pct)/estimate(other.pct))

colnames(units.pct)=c("one", "one_moe", "one_cv", 
                      "twotofour", "twotofour_moe", "twotofour_cv",
                      "fivetonine", "fivetonine_moe", "fivetonine_cv", 
                      "tento19", "tento19_moe", "tento19_cv", 
                      "twentyplus", "twentyplus_moe", "twentyplus_cv",
                      "other", "other_moe", "other_cv")

#Export proportions to csv in year folder
setattr(units.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                  "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                  "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                  "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                  "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                  "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                  "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(units.pct, file="./2015/hood/hood_units15_pct.csv")

# 29. BEDROOMS IN UNIT ##########

#2015 

totalhu.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = "B25041_001")
zero.var = acs.fetch(endyear = 2015,
                     geography=c(sfhoods),
                     variable = "B25041_002")
one.var = acs.fetch(endyear = 2015,
                    geography=c(sfhoods),
                    variable = "B25041_003")
two.var = acs.fetch(endyear = 2015,
                    geography=c(sfhoods),
                    variable = "B25041_004")
three.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = "B25041_005")
fourplus.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         variable = c("B25041_006", "B25041_007"))

# Sum columns
fourplus.sum <- apply(fourplus.var, MARGIN = 2, FUN = sum,
                      agg.term = c("y", "fourplus.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
bedrooms.count=data.frame(estimate(totalhu.var), 1.645*standard.error(totalhu.var), standard.error(totalhu.var)/estimate(totalhu.var),
                          estimate(zero.var), 1.645*standard.error(zero.var), standard.error(zero.var)/estimate(zero.var),
                          estimate(one.var), 1.645*standard.error(one.var), standard.error(one.var)/estimate(one.var),
                          estimate(two.var), 1.645*standard.error(two.var), standard.error(two.var)/estimate(two.var),
                          estimate(three.var), 1.645*standard.error(three.var), standard.error(three.var)/estimate(three.var),
                          estimate(fourplus.sum), 1.645*standard.error(fourplus.sum), standard.error(fourplus.sum)/estimate(fourplus.sum))                     

colnames(bedrooms.count)=c("totalhu", "totalhu_moe", "totalhu_cv", 
                           "zero", "zero_moe", "zero_cv",
                           "one", "one_moe", "one_cv",
                           "two", "two_moe", "two_cv", 
                           "three", "three_moe", "three_cv",
                           "fourplus", "fourplus_moe", "fourplus_cv")

#Export counts to csv in year folder
setattr(bedrooms.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                       "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                       "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                       "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                       "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                       "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                       "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(bedrooms.count, file="./2015/hood/hood_bedrooms15_cnt.csv")

#Calculate proportions

zero.pct = divide.acs(zero.var, totalhu.var,
                      method = "proportion")
one.pct = divide.acs(one.var, totalhu.var,
                     method = "proportion")
two.pct = divide.acs(two.var, totalhu.var,
                     method = "proportion")
three.pct = divide.acs(three.var, totalhu.var,
                       method = "proportion")
fourplus.pct = divide.acs(fourplus.sum, totalhu.var,
                          method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
bedrooms.pct=data.frame(estimate(zero.pct), 1.645*standard.error(zero.pct), standard.error(zero.pct)/estimate(zero.pct),
                        estimate(one.pct), 1.645*standard.error(one.pct), standard.error(one.pct)/estimate(one.pct),
                        estimate(two.pct), 1.645*standard.error(two.pct), standard.error(two.pct)/estimate(two.pct),
                        estimate(three.pct), 1.645*standard.error(three.pct), standard.error(three.pct)/estimate(three.pct),
                        estimate(fourplus.pct), 1.645*standard.error(fourplus.pct), standard.error(fourplus.pct)/estimate(fourplus.pct))

colnames(bedrooms.pct)=c("zero", "zero_moe", "zero_cv",
                         "one", "one_moe", "one_cv",
                         "two", "two_moe", "two_cv", 
                         "three", "three_moe", "three_cv",
                         "fourplus", "fourplus_moe", "fourplus_cv")

#Export proportions to csv in year folder
setattr(bedrooms.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                     "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                     "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                     "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                     "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                     "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                     "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(bedrooms.pct, file="./2015/hood/hood_bedrooms15_pct.csv")

# 30. VEHICLES AVAILABLE ##########

#2015

#Fetch table fields of interest
totalhh.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = "B25044_001")
nocar.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = c("B25044_003", "B25044_010"))
yescar.var = acs.fetch(endyear = 2015,
                       geography=c(sfhoods),
                       variable = c("B25044_004", "B25044_005", "B25044_006", "B25044_007", "B25044_008",
                                    "B25044_011", "B25044_012", "B25044_013", "B25044_014", "B25044_015"))

# Sum columns
nocar.sum <- apply(nocar.var, MARGIN = 2, FUN = sum,
                   agg.term = c("y", "nocar.sum"), one.zero = TRUE)
yescar.sum <- apply(yescar.var, MARGIN = 2, FUN = sum,
                    agg.term = c("y", "yescar.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
vehicles.count=data.frame(estimate(totalhh.var), 1.645*standard.error(totalhh.var), standard.error(totalhh.var)/estimate(totalhh.var),
                          estimate(nocar.sum), 1.645*standard.error(nocar.sum), standard.error(nocar.sum)/estimate(nocar.sum),
                          estimate(yescar.sum), 1.645*standard.error(yescar.sum), standard.error(yescar.sum)/estimate(yescar.sum))                     

colnames(vehicles.count)=c("totalhh", "totalhh_moe", "totalhh_cv", 
                           "nocar", "nocar_moe", "nocar_cv",
                           "yescar", "yescar_moe", "yescar_cv")

#Export counts to csv in year folder
setattr(vehicles.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                       "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                       "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                       "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                       "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                       "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                       "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(vehicles.count, file="./2015/hood/hood_vehicles15_cnt.csv")

#Calculate proportions

nocar.pct = divide.acs(nocar.sum, totalhh.var,
                       method = "proportion")
yescar.pct = divide.acs(yescar.sum, totalhh.var,
                        method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
vehicles.pct=data.frame(estimate(nocar.pct), 1.645*standard.error(nocar.pct), standard.error(nocar.pct)/estimate(nocar.pct),
                        estimate(yescar.pct), 1.645*standard.error(yescar.pct), standard.error(yescar.pct)/estimate(yescar.pct))

colnames(vehicles.pct)=c("nocar", "nocar_moe", "nocar_cv", 
                         "yescar", "yescar_moe", "yescar_cv")

#Export proportions to csv in year folder
setattr(vehicles.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                     "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                     "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                     "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                     "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                     "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                     "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(vehicles.pct, file="./2015/hood/hood_vehicles15_pct.csv")


# 31. VEHICLES PER CAPITA ##########

acs.lookup(endyear = 2015, span = 5, table.number = "B25046")
#2015

#Fetch table fields of interest
totpop.var = acs.fetch(endyear = 2015,
                       geography=c(sfhoods),
                       variable = "B01003_001")
totcars.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = "B25046")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
vehicpcap.count=data.frame(estimate(totpop.var), 1.645*standard.error(totpop.var), standard.error(totpop.var)/estimate(totpop.var),
                           estimate(totcars.var), 1.645*standard.error(totcars.var), standard.error(totcars.var)/estimate(totcars.var))                     

colnames(vehicpcap.count)=c("totpop", "totpop_moe", "totpop_cv", 
                            "totvehic", "totvehic_moe", "totvehic_cv")

#Export counts to csv in year folder
setattr(vehicpcap.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                        "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                        "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                        "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                        "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                        "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                        "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(vehicpcap.count, file="./2015/hood/hood_vehicpcap15_cnt.csv")

#Calculate proportions

vehicpcap.pct = divide.acs(totcars.var, totpop.var,
                           method = "ratio")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
vehicpcap.pct=data.frame(estimate(vehicpcap.pct), 1.645*standard.error(vehicpcap.pct), standard.error(vehicpcap.pct)/estimate(vehicpcap.pct))

colnames(vehicpcap.pct)=c("vehicpcap", "vehicpcap_moe", "vehicpcap_cv")

#Export proportions to csv in year folder
setattr(vehicpcap.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(vehicpcap.pct, file="./2015/hood/hood_vehicpcap15_pcap.csv")


# 32. COMMUTE MODE ##########

#2015

#Fetch table fields of interest
total.var = acs.fetch(endyear = 2015, span = 5,
                      geography=c(sfhoods),
                      variable = "B08301_001")
car.var = acs.fetch(endyear = 2015, span = 5,
                    geography=c(sfhoods),
                    variable = "B08301_002")
drvalone.var = acs.fetch(endyear = 2015, span = 5,
                         geography=c(sfhoods),
                         variable = "B08301_003")
carpool.var = acs.fetch(endyear = 2015, span = 5,
                        geography=c(sfhoods),
                        variable = "B08301_004")
transit.var = acs.fetch(endyear = 2015, span = 5,
                        geography=c(sfhoods),
                        variable = "B08301_010")
bike.var = acs.fetch(endyear = 2015, span = 5,
                     geography=c(sfhoods),
                     variable = "B08301_018")
walk.var = acs.fetch(endyear = 2015, span = 5,
                     geography=c(sfhoods),
                     variable = "B08301_019")
other.var = acs.fetch(endyear = 2015, span = 5,
                      geography=c(sfhoods),
                      variable = "B08301_020")
wkathome.var = acs.fetch(endyear = 2015, span = 5,
                         geography=c(sfhoods),
                         variable = "B08301_021")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
commute.count=data.frame(estimate(total.var), 1.645*standard.error(total.var), standard.error(total.var)/estimate(total.var),
                         estimate(car.var), 1.645*standard.error(car.var), standard.error(car.var)/estimate(car.var),
                         estimate(drvalone.var), 1.645*standard.error(drvalone.var), standard.error(drvalone.var)/estimate(drvalone.var),
                         estimate(carpool.var), 1.645*standard.error(carpool.var), standard.error(carpool.var)/estimate(carpool.var),
                         estimate(transit.var), 1.645*standard.error(transit.var), standard.error(transit.var)/estimate(transit.var),
                         estimate(bike.var), 1.645*standard.error(bike.var), standard.error(bike.var)/estimate(bike.var),
                         estimate(walk.var), 1.645*standard.error(walk.var), standard.error(walk.var)/estimate(walk.var),
                         estimate(other.var), 1.645*standard.error(other.var), standard.error(other.var)/estimate(other.var),
                         estimate(wkathome.var), 1.645*standard.error(wkathome.var), standard.error(wkathome.var)/estimate(wkathome.var))                     

colnames(commute.count)=c("total", "total_moe", "total_cv",
                          "car", "car_moe", "car_cv",
                          "drvalone", "drvalone_moe", "drvalone_cv",
                          "carpool", "carpool_moe", "carpool_cv",
                          "transit", "transit_moe", "transit_cv",
                          "bike", "bike_moe", "bike_cv",
                          "walk", "walk_moe", "walk_cv",
                          "other", "other_moe", "other_cv",
                          "wkathome", "wkathome_moe", "wkathome_cv")

#Export counts to csv in year folder
setattr(commute.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(commute.count, file="./2015/hood/hood_commute15_cnt.csv")

#Calculate proportions

car.pct = divide.acs(car.var, total.var,
                     method = "proportion")
drvalone.pct = divide.acs(drvalone.var, total.var,
                          method = "proportion")
carpool.pct = divide.acs(carpool.var, total.var,
                         method = "proportion")
transit.pct = divide.acs(transit.var, total.var,
                         method = "proportion")
bike.pct = divide.acs(bike.var, total.var,
                      method = "proportion")
walk.pct = divide.acs(walk.var, total.var,
                      method = "proportion")
other.pct = divide.acs(other.var, total.var,
                       method = "proportion")
wkathome.pct = divide.acs(wkathome.var, total.var,
                          method = "proportion")

#Prepare data frame with percent estimates, 90%MOE, and CV - with proper column names
commute.pct=data.frame(estimate(car.pct), 1.645*standard.error(car.pct), standard.error(car.pct)/estimate(car.pct),
                       estimate(drvalone.pct), 1.645*standard.error(drvalone.pct), standard.error(drvalone.pct)/estimate(drvalone.pct),
                       estimate(carpool.pct), 1.645*standard.error(carpool.pct), standard.error(carpool.pct)/estimate(carpool.pct),
                       estimate(transit.pct), 1.645*standard.error(transit.pct), standard.error(transit.pct)/estimate(transit.pct),
                       estimate(bike.pct), 1.645*standard.error(bike.pct), standard.error(bike.pct)/estimate(bike.pct),
                       estimate(walk.pct), 1.645*standard.error(walk.pct), standard.error(walk.pct)/estimate(walk.pct),
                       estimate(other.pct), 1.645*standard.error(other.pct), standard.error(other.pct)/estimate(other.pct),
                       estimate(wkathome.pct), 1.645*standard.error(wkathome.pct), standard.error(wkathome.pct)/estimate(wkathome.pct))

colnames(commute.pct)=c("car", "car_moe", "car_cv",
                        "drvalone", "drvalone_moe", "drvalone_cv",
                        "carpool", "carpool_moe", "carpool_cv",
                        "transit", "transit_moe", "transit_cv",
                        "bike", "bike_moe", "bike_cv",
                        "walk", "walk_moe", "walk_cv",
                        "other", "other_moe", "other_cv",
                        "wkathome", "wkathome_moe", "wkathome_cv")

#Export proportions to csv in year folder
setattr(commute.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                    "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                    "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                    "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                    "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                    "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                    "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(commute.pct, file="./2015/hood/hood_commute15_pct.csv")


# 33. MEDIAN AGE ##########

#2015

#Fetch table fields of interest
mage.var = acs.fetch(endyear = 2015,
                     geography=sf_ct,
                     table.number = "B01002")

age.var = acs.fetch(endyear = 2015,
                    geography=c(sfhoods),
                    table.number = "B01001")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
mage.sfct=data.frame(estimate(mage.var), 1.645*standard.error(mage.var), 
                     standard.error(mage.var)/estimate(mage.var))
colnames(mage.sfct)=c("mage", "mage_moe", "mage_cv")

age.hood=data.frame(estimate(age.var), 1.645*standard.error(age.var), 
                    standard.error(age.var)/estimate(age.var))

#Export counts to csv in year folder
write.csv(mage.sfct, file="./2015/ct/ct_medage15_age.csv")
setattr(age.hood, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                 "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                 "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                 "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                 "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                 "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                 "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(age.hood, file="./2015/hood/hood_age15_strata.csv")


# 34. MEDIAN HH INCOME ##########

#2015

#Fetch table fields of interest
mhhi.var = acs.fetch(endyear = 2015,
                     geography=sf_ct,
                     table.number = "B19013")

income.var = acs.fetch(endyear = 2015,
                       geography=c(sfhoods),
                       table.number = "B19001")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
mhhi.sfct=data.frame(estimate(mhhi.var), 1.645*standard.error(mhhi.var), 
                     standard.error(mhhi.var)/estimate(mhhi.var))
colnames(mhhi.sfct)=c("mhhi", "mhhi_moe", "mhhi_cv")

income.hood=data.frame(estimate(income.var), 1.645*standard.error(income.var), 
                       standard.error(income.var)/estimate(income.var))
colnames(income.hood)=c("c1", "c2","c3","c4","c5","c6","c7","c8","c9","c10","c11","c12","c13","c14","c15","c16","c17",
                        "c1_moe","c2_moe","c3_moe","c4_moe","c5_moe","c6_moe","c7_moe","c8_moe","c9_moe","c10_moe","c11_moe","c12_moe","c13_moe","c14_moe","c15_moe","c16_moe","c17_moe",
                        "c1_cv","c2_cv","c3_cv","c4_cv","c5_cv","c6_cv","c7_cv","c8_cv","c9_cv","c10_cv","c11_cv","c12_cv","c13_cv","c14_cv","c15_cv","c16_cv","c17_cv")

#Export counts to csv in year folder
write.csv(mhhi.sfct, file="./2015/ct/ct_medhhinc15_cur.csv")
setattr(income.hood, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                    "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                    "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                    "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                    "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                    "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                    "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(income.hood, file="./2015/hood/hood_income15_strata.csv")


# 35. MEDIAN YEAR BUILT & RENT CONTROL HOUSING ##########

#2015

#Fetch table fields of interest
medyrblt.var = acs.fetch(endyear = 2015,
                         geography=sf_ct,
                         table.number = "B25035")
yrsblt.var = acs.fetch(endyear = 2015,
                       geography=c(sfhoods),
                       table.number = "B25036")
totrent.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = "B25036_013")
mktrt.var = acs.fetch(endyear = 2015,
                      geography=c(sfhoods),
                      variable = c("B25036_014", "B25036_015", "B25036_016", "B25036_017", "B25036_018"))
rentcon.var = acs.fetch(endyear = 2015,
                        geography=c(sfhoods),
                        variable = c("B25036_019", "B25036_020", "B25036_021", "B25036_022", "B25036_023"))

# Sum columns
mktrt.sum <- apply(mktrt.var, MARGIN = 2, FUN = sum,
                   agg.term = c("y", "mktrt.sum"), one.zero = TRUE)
rentcon.sum <- apply(rentcon.var, MARGIN = 2, FUN = sum,
                     agg.term = c("y", "rentcon.sum"), one.zero = TRUE)

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
medyr.sfct=data.frame(estimate(medyrblt.var), 1.645*standard.error(medyrblt.var), 
                      standard.error(medyrblt.var)/estimate(medyrblt.var))
colnames(medyr.sfct)=c("medyrblt", "medyrblt_moe", "medyrblt_cv")

yrblt.cnt=data.frame(estimate(yrsblt.var), 1.645*standard.error(yrsblt.var), 
                     standard.error(yrsblt.var)/estimate(yrsblt.var))
rentcon.count=data.frame(estimate(totrent.var), 1.645*standard.error(totrent.var), standard.error(totrent.var)/estimate(totrent.var),
                         estimate(mktrt.sum), 1.645*standard.error(mktrt.sum), standard.error(mktrt.sum)/estimate(mktrt.sum),
                         estimate(rentcon.sum), 1.645*standard.error(rentcon.sum), standard.error(rentcon.sum)/estimate(rentcon.sum))                     

colnames(rentcon.count)=c("totrent", "totrent_moe", "totrent_cv", 
                          "mktrt", "mktrt_moe", "mktrt_cv",
                          "rentcon", "rentcon_moe", "rentcon_cv")


#Export counts to csv in year folder
write.csv(medyr.sfct, file="./2015/ct/ct_medyrblt15_yr.csv")
setattr(yrblt.cnt, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                  "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                  "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                  "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                  "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                  "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                  "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(yrblt.cnt, file="./2015/hood/hood_yrblt15_strata.csv")
setattr(rentcon.count, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                      "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                      "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                      "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                      "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                      "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                      "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(rentcon.count, file="./2015/hood/hood_rentcon15_cnt.csv")

#Calculate proportions
mktrt.pct = divide.acs(mktrt.sum, totrent.var,
                       method = "proportion")
rentcon.pct = divide.acs(rentcon.sum, totrent.var,
                         method = "proportion")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names 
rentcont.pct=data.frame(estimate(mktrt.pct), 1.645*standard.error(mktrt.pct), standard.error(mktrt.pct)/estimate(mktrt.pct),
                        estimate(rentcon.pct), 1.645*standard.error(rentcon.pct), standard.error(rentcon.pct)/estimate(rentcon.pct))
colnames(rentcont.pct)=c("mktrt", "mktrt_moe", "mktrt_cv",
                         "rentcon", "rentcon_moe", "rentcon_cv")

#Export proportions to csv in year folder
setattr(rentcont.pct, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                     "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                     "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                     "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                     "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                     "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                     "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(rentcont.pct, file="./2015/hood/hood_rentcon15_pct.csv")


# 36. MEDIAN MOVE-IN YEAR ##########

#2015

#Fetch table fields of interest
acs.lookup()
mmove.var = acs.fetch(endyear = 2015,
                      geography=sf_ct,
                      variable = "B25039_001")

move.var = acs.fetch(endyear = 2015,
                     geography=c(sfhoods),
                     table.number = "B25038")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
mmove.sfct=data.frame(estimate(mmove.var), 1.645*standard.error(mmove.var), 
                      standard.error(mmove.var)/estimate(mmove.var))
colnames(mmove.sfct)=c("mmove", "mmove_moe", "mmove_cv")

move.hood=data.frame(estimate(move.var), 1.645*standard.error(move.var), 
                     standard.error(move.var)/estimate(move.var))

#Export counts to csv in year folder
write.csv(mmove.sfct, file="./2015/ct/ct_medmove15_yr.csv")
setattr(move.hood, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                  "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                  "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                  "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                  "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                  "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                  "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(move.hood, file="./2015/hood/hood_move15_strata.csv")


# 37. MEDIAN CONTRACT RENT ##########

#2015

#Fetch table fields of interest
medrent.var = acs.fetch(endyear = 2015,
                        geography=sf_ct,
                        table.number = "B25058")

contrent.var = acs.fetch(endyear = 2015,
                         geography=c(sfhoods),
                         table.number = "B25056")

#Prepare data frame with count estimates, 90%MOE, and CV - with proper column names
medrent.sfct=data.frame(estimate(medrent.var), 1.645*standard.error(medrent.var), 
                        standard.error(medrent.var)/estimate(medrent.var))
colnames(medrent.sfct)=c("medrent", "medrent_moe", "medrent_cv")

contrent.cnt=data.frame(estimate(contrent.var), 1.645*standard.error(contrent.var), 
                        standard.error(contrent.var)/estimate(contrent.var))

#Export counts to csv in year folder
write.csv(medrent.sfct, file="./2015/ct/ct_medrent15_cur.csv")

setattr(contrent.cnt, "row.names", c("San Francisco", "Bayview Hunters Point", "Bernal Heights", "Castro/Upper Market", "Chinatown", "Excelsior",
                                     "Financial District/South Beach", "Glen Park", "Golden Gate Park", "Haight Ashbury", "Hayes Valley",
                                     "Inner Richmond", "Inner Sunset", "Japantown", "Lakeshore", "Lincoln Park", "Lone Mountain/USF", "Marina",
                                     "McLaren Park", "Mission", "Mission Bay", "Nob Hill", "Noe Valley", "North Beach", "Oceanview/Merced/Ingleside",
                                     "Outer Mission", "Outer Richmond", "Pacific Heights", "Portola", "Potrero Hill", "Presidio", "Presidio Heights",
                                     "Russian Hill", "Seacliff", "South of Market", "Sunset/Parkside", "Tenderloin", "Treasure Island", "Twin Peaks",
                                     "Visitacion Valley", "West of Twin Peaks", "Western Addition"))
write.csv(contrent.cnt, file="./2015/hood/hood_contrent15_strata.csv")

