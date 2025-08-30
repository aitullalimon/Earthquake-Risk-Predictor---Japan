**Website visual:**
https://aitullalimon.github.io/Earthquake-Risk-Predictor---Japan/

# Earthquake Risk Predictor for Japanese Prefectures

A bilingual web-based system designed to predict earthquake risk across Japan using geospatial data and a trained machine learning model. Built with R (Random Forest + Plumber API) and a modern JavaScript frontend with real-time visualizations.

## 🌟 Features

- 🗾 **Prefecture Selection or Manual Coordinates**: Predict earthquake risk by choosing a Japanese prefecture or inputting coordinates manually.
- ⚠️ **Real-Time Risk Prediction**: Predictions powered by a Random Forest model served via a live R Plumber API.
- 🌐 **Bilingual Support**: Interface toggles between English and Japanese.
- 🗺 **Interactive Earthquake Map**: Leaflet map displaying real-time seismic events from USGS.
- 📊 **Visual Risk Insights**: Lollipop-style magnitude chart powered by Chart.js.
- ❓ **Localized Help Modal**: In-app guide with map illustration and step-by-step instructions.

---

## 🧠 Technologies Used

- **Frontend**: HTML5, CSS3, JavaScript, Bootstrap 5, Leaflet.js, Chart.js
- **Backend**: R, plumber, randomForest
- **Data Source**: [USGS Earthquake Feed](https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.geojson)

---

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/earthquake-risk-predictor.git
cd earthquake-risk-predictor
```

### 2. Launch Backend (R Plumber)
Ensure you have `rf_model_final.rds` (trained model) in your working directory.
```r
library(plumber)
pr <- plumb("api.R")
pr$run(port = 26025)
```

### 3. Launch Frontend
Open `version2.html` in your browser. You can use VS Code Live Server or any static server.

---

## 📷 Screenshots

| Prediction UI | Interactive Map | Help Guide |
|---------------|------------------|------------|
| ![UI](<img width="2636" height="1430" alt="image" src="https://github.com/user-attachments/assets/5d94fb0b-83a6-4e87-b0a8-0e9b6cae3de1" />
) | ![Map](screenshots/map.png) | ![Help](screenshots/help.png) |

---

## 📝 Credits

- Developed by: **[Your Name]** (Kyoto College of Graduate Studies for Informatics)
- Earthquake Data: United States Geological Survey (USGS)
- Map Basemap: OpenStreetMap

---

## 📄 License
MIT License

---

## 🙋‍♂️ Feedback / Contact
For improvements, bug reports, or collaboration, feel free to open an issue or email: `your@email.com`

---
