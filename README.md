# Ultimate guide for REddyProc 
Authors: 
- Yujie Liu (yujie.liu@nau.edu)
- add you name and email here ...


# What is REddyProc?
(Yujie: I just copied the text, I guess we need to improve the readability)
https://cran.r-project.org/web/packages/REddyProc/index.html 
Standard and extensible Eddy-Covariance data post-processing (Wutzler et al. (2018) <doi:10.5194/bg-15-5015-2018>) includes uStar-filtering, gap-filling, and flux-partitioning. The Eddy-Covariance (EC) micrometeorological technique quantifies continuous exchange fluxes of gases, energy, and momentum between an ecosystem and the atmosphere. It is important for understanding ecosystem dynamics and upscaling exchange fluxes. (Aubinet et al. (2012) <doi:10.1007/978-94-007-2351-1>). This package inputs pre-processed (half-)hourly data and supports further processing. First, a quality-check and filtering is performed based on the relationship between measured flux and friction velocity (uStar) to discard biased data (Papale et al. (2006) <doi:10.5194/bg-3-571-2006>). Second, gaps in the data are filled based on information from environmental conditions (Reichstein et al. (2005) <doi:10.1111/j.1365-2486.2005.001002.x>). Third, the net flux of carbon dioxide is partitioned into its gross fluxes in and out of the ecosystem by night-time based and day-time based approaches (Lasslop et al. (2010) <doi:10.1111/j.1365-2486.2009.02041.x>).
- Development version: The source code is made available at github.com/EarthyScience/REddyProc via the git revisioning system. 


# Other learning resources
- FLUXNET-ECN workshop: Thomas Wutzler: https://www.youtube.com/watch?v=-b0vc4u8kls
- FAQ: https://www.bgc-jena.mpg.de/5629512/FAQ
- Material used for the short course using REddyProc at EGU 2019: https://github.com/bgctw/EGU19EddyCourse/tree/master

# Reference
The methodology and benchmark of REddyProc 1.1.3 is described in the following paper:
Wutzler, T., Lucas-Moffat, A., Migliavacca, M., Knauer, J., Sickel, K., Šigut, L., Menzer, O., and Reichstein, M. (2018): Basic and extensible post-processing of eddy covariance flux data with REddyProc, Biogeosciences, 15, 5015-5030, https://doi.org/10.5194/bg-15-5015-2018.
