# xanthomonas-virulence-host-specificity
Quantum-enhanced identification of virulence signatures governing host specificity in Xanthomonas using bioinformatics and quantum kernel-based prediction.

## Overview

This project investigates protein signatures associated with host specificity in *Xanthomonas* using a combination of classical comparative genomics, protein sequence analysis, BLAST-based analysis, and quantum-kernel-based machine learning.

The workflow starts with protein FASTA datasets from different *Xanthomonas* groups associated with citrus, grape, pomegranate, and Xoo. Orthology analysis is used to identify shared and unique protein groups, followed by downstream sequence comparison and candidate identification.

The resulting species/host-specific protein features are then prepared for machine-learning analysis. A quantum kernel-based classification workflow implemented in Google Colab is used as the quantum-enhanced component of the project.

The overall objective is to identify candidate protein signatures that contribute to distinguishing host/species-specific groups and may represent potential virulence-associated signatures.


## Project Overview

This project develops a **quantum-enhanced machine learning pipeline** for identifying protein signatures associated with host specificity in *Xanthomonas*.

The project combines:

- **Python-based data processing**
- **Comparative proteomics**
- **BLAST-based sequence analysis**
- **Feature engineering**
- **Classical classification**
- **Quantum kernel-based machine learning**
- **Candidate ranking and prediction**

The main computational objective is to transform biological protein-level information into a structured feature space and investigate whether **quantum kernel methods can be applied for host/species-specific classification**.

# End-to-End Workflow

```text
Protein FASTA Datasets
        │
        ▼
Data Preprocessing
        │
        ▼
Comparative Proteome Analysis
        │
        ▼
Orthology Analysis
        │
        ▼
Unique Protein Identification
        │
        ▼
BLAST-Based Analysis
        │
        ▼
Candidate Feature Extraction
        │
        ▼
Feature Engineering
        │
        ▼
Numerical Feature Matrix
        │
        ├───────────────┐
        │               │
        ▼               ▼
 Classical          Quantum ML
 Classification      Pipeline
        │               │
        │          Quantum Kernel
        │               │
        │               ▼
        │          Classification
        │               │
        └───────┬───────┘
                ▼
       Candidate Ranking
                │
                ▼
    Host-Specific Signatures
```
Computational Pipeline

## 1. Data Preparation

Protein FASTA datasets were organized into structured datasets representing different Xanthomonas groups.

```text
data/
└── raw/
    ├── citrus/
    ├── grape/
    ├── pomegranate/
    └── xoo/
```
The protein sequences were used as the starting point for the downstream computational analysis.

## 2. Comparative Proteomics and Orthology Analysis

The protein datasets were compared to identify relationships between proteins across the different groups.

Orthology analysis was used to identify:

Conserved proteins
Shared proteins
Group-specific proteins
Unique protein candidates

This stage reduced the original protein datasets into a set of candidate proteins that could be used for classification.

## 3. BLAST-Based Feature Generation

BLAST-based sequence analysis was performed on selected protein candidates.

The resulting sequence-level information was processed into structured datasets for downstream computational analysis.

This stage connected the biological sequence information with the machine-learning feature generation pipeline.

Machine Learning Pipeline

## 4. Feature Engineering

The identified candidate proteins were transformed into structured numerical features.

The feature engineering stage included:

- Candidate selection
- Feature extraction
- Data transformation
- Numerical encoding
- Classification dataset preparation

The resulting datasets were prepared specifically for machine-learning analysis.

Quantum Machine Learning

## 5. Quantum Kernel-Based Classification

A major component of this project is the application of quantum machine learning using a quantum kernel approach.

After completing the classical bioinformatics and feature-engineering stages, the processed numerical feature matrix was transferred to a Google Colab-based Python environment for quantum machine-learning analysis.

The workflow can be summarized as:
```text
Biological Protein Data
        ↓
Feature Engineering
        ↓
Numerical Feature Matrix
        ↓
Quantum Feature Representation
        ↓
Quantum Kernel
        ↓
Kernel Matrix
        ↓
Classification
        ↓
Prediction
```

The quantum kernel approach was investigated as a method for learning relationships between feature vectors in a quantum-enhanced feature space.

This allowed the project to combine bioinformatics data processing with quantum machine-learning techniques.

## 6. Quantum Kernel Prediction Pipeline

The quantum machine-learning workflow was implemented using Python in Google Colab.

