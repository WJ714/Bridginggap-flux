
👋 Welcome to the Bridging the Gap: Flux Data Meets Land Surface Models - FLUX tutorials!
### 🔗 What is Binder?
[Binder](https://mybinder.org/) is an open-source service that makes GitHub repositories interactive.
With just one click, users can launch a virtual compute environment with all dependencies installed. It is especially useful for teaching, code demonstrations, and sharing reproducible research.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/YujieLiu666/FCC_workshop_flux_test/main?urlpath=rstudio)
### 📚 Two tutorials are included here:
1. 🌐 Get started with FLUXNET data  
2. 📦 REddyProc

# 🌐 Tutorial 1: FLUXNET 
### 🔗 What is FLUXNET?
- 📊 The [FLUXNET2015](https://fluxnet.org/data/fluxnet2015-dataset/) dataset includes data collected at sites from multiple regional flux networks.  
- 🚀 The [next generation](https://fluxnet.org/2024/09/17/announcing-the-fluxnet-data-system-initiative/) of global, open, and accessible FLUXNET data will be available soon.
### 🎯 Tutorial outcomes
- Knowledge: 
- Comprehension: data structure and variables in FLUXNET data; understanding study sites (e.g. long-term trends, seasonal patterns ...)
- Application:
- Analysis:

## 📘 Tutorial Guide
- R script: FLUXNET.rmd
- We provide some example uses of FLUXNET data. You can use these as a starting point, discuss with your group, and explore other ways of plotting. Please take time to interpret the figures and include them in your [group presentation](https://drive.google.com/drive/folders/19XyadKuvngJOKJHWAuCEHk5Et7oZf5VI?usp=drive_link).


# 📦 Tutorial 2: REddyProc
### 🔗 What is REddyProc?
REddyProc is a R package about standard and extensible Eddy-Covariance data post-processing (Wutzler et al., 2018) includes uStar-filtering, gap-filling, and flux-partitioning.  
🌿 The Eddy-Covariance (EC) micrometeorological technique quantifies continuous exchange fluxes of gases, energy, and momentum between an ecosystem and the atmosphere.  
⚙️ It is important for understanding ecosystem dynamics and upscaling exchange fluxes (Aubinet et al., 2012).  

This package includes functions for post-processing half-hourly flux data:
- 1️⃣ First, a quality-check and filtering is performed based on the relationship between measured flux and friction velocity (uStar) to discard biased data (Papale et al., 2006).  
- 2️⃣ Second, gaps in the data are filled based on information from environmental conditions (Reichstein et al., 2005).  
- 3️⃣ Third, the net flux of carbon dioxide is partitioned into its gross fluxes in and out of the ecosystem by night-time based and day-time based approaches (Lasslop et al., 2010).
### Where to download the package?
- 📦 [CRAN release of REddyProc](https://cran.r-project.org/web/packages/REddyProc/index.html)  
- 🚧 [Development version on GitHub](https://github.com/EarthyScience/REddyProc)
### 🎯 Tutorial outcomes
- Knowledge: 
- Comprehension:
- Application

## 📘 Tutorial Guide
- Typically it takes > 30 mins to install REddyProc and the dependencies, please use [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/YujieLiu666/FCC_workshop_flux_test/main?urlpath=rstudio). It takes < 5mins to lanuch.
- We use data from US-Ha1 for demonstration. Please do not change to other sites if you are using REddyProc for the first time.
- Bonus training: We've listed some suggestions for bonus training—feel free to explore them if you have extra time.
---

# Other learning resources
## ⏳ Working with half-hourly data:  
- 📺 [FLUXNET-ECN Workshop – Thomas Wutzler](https://www.youtube.com/watch?v=-b0vc4u8kls)
- ❓ [FAQ for REddyProc](https://www.bgc-jena.mpg.de/5629512/FAQ)
- 📚 [EGU 2019 Short Course Materials (REddyProc)](https://github.com/bgctw/EGU19EddyCourse/tree/master)
## ⚡ Working with high-frequency data:
- 🔬 [EcoFlux Lab: High-Frequency Data Processing Documentation](https://ecoflux-lab.github.io/PipelineDocumentation/PipelineDocumentation.html)

# References
- 🔸 Wutzler et al., 2018: [https://doi.org/10.5194/bg-15-5015-2018](https://doi.org/10.5194/bg-15-5015-2018)  
- 🔸 Aubinet et al., 2012: [https://doi.org/10.1007/978-94-007-2351-1](https://doi.org/10.1007/978-94-007-2351-1)  
- 🔸 Papale et al., 2006: [https://doi.org/10.5194/bg-3-571-2006](https://doi.org/10.5194/bg-3-571-2006)  
- 🔸 Reichstein et al., 2005: [https://doi.org/10.1111/j.1365-2486.2005.001002.x](https://doi.org/10.1111/j.1365-2486.2005.001002.x) 
- 🔸 Lasslop et al., 2010: [https://doi.org/10.1111/j.1365-2486.2009.02041.x](https://doi.org/10.1111/j.1365-2486.2009.02041.x)
- 🔸 Liu et al., 2025: [https://doi.org/10.1016/j.agrformet.2025.110438](https://doi.org/10.1016/j.agrformet.2025.110438)

# Acknowledgement
-

