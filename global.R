library(dplyr)

allzips <- read.csv("data/publichospitalsinaihwhospitalsdatabase1213.csv") #readRDS("data/superzip.rds")
#allzips$latitude <- jitter(allzips$latitude)
#allzips$longitude <- jitter(allzips$longitude)
#allzips$college <- allzips$college * 100
#allzips$zipcode <- formatC(allzips$zipcode, width=5, format="d", flag="0")
#row.names(allzips) <- allzips$zipcode

#cleantable <- allzips %>%
#  select(
#    City = city.x,
#    State = state.x,
#    Zipcode = zipcode,
#    Rank = rank,
#    Score = centile,
#    Superzip = superzip,
#    Population = adultpop,
#    College = college,
#    Income = income,
#    Lat = latitude,
#    Long = longitude
#  )

#allzips$state <- jitter(allzips$state)
#allzips$hospname <- jitter(allzips$hospname)
#allzips$elective_surgery_reported <- jitter(allzips$elective_surgery_reported)
#allzips$number_of_available_beds <- jitter(allzips$number_of_available_beds)

cleantable <- allzips %>%
  select(
    State=state,
    Hospname= hospname,
    Establishmentid = establishmentid,
    Parentid = parentid,
    Unit = unit,
    Medicareprovnumber = medicareprovnumber,
    Addressline1 = addressline1,
    Addressline2 = addressline2,
    Remotenessarea_code = remotenessarea_code,
    Remoteness_area = remoteness_area,
    Number_of_available_beds= number_of_available_beds,
    A201213peergroupcode=C201213peergroupcode,
    A201213peergroupname=C201213peergroupname,
    Admissions_reported=admissions_reported,
    Emergency_department=emergency_department,
    Elective_surgery_reported=elective_surgery_reported,
    Outpatient_clinics=outpatient_clinics,
    A201112peergroupcode=C201112peergroupcode,
    A201112peergroupname=C201112peergroupname
  )