## Find and replaced with blanks all middle code in acs calls leaving each var to consist of a list of apicalls

#



# 2. SEX ##########

#2015

#Fetch table fields of interest
totalpop.var = "B01001_001"
male.var.sex = 
  
  "B01001_002"
female.var.sex = 
  
  "B01001_026"



# 3. AGE GROUPS ##########
# (this code is good for when you first need to collapse sex stratified age data)

#2015

#Fetch table fields of interest
total.var.age = 
  
  "B01001_001"
under5.var.age = 
  
  c("B01001_003", "B01001_027")
under15.var.age = 
  
  c("B01001_003", "B01001_004", "B01001_005",
    "B01001_027", "B01001_028", "B01001_029")

under18.var.age = 
  
  c("B01001_003", "B01001_004", "B01001_005", "B01001_006",
    "B01001_027", "B01001_028", "B01001_029", "B01001_030")
a18to24.var.age = 
  
  c("B01001_007", "B01001_008", "B01001_009", "B01001_010",
    "B01001_031", "B01001_032", "B01001_033", "B01001_034")
a18to34.var.age = 
  
  c("B01001_007", "B01001_008", "B01001_009", "B01001_010", "B01001_011", "B01001_012",
    "B01001_031", "B01001_032", "B01001_033", "B01001_034", "B01001_035", "B01001_036")
a18to64.var.age = 
  
  c("B01001_007", "B01001_008", "B01001_009", "B01001_010", "B01001_011", "B01001_012", "B01001_013", "B01001_014", "B01001_015", 
    "B01001_016", "B01001_017", "B01001_018","B01001_019", 
    "B01001_031", "B01001_032", "B01001_033", "B01001_034", "B01001_035", "B01001_036", "B01001_037", "B01001_038", "B01001_039", 
    "B01001_040", "B01001_041", "B01001_042", "B01001_043")
a25to34.var.age = 
  
  c("B01001_011", "B01001_012", 
    "B01001_035", "B01001_036")
a35to44.var.age = 
  
  c("B01001_013", "B01001_014", 
    "B01001_037", "B01001_038")
a35to59.var.age = 
  
  c("B01001_013", "B01001_014", "B01001_015", "B01001_016", "B01001_017",
    "B01001_037", "B01001_038", "B01001_039", "B01001_040", "B01001_041")
a45to64.var.age = 
  
  c("B01001_015", "B01001_016", "B01001_017", "B01001_018","B01001_019",
    "B01001_039", "B01001_040", "B01001_041", "B01001_042", "B01001_043")
a60plus.var.age = 
  
  c("B01001_018", "B01001_019", "B01001_020", "B01001_021", "B01001_022", "B01001_023", "B01001_024","B01001_025",
    "B01001_042", "B01001_043", "B01001_044", "B01001_045", "B01001_046", "B01001_047", "B01001_048","B01001_049")
a65plus.var.age = 
  
  c("B01001_020", "B01001_021", "B01001_022", "B01001_023", "B01001_024","B01001_025",
    "B01001_044", "B01001_045", "B01001_046", "B01001_047", "B01001_048","B01001_049")
a75plus.var.age = 
  
  c("B01001_023", "B01001_024","B01001_025",
    "B01001_047", "B01001_048","B01001_049")


# 4. DISABILITY ##########

#2015

#Fetch table fields of interest
totalpop.var = "B18101_001"
dis.var.dis = c("B18101_004", "B18101_007", "B18101_010", "B18101_013", "B18101_016", "B18101_019",
                "B18101_026", "B18101_029", "B18101_032", "B18101_035", "B18101_038")
senior.var.dis = 
  
  c("B18101_034", "B18101_037")
seniordis.var.dis = 
  
  c("B18101_004", "B18101_007", "B18101_010", "B18101_013", "B18101_016", "B18101_019",
    "B18101_026", "B18101_029", "B18101_032", "B18101_035", "B18101_038", "B18101_036", "B18101_039")




# 6. LANGUAGE & LIMITED ENGLISH PROFICIENCY ##########

#Fetch table fields of interest
total.var.lang = 
  
  "B16001_001"
all.lang.var.lang = 
  
  "B16001_002"
