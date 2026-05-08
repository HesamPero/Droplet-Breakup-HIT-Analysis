# HIT Droplet Dynamics — Data Analysis Framework
### Signal Processing & Statistical Validation Pipeline for Experimental Turbulence Data

A MATLAB-based data engineering framework developed during my Master's research at 
**Sapienza University of Rome / TU Wien**. The project processes high-frequency 
experimental measurement data from an industrial turbulence facility, applying 
statistical validation, signal processing, and automated QC pipelines to extract 
reliable physical insights from noisy, large-scale datasets.

> **Core focus:** Batch processing of high-frequency PIV measurement data 
> through reproducible MATLAB pipelines — from raw velocity fields to 
> turbulent energy statistics — with automated convergence tracking and 
> statistical decomposition across hundreds of experimental frames.
---

## 🛠️ What This Framework Does

- Ingests and processes **high-frequency PIV image data streams** (up to 2.5 kHz) 
  from industrial-scale measurement equipment
- Applies **automated QC algorithms** to detect and filter invalid measurements 
  before they propagate into analysis
- Extracts **energy dissipation rates (ε)** and turbulent kinetic energy (TKE) 
  from raw velocity fields using second-order structure functions
- Validates **statistical convergence** of interfacial tension measurements using 
  the Worthington Number (Wo) as a convergence criterion
- Produces **interactive visualizations** and regime maps for process classification

---

## 📊 Data Pipeline Overview

### Stage 1 — Raw Data Ingestion & QC
- Input: 2D-PIV velocity fields (Phantom VEO 340L, up to 2.5 kHz)
- Automated outlier detection and signal filtering
- Statistical convergence checks (isotropy ratio u'/v': confirmed 0.87–0.96)

### Stage 2 — Signal Processing
- Fourier transformation and spectral density estimation
- Autocorrelation analysis for turbulent scale identification
- Inertial subrange detection via structure functions (D_LL, D_NN)
- Energy dissipation rate (ε) extraction: up to **0.22 m²/s³**

### Stage 3 — Statistical Validation
- Pendant Drop tensiometry data processed for interfacial tension (IFT)
- Convergence validated via Worthington Number (Wo > 0.36 = stable measurement)
- Bond number (Bo) calculation for fluid characterization

### Stage 4 — Output & Visualization
- Regime classification maps (Ohnesorge vs. D/η)
- Energy cascade plots
- Validated datasets ready for downstream modeling

---

## 📂 Repository Structure
---

## 🎓 Academic Context

| | |
|---|---|
| **Institution** | Sapienza University of Rome / TU Wien (Erasmus) |
| **Advisors** | Prof. D. Borello (Sapienza), Prof. A. Soldati (TU Wien) |
| **Co-Advisors** | Dr. G. Caridi, L. Beckedorff |
| **Defense** | October 2024 |
| **License** | MIT |