The major computational stages were:
```text
Input Dataset
     ↓
Data Loading
     ↓
Feature Selection
     ↓
Data Preprocessing
     ↓
Feature Scaling / Transformation
     ↓
Quantum Feature Mapping
     ↓
Quantum Kernel Computation
     ↓
Kernel-Based Classification
     ↓
Prediction
     ↓
Model Evaluation
```
The quantum analysis generated additional prediction and candidate-analysis outputs.

## 7. Classical vs Quantum Analysis

The project separates the biological data-processing pipeline from the quantum machine-learning stage.
```text

CLASSICAL COMPUTATIONAL PIPELINE
--------------------------------
Protein Sequences
      ↓
Orthology
      ↓
BLAST
      ↓
Candidate Extraction
      ↓
Feature Engineering
      ↓
Numerical Dataset


QUANTUM ML PIPELINE
-------------------

Numerical Dataset
      ↓
Quantum Feature Mapping
      ↓
Quantum Kernel
      ↓
Classification
      ↓
Prediction
      ↓
Candidate Ranking

```
This architecture allows the quantum component to operate on features generated from a real biological problem rather than on an artificial dataset.

Candidate Classification and Ranking

The processed features were used to classify candidates according to their association with the different Xanthomonas groups.

The analysis produced ranked candidate datasets including:
```text
merged_classified_candidates.tsv
merged_classified_ranked.tsv
top10_candidates_annotation_review.tsv
top10_candidates_per_species_from_classification.tsv
```
These outputs were used to identify the most relevant candidate proteins from the classification analysis.

Results

The major results are divided into classical bioinformatics outputs and quantum machine-learning outputs.
```text

results/
│
├── classical/
│   ├── citrus_final.tsv
│   ├── citrus_final_classified.tsv
│   ├── grape_final.tsv
│   ├── grape_final_classified.tsv
│   ├── pomegranate_final.tsv
│   ├── pomegranate_final_classified.tsv
│   ├── xoo_final.tsv
│   ├── xoo_final_classified.tsv
│   ├── merged_classified_candidates.tsv
│   └── merged_classified_ranked.tsv
│
└── quantum/
    ├── quantum_input_numeric.tsv
    ├── quantum_input_numeric_loge.tsv
    ├── top10_candidates_annotation_review.tsv
    ├── top10_candidates_per_species_from_classification.tsv
    └── quantum_colab_outputs/
```
Technologies & Skills Demonstrated
Programming
Python
R
Bash / Linux
Data Science
Pandas
NumPy
Data preprocessing
Feature engineering
Numerical data transformation
Classification
Candidate ranking
Machine Learning
Supervised classification
Feature preparation
Model evaluation
Kernel-based learning
Quantum Computing
Quantum Machine Learning
Quantum Kernel Methods
Quantum feature mapping
Kernel-based classification
Google Colab-based quantum ML experimentation
Bioinformatics
Protein sequence analysis
Comparative proteomics
Orthology analysis
BLAST
FASTA/FAA processing

Key Technical Contribution

The key computational contribution of this project is the integration of a quantum-kernel-based machine-learning approach with a biological feature-generation pipeline.

Instead of directly applying quantum machine learning to raw biological sequences, the project follows an end-to-end computational architecture:
```text
Raw Biological Data
        ↓
Computational Biology
        ↓
Feature Engineering
        ↓
Machine-Learning Dataset
        ↓
Quantum Machine Learning
        ↓
Classification
        ↓
Prediction & Candidate Ranking
```
This demonstrates the ability to combine domain-specific data processing with modern machine-learning and quantum-computing techniques.

Reproducibility

The repository separates the different stages of the computational workflow.

Classical Analysis

The Linux-based scripts are available under:
```text
scripts/
├── bash/
├── python/
└── R/
```

Quantum Machine Learning

The quantum machine-learning implementation is available under:
```text
quantum_ml
```

Future Improvements
Compare quantum-kernel classification against conventional ML algorithms such as SVM, Random Forest and Logistic Regression.
Perform systematic hyperparameter optimization.
Increase the number of Xanthomonas strains and host groups.
Evaluate additional quantum feature maps and kernel approaches.
Perform cross-validation and more extensive model evaluation.
Integrate additional biological annotation features.
Develop an automated end-to-end pipeline from raw protein data to prediction.
Develop an interactive visualization/dashboard for candidate exploration.

Project Skills

Python | Machine Learning | Quantum Machine Learning | Quantum Kernels | Feature Engineering | Data Analysis | Pandas | NumPy | Linux | Bash | BLAST | Computational Biology