spanish.var.lang = 
  
  "B16001_003"
chinese.var.lang = 
  
  "B16001_066"
tagalog.var.lang = 
  
  "B16001_093"
other1.var.lang = 
  
  c("B16001_006",	"B16001_009",	"B16001_012",	"B16001_015",	"B16001_018",	
    "B16001_021",	"B16001_024",	"B16001_027",	"B16001_030",	"B16001_033",
    "B16001_036",	"B16001_039",	"B16001_042",	"B16001_045",	"B16001_048",	
    "B16001_051",	"B16001_054",	"B16001_057",	"B16001_060",	"B16001_063",	
    "B16001_069",	"B16001_072",	"B16001_075",	"B16001_078",	
    "B16001_081",	"B16001_084",	"B16001_087",	"B16001_090",
    "B16001_096",	"B16001_099",	"B16001_102",	"B16001_105",	"B16001_108",	
    "B16001_111",	"B16001_114",	"B16001_117")
pooreng.var.lang = 
  
  c("B16001_005",	"B16001_008",	"B16001_011",	"B16001_014",	"B16001_017",	
    "B16001_020",	"B16001_023",	"B16001_026",	"B16001_029",	"B16001_032",	
    "B16001_035",	"B16001_038",	"B16001_041",	"B16001_044",	"B16001_047",	
    "B16001_050",	"B16001_053",	"B16001_056",	"B16001_059",	"B16001_062",	
    "B16001_065",	"B16001_068",	"B16001_071",	"B16001_074",	"B16001_077",	
    "B16001_080",	"B16001_083",	"B16001_086",	"B16001_089",	"B16001_092",	
    "B16001_095",	"B16001_098",	"B16001_101",	"B16001_104",	"B16001_107",	
    "B16001_110",	"B16001_113",	"B16001_116",	"B16001_119")
api.var.lang = 
  
  c("B16001_066", "B16001_069",	"B16001_072",	"B16001_075",	"B16001_078",	
    "B16001_081",	"B16001_084",	"B16001_087",	"B16001_090", "B16001_093",
    "B16001_096")
indoeur.var.lang = 
  
  c("B16001_006",	"B16001_009",	"B16001_012",	"B16001_015",	"B16001_018",	
    "B16001_021",	"B16001_024",	"B16001_027",	"B16001_030",	"B16001_033",
    "B16001_036",	"B16001_039",	"B16001_042",	"B16001_045",	"B16001_048",	
    "B16001_051",	"B16001_054",	"B16001_057",	"B16001_060",	"B16001_063")
other2.var.lang = 
  
  c("B16001_099",	"B16001_102",	"B16001_105",	"B16001_108",	
    "B16001_111",	"B16001_114",	"B16001_117")


# 7. LINGUISTICALLY ISOLATED HOUSEHOLDS ##########

#2015

#Fetch table fields of interest
tothh.var.lingisol = 
  
  "B16002_001"
lingiso.var.lingisol = 
  
  c("B16002_004","B16002_007","B16002_010","B16002_013")
spanish.var.lingisol = 
  
  "B16002_004"
indoeur.var.lingisol = 
  
  "B16002_007"
api.var.lingisol = "B16002_010"
other.var.lingisol = 
  
  "B16002_013"



# 8. NATIVITY & CITIZENSHIP ##########

#2015

#Fetch table fields of interest
totpop.var.nativ = 
  
  "B05002_001"
usborn.var.nativ = 
  
  "B05002_002"
forborn.var.nativ = 
  
  "B05002_013"
natcit.var.nativ = 
  
  "B05002_014"
notcit.var.nativ = 
  
  "B05002_021"


# 9. GEOGRAPHIC MOBILITY IN PAST YEAR ###########

#2015

#Fetch table fields of interest
popovr1.var.geomobile = 
  
  "B07001_001"
smhouse.var.geomobile = 
  
  "B07001_017"
smcounty.var.geomobile = "B07001_033"
difcount.var.geomobile = "B07001_049"
difstate.var.geomobile = "B07001_065"
abroad.var.geomobile = 
  
  "B07001_081"
moved.var.geomobile = 
  
  c("B07001_017","B07001_033","B07001_049","B07001_065","B07001_081")


