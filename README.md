# HIT Droplet Dynamics Analysis
### Integrated Research Framework for HIT Characterization and Droplet Breakup Dynamics

This repository contains the numerical framework developed for my Master's Thesis at **Sapienza University of Rome** in collaboration with **TU Wien**. The project focuses on validating the **Kolmogorov-Hinze (KH) framework** in high-energy turbulent environments.

## 📊 Data Analysis & Physical Insights

### 1. Turbulence Validation (Continuous Phase)
The framework validates the **TUWien-HIT facility**'s ability to generate Homogeneous Isotropic Turbulence (HIT):
* **Isotropy Analysis**: By computing the ratio of longitudinal to transverse RMS velocity fluctuations ($u'/v'$), the study confirmed levels between **0.87 and 0.96**.
* **Homogeneity**: Velocity RMS profiles remain constant across the octagonal test section, confirming that turbulence properties are independent of position.
* **Energy Cascade**: The analysis identified the **Inertial Subrange** using second-order structure functions ($D_{LL}, D_{NN}$), resolving energy dissipation rates ($\epsilon$) up to **$0.22 \, m^2/s^3$**.

### 2. Interfacial Dynamics (Dispersed Phase)
Using the **Pendant Drop Method**, the framework analyzes the stability of various silicon oils:
* **Convergence via Worthington Number ($Wo$)**: IFT measurements were validated through $Wo$ analysis; stable, accurate data was identified when **$Wo > 0.36$**.
* **Regime Mapping**: Droplet behavior was mapped onto the **Ohnesorge ($Oh$)** vs. **$D/\eta$** regime map, identifying thresholds for "Sharp Neck" vs. "Long Neck" fragmentation.

## 📂 Project Structure
* **`/Turbulence_Analysis`**: MATLAB processing for 2D-PIV data (Phantom VEO 340L) to extract TKE and $\epsilon$.
* **`/Interfacial_Tension`**: Analysis of Pendant Drop tensiometry (OCA-25) to calculate Bond ($Bo$) and Worthington ($Wo$) numbers.

## 🛠 Experimental Specifications
* **Facility**: Jet-stirred tank achieving jet Reynolds numbers up to **100,000**.
* **Fluids**: Dow Corning 200 0.65CS, Wacker-AK 1000, and Shin-Etsu KF-56.
* **Imaging**: High-speed PIV at frequencies up to **2.5 kHz**.

## 🎓 Academic Context
* **Author**: Hesam Pero
* **Advisors**: Prof. Domenico Borello (Sapienza)
* **Co-Advisors**: Prof. Alfredo Soldati (TU Wien), PhD. Giuseppe Caridi, Leonel Beckedorff
* **Defense Date**: 24 September 2024

## 📄 License & Citation
This project is licensed under the **MIT License**. As part of the academic record for this research, please cite this repository and include the license in relevant bibliographies.
