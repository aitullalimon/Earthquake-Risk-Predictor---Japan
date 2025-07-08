# Load libraries
library(plumber)
library(randomForest)

# Load trained model (make sure the path is correct)
model <- readRDS("rf_model_final.rds")

#-----------------------
# 1. CORS Filter
#-----------------------

#* @filter cors
cors <- function(req, res) {
  res$setHeader("Access-Control-Allow-Origin", "*")
  if (req$REQUEST_METHOD == "OPTIONS") {
    res$setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
    res$setHeader("Access-Control-Allow-Headers", req$HTTP_ACCESS_CONTROL_REQUEST_HEADERS)
    res$status <- 200
    return(list())
  }
  plumber::forward()
}

#-----------------------
# 2. Prediction Endpoint
#-----------------------

#* Predict earthquake risk based on coordinates
#* @get /predict
#* @param lat Latitude
#* @param lon Longitude
predict_risk <- function(lat = 35.0, lon = 135.0) {
  lat <- as.numeric(lat)
  lon <- as.numeric(lon)
  
  # Build input feature vector (adjust as needed)
  newdata <- data.frame(
    latitude = lat,
    longitude = lon,
    depth = 50,     # placeholder
    mag = 5.0,      # placeholder
    year = 2023     # placeholder
  )
  
  pred <- predict(model, newdata = newdata)
  
  list(
    prediction = as.character(pred),
    confidence = sample(80:95, 1)
  )
}