# 10. AVERAGE HOUSEHOLD SIZE ##########

#2015

#Fetch table fields of interest
tothh.var.avehouse = 
  
  "B25009_001"
one.var.avehouse = c("B25009_003", "B25009_011")
two.var.avehouse = c("B25009_004", "B25009_012")
three.var.avehouse = 
  
  c("B25009_005", "B25009_013")
four.var.avehouse = 
  
  c("B25009_006","B25009_014")
five.var.avehouse = 
  
  c("B25009_007", "B25009_015")
six.var.avehouse = c("B25009_008", "B25009_016")
sevenpls.var.avehouse = c("B25009_009", "B25009_017")
avghhsize.var.avehouse = 
  
  "B25010_001"


# 11. PERSONS BY HOUSEHOLD TYPE ##########

#2015

#Fetch table fields of interest
totpop.var.pershhtype = 
  
  "B09019_001"
family.var.pershhtype = 
  
  "B09019_003"
nonfam.var.pershhtype = 
  
  "B09019_024"
alone.var.pershhtype = 
  
  c("B09019_027","B09019_030")
groupq.var.pershhtype = 
  
  "B09019_038"


# 12. HOUSEHOLDS BY HOUSEHOLD TYPE ##########

#2015

#Fetch table fields of interest
households.count.hhbyhhtype = 
  
  c("B11001_001", "B11001_002", "B11001_003", "B11001_004",
    "B11001_007", "B11001_008", "B11001_009")



# 13. HOUSEHOLDS WITH YOUTH ##########

#2015

#Fetch table fields of interest
hhwchildren.count.hhwithyouth = 
  
  c("B11005_001", "B11005_002", "B11005_011")


# 14. HOUSEHOLDS WITH SENIORS ###########

#2015

#Fetch table fields of interest
hhwsenior.count.hhwithsenior = 
  
  c("B11007_001", "B11007_002", "B11007_007")


# 15. YOUTH BY PARENTAL MARITAL STATUS ##########

#2015

#Fetch table fields of interest
totyth.var.youthbyparentmarital = 
  
  "B09005_001"
married.var.youthbyparentmarital = 
  
  "B09005_003"
single.var.youthbyparentmarital = 
  
  c("B09005_004", "B09005_004")
other.var.youthbyparentmarital = 
  
  "B09005_006"


# 16. EDUCATIONAL ATTAINMENT (25Y+) ##########

#Fetch table fields of interest
total.var.educ = 
  
  "B15002_001"
lths.var.educ = 
  
  c("B15002_003", "B15002_004", "B15002_005", "B15002_006",
    "B15002_007", "B15002_008", "B15002_009", "B15002_010",
    "B15002_020", "B15002_021", "B15002_022", "B15002_023",
    "B15002_024", "B15002_025", "B15002_026", "B15002_027")
hsless.var.educ = 
  
  c("B15002_003", "B15002_004", "B15002_005", "B15002_006",
    "B15002_007", "B15002_008", "B15002_009", "B15002_010","B15002_011",
    "B15002_020", "B15002_021", "B15002_022", "B15002_023",
    "B15002_024", "B15002_025", "B15002_026", "B15002_027", "B15002_028")
hsplus.var.educ = 
  
  c("B15002_011", "B15002_012", "B15002_013", "B15002_014",
    "B15002_015", "B15002_016", "B15002_017", "B15002_018",
    "B15002_028", "B15002_029", "B15002_030", "B15002_031",
    "B15002_032", "B15002_033", "B15002_034", "B15002_035")
smcolplus.var.educ = 
  
  c("B15002_012", "B15002_013", "B15002_014",
    "B15002_015", "B15002_016", "B15002_017", "B15002_018",
    "B15002_029", "B15002_030", "B15002_031",
    "B15002_032", "B15002_033", "B15002_034", "B15002_035")
assocplus.var.educ = 
  
  c("B15002_014",
    "B15002_015", "B15002_016", "B15002_017", "B15002_018",
    "B15002_031",
    "B15002_032", "B15002_033", "B15002_034", "B15002_035")
bachonly.var.educ = 
  
  c("B15002_015", "B15002_032")
