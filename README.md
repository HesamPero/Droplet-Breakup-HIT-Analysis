# HIT Droplet Dynamics Analysis
### Integrated Research Framework for HIT Characterization and Droplet Breakup Dynamics

[cite_start]This repository contains the numerical framework developed for my Master's Thesis at **Sapienza University of Rome** in collaboration with **TU Wien**[cite: 1, 3, 10]. [cite_start]The project focuses on validating the **Kolmogorov-Hinze (KH) framework** in high-energy turbulent environments[cite: 23, 57].

## 📊 Data Analysis & Physical Insights

### 1. Turbulence Validation (Continuous Phase)
[cite_start]The framework validates the **TUWien-HIT facility**'s ability to generate Homogeneous Isotropic Turbulence (HIT)[cite: 24, 74]:
* [cite_start]**Isotropy Analysis**: By computing the ratio of longitudinal to transverse RMS velocity fluctuations ($u'/v'$), the study confirmed levels between **0.87 and 0.96**[cite: 1271, 1391].
* [cite_start]**Homogeneity**: Velocity RMS profiles remain constant across the octagonal test section, confirming that turbulence properties are independent of position [cite: 176, 1243-1246].
* [cite_start]**Energy Cascade**: The analysis identified the **Inertial Subrange** using second-order structure functions ($D_{LL}, D_{NN}$), resolving energy dissipation rates ($\epsilon$) up to **$0.22 \, m^2/s^3$** [cite: 1345-1347, 1391].



### 2. Interfacial Dynamics (Dispersed Phase)
[cite_start]Using the **Pendant Drop Method**, the framework analyzes the stability of various silicon oils[cite: 26, 825, 959]:
* [cite_start]**Convergence via Worthington Number ($Wo$)**: IFT measurements were validated through $Wo$ analysis; stable, accurate data was identified when **$Wo > 0.36$** [cite: 928-929, 1110-1112].
* [cite_start]**Regime Mapping**: Droplet behavior was mapped onto the **Ohnesorge ($Oh$)** vs. **$D/\eta$** regime map, identifying thresholds for "Sharp Neck" vs. "Long Neck" fragmentation [cite: 425-441, 1486-1490].

## 📂 Project Structure
* [cite_start]**`/Turbulence_Analysis`**: MATLAB processing for 2D-PIV data (Phantom VEO 340L) to extract TKE and $\epsilon$[cite: 84, 731, 956].
* **`/Interfacial_Tension`**: Analysis of Pendant Drop tensiometry (OCA-25) to calculate Bond ($Bo$) and Worthington ($Wo$) numbers[cite: 494, 959, 1074].

## 🛠 Experimental Specifications
* **Facility**: Jet-stirred tank achieving jet Reynolds numbers up to **100,000**[cite: 983, 1021].
* [cite_start]**Fluids**: Dow Corning 200 0.65CS, Wacker-AK 1000, and Shin-Etsu KF-56[cite: 960].
* [cite_start]**Imaging**: High-speed PIV at frequencies up to **2.5 kHz**[cite: 1048].

## 🎓 Academic Context
* **Author**: Hesam Pero [cite: 4]
* [cite_start]**Advisors**: Prof. Domenico Borello (Sapienza) [cite: 7]
* **Co-Advisors**: Prof. Alfredo Soldati (TU Wien), PhD. [cite_start]Giuseppe Caridi, Leonel Beckedorff [cite: 9, 1614]
* **Defense Date**: 24 September 2024 [cite: 11]

## 📄 License & Citation
This project is licensed under the **MIT License**. As part of the academic record for this research, please cite this repository and include the license in relevant bibliographies.
