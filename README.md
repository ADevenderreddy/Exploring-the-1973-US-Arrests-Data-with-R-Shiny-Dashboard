# 📊 Exploring the 1973 US Arrests Data with R & Shiny Dashboard

## 📌 Overview

This project is an **interactive R Shiny dashboard** that visualizes the `USArrests` dataset (available in base R).
The dataset contains statistics, in arrests per 100,000 residents, for **Assault**, **Murder**, and **Rape** in each of the 50 US states in 1973, along with the **percentage of the population living in urban areas**.

The dashboard provides multiple views, including **crime trends, distributions, correlations, and a choropleth map**.

---

## 🚀 Features

* **Dataset Overview**

  * View the raw dataset, structure, and summary statistics
  * Dataset description and source image attribution

* **Visualizations**

  * **Crime Trends by State** – Identify top & bottom states by arrest rates
  * **Distribution Plots** – Explore variable distributions interactively
  * **Correlation Matrix** – See relationships among arrest types and urbanization
  * **Relationship Scatterplots** – Fit regression (`lm`) or smoothing (`loess`) lines

* **Choropleth Map**

  * Visualize arrest rates by state for a selected crime type

* **Interactive Controls**

  * Dropdowns, conditional panels, and dynamic inputs for flexible analysis
  * Loading spinners for better UX while plots render

---

## 🗂 Dataset

**Source:** `USArrests` dataset (available in R by default)
**Variables:**

| Column       | Description                               |
| ------------ | ----------------------------------------- |
| **Murder**   | Arrests for murder per 100,000 residents  |
| **Assault**  | Arrests for assault per 100,000 residents |
| **UrbanPop** | Percent urban population                  |
| **Rape**     | Arrests for rape per 100,000 residents    |

---

## 📌 Dependencies

* **R** (≥ 4.0.0)
* Packages:

  * `shiny`
  * `shinydashboard`
  * `plotly`
  * `DT`
  * `shinycssloaders`

---