bachplus.var.educ = 
  
  c("B15002_015", "B15002_016", "B15002_017", "B15002_018",
    "B15002_032", "B15002_033", "B15002_034", "B15002_035")
mastplus.var.educ = 
  
  c("B15002_016", "B15002_017", "B15002_018",
    "B15002_033", "B15002_034", "B15002_035")

# 17. POVERTY ##########

#2015
#Fetch table fields of interest
total.var.pov = 
  
  "B17024_001"
lt100pct.var.pov = 
  
  c("B17024_003","B17024_004","B17024_005","B17024_016","B17024_017","B17024_018","B17024_029","B17024_030","B17024_031","B17024_042",
    "B17024_043","B17024_044","B17024_055","B17024_056","B17024_057","B17024_068","B17024_069","B17024_070","B17024_081","B17024_082","B17024_083","B17024_094","B17024_095",
    "B17024_096","B17024_107","B17024_108","B17024_109","B17024_120","B17024_121","B17024_122")
lt200pct.var.pov = 
  
  c("B17024_003","B17024_004","B17024_005","B17024_006","B17024_007","B17024_008","B17024_009","B17024_010","B17024_016","B17024_017",
    "B17024_018","B17024_019","B17024_020","B17024_021","B17024_022","B17024_023", "B17024_029", "B17024_030", "B17024_031", "B17024_032", "B17024_033", "B17024_034",
    "B17024_035", "B17024_036", "B17024_042", "B17024_043", "B17024_044", "B17024_045", "B17024_046", "B17024_047", "B17024_048", "B17024_049", "B17024_055",
    "B17024_056", "B17024_057", "B17024_058", "B17024_059", "B17024_060", "B17024_061", "B17024_062", "B17024_068", "B17024_069", "B17024_070", "B17024_071", "B17024_072",
    "B17024_073", "B17024_074", "B17024_075", "B17024_081", "B17024_082", "B17024_083", "B17024_084", "B17024_085", "B17024_086", "B17024_087", "B17024_088",
    "B17024_094", "B17024_095", "B17024_096", "B17024_097", "B17024_098", "B17024_099", "B17024_100", "B17024_101", "B17024_107", "B17024_108", "B17024_109",
    "B17024_110", "B17024_111", "B17024_112", "B17024_113", "B17024_114", "B17024_120", "B17024_121", "B17024_122", "B17024_123", "B17024_124", "B17024_125",
    "B17024_126", "B17024_127")
p100to400pct.var.pov = 
  
  c("B17024_006","B17024_007","B17024_008","B17024_009","B17024_010","B17024_012","B17024_019","B17024_020","B17024_021",
    "B17024_022","B17024_023","B17024_024","B17024_025","B17024_032","B17024_033","B17024_034","B17024_035","B17024_036",
    "B17024_037", "B17024_038", "B17024_045", "B17024_046", "B17024_047", "B17024_048", "B17024_049", "B17024_050", "B17024_051", "B17024_058", "B17024_059",
    "B17024_060", "B17024_061", "B17024_062", "B17024_063", "B17024_064", "B17024_071", "B17024_072", "B17024_073", "B17024_074", "B17024_075", "B17024_076",
    "B17024_077", "B17024_084", "B17024_085", "B17024_086", "B17024_087", "B17024_088", "B17024_089", "B17024_090", "B17024_097", "B17024_098", "B17024_099",
    "B17024_100", "B17024_101", "B17024_102", "B17024_103", "B17024_110", "B17024_111", "B17024_112", "B17024_113", "B17024_114", "B17024_115", "B17024_116",
    "B17024_123", "B17024_124", "B17024_125", "B17024_126", "B17024_127", "B17024_128", "B17024_129")
yth100pct.var.pov = 
  
  c("B17024_003","B17024_004","B17024_005","B17024_016","B17024_017","B17024_018","B17024_029","B17024_030","B17024_031")
yth200pct.var.pov = 
  
  c("B17024_003","B17024_004","B17024_005","B17024_006","B17024_007","B17024_008","B17024_009","B17024_010","B17024_016","B17024_017",
    "B17024_018","B17024_019","B17024_020","B17024_021","B17024_022","B17024_023", "B17024_029", "B17024_030", "B17024_031", "B17024_032", "B17024_033", "B17024_034",
    "B17024_035", "B17024_036")



