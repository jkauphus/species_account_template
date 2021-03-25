# This script is to test to see if I can connect to my AGOL account
#https://www.esri.com/arcgis-blog/products/arcgis-pro/analytics/r-arcgis-bridge-meets-the-cloud-working-with-remote-data/

#install.packages("arcgisbinding", repos="https://r.esri.com", type="win.binary")

library(knitr)
library(arcgisbinding)
arc.check_product()

# Lets connect to my AGOL Account
source("code/private_creds.R", local = knit_global())
arc.check_portal()

arc.portal_connect("https://www.arcgis.com", username, password)

# Connect to data

survey123<-arc.open("https://services2.arcgis.com/os1CphwIyxBDDUGn/arcgis/rest/services/service_e01fa7de2a984533be6ebf7c7b02e412/FeatureServer/0")

# How to open up the data

pod_arc <- arc.select(survey123) 

pod <- arc.data2sf(pod_arc)

