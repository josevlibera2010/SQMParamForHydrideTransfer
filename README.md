# Supporting Information: GFN2-xTB Parameter Optimization for Enzymatic Reactions

This repository contains the supporting information and data for the article "Multi-objective evolutionary strategy for improving semiempirical Hamiltonians in the study of enzymatic reactions at the QM/MM level of theory."

## Repository Structure

The repository is organized into the following sections to facilitate result reproduction:

### 1. Training Sets (`1-TRAINING_SETS/`)

Contains quantum mechanical data used for parameter optimization:

- `CCR-IRC/`: IRC calculations data for Crotonyl-CoA carboxylase/reductase (CCR)
- `CCR-SC/`: Scan calculations data for CCR
- `DHFR-SC/`: Scan calculations data for dihydrofolate reductase (DHFR)

All quantum mechanical calculations were performed at the M06-2X/def2-TZVP level of theory.

### 2. Optimized Parameters (`2-Optimized_GFN2-xTB_Param/`)

Contains the optimized GFN2-xTB parameter sets:

- `CCR/`: Parameters optimized for CCR
- `DHFR/`: Parameters optimized for DHFR

### 3. ASM Calculations (`3-ASM/`)

Contains Adaptive String Method (ASM) calculation results:

- `CCR/`: Results for CCR
- `DHFR/`: Results for DHFR

### Input Files (`[INPUTS]/`)

Contains initial structures and configuration files:

- `CCR/`: Input files for CCR simulations
- `DHFR/`: Input files for DHFR simulations

## Associated Software

The implementation of our parameter optimization methodology is available in a separate repository:
[gfn2-xtb_paramfitter](https://github.com/josevlibera2010/gfn2-xtb_paramfitter)

## Technical Requirements

To reproduce our results, you will need the following software setup:

Amber24 Suite must be specially compiled to support GFN2-xTB calculations. This requires:
1. Installing GFN2-xTB program and setting up appropriate environment variables
2. Compiling Amber24 with the GFN2-xTB API enabled (refer to Amber24 manual section on QM/MM interfaces for detailed instructions)

Additional required software:
1. Gaussian16 for reference calculations
2. Python environment with dependencies as specified in the code repository's requirements.txt file

Please note that standard Amber24 installations without GFN2-xTB API support will not be sufficient for reproducing these calculations.

## Authors and Contact

For inquiries about this supporting information or methodology:
- José Luís Velázquez-Libera (josevlibera2010@gmail.com)

## Acknowledgments

This research was supported by ANID/CONICYT FONDECYT Postdoctorado No.3240216. The authors acknowledge computational resources provided by the Computational center at the University of Valencia and NLHPC (ECM-02).

## License

This work is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Citation

When using this data or methodology in your research, please cite:

```bibtex
@article{velazquez2024multiobj,
  title={Multi-objective evolutionary strategy for improving semiempirical Hamiltonians in the study of enzymatic reactions at the QM/MM level of theory},
  author={Velázquez-Libera, José Luís and others},
  journal={[Journal Name]},
  year={2024},
  publisher={[Publisher]}
}
```