# 18. LABOR FORCE & EMPLOYMENT ##########

#2015
#Fetch table fields of interest
tot16plus.var.emp = 
  
  "B12006_001"
ftot16plus.var.emp = 
  
  c("B12006_008","B12006_019","B12006_030","B12006_041","B12006_052")
mtot16plus.var.emp = 
  
  c("B12006_003","B12006_014","B12006_025","B12006_036","B12006_047")
labor.var.emp = 
  
  c("B12006_004", "B12006_009", "B12006_015","B12006_020",
    "B12006_026","B12006_031","B12006_037","B12006_042",
    "B12006_048", "B12006_053")
employ.var.emp = 
  
  c("B12006_005", "B12006_010", "B12006_016","B12006_021",
    "B12006_027","B12006_032","B12006_038","B12006_043",
    "B12006_049", "B12006_054")
flabor.var.emp = 
  
  c("B12006_009", "B12006_020",
    "B12006_031", "B12006_042",
    "B12006_053")
femploy.var.emp = 
  
  c("B12006_010", "B12006_021",
    "B12006_032","B12006_043",
    "B12006_054")
mlabor.var.emp = 
  
  c("B12006_004", "B12006_015",
    "B12006_026","B12006_037",
    "B12006_048")
memploy.var.emp = 
  
  c("B12006_005", "B12006_016",
    "B12006_027","B12006_038",
    "B12006_049")

# 19. EMPLOYEEES BY OCCUPATION ##########

#2015

#Fetch table fields of interest
total.var.occ = 
  
  "C24050_001"
manpro.var.occ = 
  
  "C24050_015"
serv.var.occ = 
  
  "C24050_029"
saloff.var.occ = 
  
  "C24050_043"
conmaint.var.occ = "C24050_057"
pdt.var.occ = "C24050_071"



# 22. HOUSING UNITS & VACANCY ##########

#2015

#Fetch table
hu.var.housing = "B25002_001"
occ.var.housing = "B25002_002"
vaca.var.housing = "B25002_003"


# 23. VACANCY STATUS ##########

#2015

#Fetch table fields of interest
vachu.var.vacancy = 
  
  "B25004_001"
forrent.var.vacancy = 
  
  "B25004_002"
sale.var.vacancy = 
  
  "B25004_004"
notyetocc.var.vacancy = 
  
  c("B25004_003", "B25004_005")
seasonal.var.vacancy = "B25004_006"
migrant.var.vacancy = 
  
  "B25004_007"
other.var.vacancy = 
  
  "B25004_008"


# 24. HOUSING TENURE ##########

#2015

#Fetch table fields of interest
tenure.var.tenure = 
  
  "B25003"



# 25. RENT BURDEN ##########

#2015

#Fetch table fields of interest
total.var.rentburd = 
  
  "B25070_001"
lt30pct.var.rentburd = 
  
  c("B25070_002", "B25070_003", "B25070_004","B25070_005","B25070_006")
gte30pct.var.rentburd = 
  
  c("B25070_007", "B25070_008", "B25070_009","B25070_010")
gte50pct.var.rentburd = 
  
  "B25070_010"					 


# 26. RENT BURDEN BY INCOME LEVEL ##########

#2015

#Fetch table fields of interest
totrnhh.var.rentburdbyinc = 
  
  "B25074_001"
lt20k.var.rentburdbyinc = 
  
  c("B25074_002", "B25074_011")
lt20k50.var.rentburdbyinc = 
  
  c("B25074_009", "B25074_018")
d20to49k.var.rentburdbyinc = 
  
  c("B25074_020", "B25074_029")
d20to49k50.var.rentburdbyinc = 
  
  c("B25074_027", "B25074_036")
d50to99k.var.rentburdbyinc = 
  
  c("B25074_038", "B25074_047")
d50to99k50.var.rentburdbyinc = 
  
  c("B25074_045", "B25074_054")
d100kplk.var.rentburdbyinc = 
  
  "B25074_056"
d100kpl50.var.rentburdbyinc = 
  
  "B25074_063"



