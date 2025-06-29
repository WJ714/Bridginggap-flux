
👋 Welcome to the Bridging the Gap: Flux Data Meets Land Surface Models - FLUX tutorials!

# Things to do before workshop
- creat an account for downloading FLUXNET data: https://amfcdn.lbl.gov/create 
- download FLUXNET data for their study sites; 
- download the github repo one week before the workshop;
- basic plotting package on your compute: list of R package (basic); list python (pandas .... Mo)
- test binder 

### 📚 Three tutorials are included here:
1. 🌐 Get familiarized with the FLUXNET dataset
2. 📦 One typical workflow for REddyProc
3. 🔍 Flux model comparison

# 🌐 Tutorial 1: FLUXNET 
### 🔗 What is FLUXNET?
- 📊 The [FLUXNET2015](https://fluxnet.org/data/fluxnet2015-dataset/) dataset includes data collected at sites from multiple regional flux networks. 
- 🚀 The [next generation](https://fluxnet.org/2024/09/17/announcing-the-fluxnet-data-system-initiative/) of global, open, and accessible FLUXNET data will be available soon.
### 🎯 Tutorial outcomes
- Comprehension: Understand FLUXNET data products (data structure, key variables, uncertainty, qualify flags, etc);
- Application: Work in groups to utilize FLUXNET data to understand your study site;
- Analysis: Explore temporal trends in meteorological and flux data for your study site; 

### 📘 Tutorial Guide
- Script: `FLUXNET.html` or `FLUXNET.rmd`;
- Data: different study sites can be found [here](https://drive.google.com/drive/folders/19XyadKuvngJOKJHWAuCEHk5Et7oZf5VI);
- In the R script, we provide examples to plot FLUXNET data for `US-Syv`. You can use the examples as a starting point, discuss with your group, and explore other ways of plotting to better understand your own study site;
- You are free to use any programming language you feel comfortable for plotting;
- 
- Required task (3 figures): Explore temporal trends (long-term annual sums, monthly sums) for meteorological and flux data;
- Bonus task: We provide three examples related to **ecosystem water budget**, **light use efficiency**, and **energy balance closure**. Please explore 2–3 of them within your group.
- Please take time to interpret the figures with your group and include them in your [group presentation](https://drive.google.com/drive/folders/19XyadKuvngJOKJHWAuCEHk5Et7oZf5VI?usp=drive_link).
  
# 📦 Tutorial 2: REddyProc
### 🔗 What is REddyProc?
REddyProc is a R package about standard and extensible Eddy-Covariance data post-processing (Wutzler et al., 2018) includes u* filtering, gap-filling, and flux-partitioning.  
🌿 The Eddy-Covariance (EC) micrometeorological technique quantifies continuous exchange fluxes of gases, energy, and momentum between an ecosystem and the atmosphere.  
⚙️ It is important for understanding ecosystem dynamics and upscaling exchange fluxes (Aubinet et al., 2012).  

This package includes functions for post-processing half-hourly flux data:
- 1️⃣ A quality-check and filtering is performed based on the relationship between measured flux and friction velocity (uStar) to discard biased data (Papale et al., 2006).  
- 2️⃣ Gaps in the data are filled based on information from environmental conditions (Reichstein et al., 2005).  
- 3️⃣ The net flux of carbon dioxide is partitioned into its gross fluxes in and out of the ecosystem by night-time based and day-time based approaches (Lasslop et al., 2010).

### Where to download the package?
- 📦 [CRAN release of REddyProc](https://cran.r-project.org/web/packages/REddyProc/index.html)  
- 🚧 [Development version on GitHub](https://github.com/EarthyScience/REddyProc)  
- 🌐 [REddyProcWeb online tool](https://www.bgc-jena.mpg.de/5622399/REddyProc)


### 🎯 Tutorial outcomes
- Comprehension: flux postprocessing, including u* filtering, gap-filling and partitioning;
- Application: working on one typical workflow using REddyProc;

### 📘 Tutorial Guide
#### 🔗 What is Binder?
[Binder](https://mybinder.org/) is an open-source service that makes GitHub repositories interactive.
With just one click, users can launch a virtual compute environment with all dependencies installed. It is especially useful for teaching, code demonstrations, and sharing reproducible research. We will use binder for this tutorial and < 5 mins to lanuch. Please click on the icon below:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/YujieLiu666/FCC_workshop_flux_test/main?urlpath=rstudio)

- Script: `REddyProc.rmd`;
- Data: AmeriFlux BASE data for `US-Syv`;
- We use data from `US-Syv` for demonstration. Please do not change to other sites if you are using REddyProc for the first time;
- If you have experience with this package, please try to explore 'Bonus training' suggested in the R script;
- If you want to use REddyProc for your own study sites, we have a helf session after the turtorial.

# 🔍 Tutorial 3: Flux model comparison (in progress ...)
- Data for different study sites can be found [here](https://drive.google.com/drive/folders/19XyadKuvngJOKJHWAuCEHk5Et7oZf5VI);
---

# Other learning resources
### ⏳ Working with half-hourly data:  
- 📺 [FLUXNET-ECN Workshop – Thomas Wutzler](https://www.youtube.com/watch?v=-b0vc4u8kls)
- ❓ [FAQ for REddyProc](https://www.bgc-jena.mpg.de/5629512/FAQ)
- 📚 [EGU 2019 Short Course Materials (REddyProc)](https://github.com/bgctw/EGU19EddyCourse/tree/master)
### ⚡ Working with high-frequency data:
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