# 27. OVERCROWDING ##########

#2015

#Fetch table fields of interest
total.var.overcrowd = 
  
  "B25014_001"
notcrowd.var.overcrowd = 
  
  c("B25014_003", "B25014_004", "B25014_009","B25014_010")
crowd.var.overcrowd = 
  
  c("B25014_005", "B25014_006", "B25014_007","B25014_011", "B25014_012", "B25014_013")



# 28. UNITS IN STRUCTURE ##########

#2015

#Fetch table fields of interest
tothu.var.unitinstruct = 
  
  "B25024_001"
one.var.unitinstruct = 
  
  c("B25024_002", "B25024_003")
twotofour.var.unitinstruct = 
  
  c("B25024_004", "B25024_005")
fivetonine.var.unitinstruct = 
  
  "B25024_006"
tento19.var.unitinstruct = 
  
  "B25024_007"
twentyplus.var.unitinstruct = 
  
  c("B25024_008", "B25024_009")
other.var.unitinstruct = 
  
  c("B25024_010", "B25024_011")



# 29. BEDROOMS IN UNIT ##########

#2015 

totalhu.var.bedroominunit = 
  
  "B25041_001"
zero.var.bedroominunit = 
  
  "B25041_002"
one.var.bedroominunit = 
  
  "B25041_003"
two.var.bedroominunit = 
  
  "B25041_004"
three.var.bedroominunit = 
  
  "B25041_005"
fourplus.var.bedroominunit = 
  
  c("B25041_006", "B25041_007")


# 30. VEHICLES AVAILABLE ##########

#2015

#Fetch table fields of interest
totalhh.var.vehicle = 
  
  "B25044_001"
nocar.var.vehicle = 
  
  c("B25044_003", "B25044_010")
yescar.var.vehicle = 
  
  c("B25044_004", "B25044_005", "B25044_006", "B25044_007", "B25044_008",
    "B25044_011", "B25044_012", "B25044_013", "B25044_014", "B25044_015")




# 31. VEHICLES PER CAPITA ##########

#2015

#Fetch table fields of interest
totpop.var.vehpercap = 
  
  "B01003_001"
totcars.var.vehpercap = 
  
  "B25046"



# 32. COMMUTE MODE ##########

#2015

#Fetch table fields of interest
total.var.commute = 
  
  "B08301_001"
car.var.commute = "B08301_002"
drvalone.var.commute = "B08301_003"
carpool.var.commute = 
  
  "B08301_004"
transit.var.commute = 
  
  "B08301_010"
bike.var.commute = 
  
  "B08301_018"
walk.var.commute = 
  
  "B08301_019"
other.var.commute = 
  
  "B08301_020"
wkathome.var.commute = "B08301_021"




# 33. MEDIAN AGE ##########

#2015

#Fetch table fields of interest
mage.var.medage = 
  
  "B01002"

age.var.medage = 
  
  "B01001"


# 34. MEDIAN HH INCOME ##########

#2015

#Fetch table fields of interest
mhhi.var.medhhinc = 
  
  "B19013"

income.var.medhhinc = 
  
  "B19001"

# 35. MEDIAN YEAR BUILT & RENT CONTROL HOUSING ##########

#2015

#Fetch table fields of interest
medyrblt.var.medyrbuilt = 
  
  "B25035"
yrsblt.var.rentcontrol = 
  
  "B25036"
totrent.var.rentcontrol = 
  
  "B25036_013"
mktrt.var.rentcontrol = 
  
  c("B25036_014", "B25036_015", "B25036_016", "B25036_017", "B25036_018")
rentcon.var.rentcontrol = 
  
  c("B25036_019", "B25036_020", "B25036_021", "B25036_022", "B25036_023")


# 36. MEDIAN MOVE-IN YEAR ##########

#2015

#Fetch table fields of interest
mmove.var.medmoveinyr = 
  
  "B25039_001"

move.var.medmoveinyr = 
  
  "B25038"


# 37. MEDIAN CONTRACT RENT ##########

#2015

#Fetch table fields of interest
medrent.var.medcontractrent = 
  
  "B25058"

contrent.var.medcontractrent = 
  
  "B25056"



