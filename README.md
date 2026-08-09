# Quantum-Enhanced Identification of Virulence Signatures Governing Host Specificity in Xanthomonas

A quantum-enhanced machine learning pipeline integrating comparative proteomics, BLAST-based sequence analysis, feature engineering, and quantum kernel-based classification to identify protein signatures associated with host specificity in *Xanthomonas*.

---

## Project Overview

This project investigates protein signatures associated with host specificity in *Xanthomonas* using a combination of classical bioinformatics, comparative proteomics, machine learning, and quantum machine learning.

The workflow begins with protein FASTA datasets from different *Xanthomonas* groups associated with citrus, grape, pomegranate, and Xoo.

The classical bioinformatics pipeline is used to identify conserved, shared, and unique proteins through comparative proteome and orthology analysis. Selected candidates are further investigated using BLAST-based sequence analysis and structured feature extraction.

The resulting biological features are transformed into numerical datasets and used as input for a quantum machine learning workflow implemented in Python using Google Colab.

The main computational objective is to investigate whether quantum kernel-based learning can be applied to biological feature spaces for host/species-specific classification and candidate identification.

---

## Objectives

The major objectives of this project are:

- Identify protein signatures associated with host/species specificity in *Xanthomonas*.
- Organize and process comparative protein datasets.
- Perform orthology-based comparative proteome analysis.
- Identify unique and group-specific proteins.
- Perform BLAST-based sequence analysis of candidate proteins.
- Extract and engineer computational features from candidate proteins.
- Prepare numerical datasets for machine learning.
- Apply quantum kernel-based machine learning for classification.
- Rank candidate proteins based on classification results.
- Identify candidate protein signatures for further biological investigation.

---

# End-to-End Workflow

```text
Xanthomonas Protein FASTA Datasets
                │
                ▼
       Data Organization
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
 Species/Host-Specific Candidates
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
                ├──────────────────┐
                │                  │
                ▼                  ▼
      Classical Analysis     Quantum ML Pipeline
                │                  │
                │            Quantum Kernel
                │                  │
                │                  ▼
                │             Classification
                │                  │
                └────────┬─────────┘
                         ▼
                 Candidate Ranking
                         │
                         ▼
          Host-Specific Signatures
```

## Dataset

Protein FASTA (.faa) datasets were organized for four major Xanthomonas groups:

Citrus
Grape
Pomegranate
Xoo

The input data are organized as:
```text
data/
└── raw/
    ├── citrus/
    │   └── protein.faa
    ├── grape/
    │   └── protein.faa
    ├── pomegranate/
    │   └── protein.faa
    └── xoo/
        └── protein.faa
```
These protein sequences form the starting point for the comparative proteomics and downstream machine learning workflow.

# Classical Bioinformatics Pipeline
## 1. Protein Dataset Preparation

Protein FASTA files were collected and organized according to their corresponding Xanthomonas groups.

The datasets were maintained in a structured directory to allow independent processing and comparative analysis.

## 2. Comparative Proteome Analysis

The protein datasets were compared to investigate similarities and differences between the different Xanthomonas groups.

This stage provides the basis for identifying proteins that are conserved, shared, or specific to particular groups.

## 3. Orthology Analysis

Orthology analysis was performed to identify relationships between proteins across the different datasets.

The analysis was used to identify:

- Conserved proteins
- Shared protein groups
- Group-specific proteins
- Unique protein candidates

The identified unique proteins were subsequently used for host/species-specific candidate analysis.

## 4. Unique Protein Identification

Following orthology analysis, candidate proteins that were unique to individual groups were extracted.

The analysis was performed for:

Citrus
Grape
Pomegranate
Xoo

These candidates formed the basis for downstream sequence analysis and classification.

## 5. BLAST-Based Sequence Analysis

BLAST-based sequence analysis was performed on selected candidate proteins.

The purpose of this stage was to compare candidate protein sequences and obtain sequence-level information useful for candidate evaluation and classification.

The BLAST results were processed into structured datasets for downstream analysis.

# Machine Learning Pipeline
## 6. Candidate Feature Extraction

The information obtained from the comparative proteome and BLAST analysis was organized into structured datasets.

Candidate proteins were processed to generate features suitable for computational classification.

The workflow included:

- Candidate selection
- Feature extraction
- Data transformation
- Numerical encoding
- Classification dataset preparation


## 7. Feature Engineering

The candidate information was transformed into numerical representations for machine learning.

The feature engineering stage included:

Selection of relevant features
Numerical representation of biological information
Data transformation
Preparation of classification datasets
Generation of numerical feature matrices

Example generated datasets include:
```text
quantum_input_numeric.tsv
quantum_input_numeric_loge.tsv
```

Quantum Machine Learning
## 8. Quantum Kernel-Based Classification

A major component of this project is the application of quantum machine learning using a quantum kernel-based approach.

After completing the classical bioinformatics and feature-engineering stages, the processed numerical feature datasets were used as input for the quantum machine learning workflow.

The quantum analysis was implemented in Python using Google Colab.

The computational workflow is:
```text
Biological Protein Data
          │
          ▼
   Feature Engineering
          │
          ▼
 Numerical Feature Matrix
          │
          ▼
 Quantum Feature Representation
          │
          ▼
     Quantum Kernel
          │
          ▼
     Kernel Matrix
          │
          ▼
     Classification
          │
          ▼
      Prediction
          │
          ▼
   Candidate Ranking
```
The quantum kernel approach was used to investigate relationships between biological feature vectors in a quantum-enhanced feature space.

## 9. Quantum Machine Learning Pipeline

The quantum machine learning stage followed the classical biological data-processing workflow.

The major computational steps were:
```text
Input Dataset
     ↓
Data Loading
     ↓
Feature Selection
     ↓
Data Preprocessing
     ↓
Feature Transformation
     ↓
Quantum Feature Mapping
     ↓
Quantum Kernel Computation
     ↓
Kernel-Based Classification
     ↓
Prediction
     ↓
Candidate Evaluation
```
This approach allows the project to combine computational biology with modern quantum machine learning techniques.

## 10. Classical and Quantum Integration

The project separates the biological feature-generation stage from the quantum machine-learning stage.

## Classical Computational Pipeline
```text
Protein Sequences
       ↓
Orthology Analysis
       ↓
Unique Protein Identification
       ↓
BLAST Analysis
       ↓
Candidate Extraction
       ↓
Feature Engineering
       ↓
Numerical Dataset
```
## Quantum Machine Learning Pipeline
```text
Numerical Dataset
       ↓
Quantum Feature Representation
       ↓
Quantum Kernel
       ↓
Classification
       ↓
Prediction
       ↓
Candidate Ranking
```
This architecture enables quantum machine learning to be applied to a feature space generated from a real biological problem.

# Candidate Classification and Ranking

The processed candidate features were used to classify candidates according to their association with the different Xanthomonas groups.

The analysis generated combined and ranked candidate datasets.

Important outputs include:

- merged_classified_candidates.tsv
- merged_classified_ranked.tsv
- top10_candidates_annotation_review.tsv
- top10_candidates_per_species_from_classification.tsv
- classified_species_summary.tsv

These outputs provide structured candidate lists for further analysis and interpretation.

# Results

The project generates both classical bioinformatics results and quantum machine learning outputs.

The main result categories include:

## Classical Analysis
```text
citrus_final.tsv
citrus_final_classified.tsv

grape_final.tsv
grape_final_classified.tsv

pomegranate_final.tsv
pomegranate_final_classified.tsv

xoo_final.tsv
xoo_final_classified.tsv
```
## Combined Candidate Results
```text
merged_classified_candidates.tsv
merged_classified_ranked.tsv
classified_species_summary.tsv
```
## Quantum Machine Learning Inputs
```text
quantum_input_numeric.tsv
quantum_input_numeric_loge.tsv
```
## Top Candidate Results
```text
top10_candidates_annotation_review.tsv
top10_candidates_per_species_from_classification.tsv
```
Quantum analysis outputs are maintained separately under the project's quantum results directory.

# Key Technical Contribution

The main computational contribution of this project is the integration of comparative bioinformatics, machine learning, and quantum machine learning into a single workflow.

The project transforms raw biological protein data into a structured machine-learning problem:
```text
Raw Biological Data
        ↓
Comparative Bioinformatics
        ↓
Candidate Protein Identification
        ↓
Feature Engineering
        ↓
Numerical Feature Dataset
        ↓
Quantum Machine Learning
        ↓
Quantum Kernel Classification
        ↓
Prediction
        ↓
Candidate Ranking
```
This demonstrates the application of:

- Data preprocessing
- Feature engineering
- Classification
- Kernel-based learning
- Quantum machine learning
- Biological data analysis
- Python-based computational workflows

# Technologies & Skills

- Programming
- Python
- R
- Bash
- Linux
- Data Science
- Pandas
- NumPy
- Data preprocessing
- Feature engineering
- Numerical data transformation
- Classification
- Candidate ranking
- Machine Learning
- Supervised classification
- Feature preparation
- Kernel-based learning
- Model evaluation
- Quantum Computing
- Quantum Machine Learning
- Quantum Kernel Methods
- Quantum Feature Mapping
- Kernel-Based Classification
- Python-based quantum ML workflows
- Google Colab
- Bioinformatics
- Comparative Proteomics
- Protein Sequence Analysis
- Orthology Analysis
- BLAST
- FASTA/FAA Processing

# Repository Structure
```text
xanthomonas-virulence-host-specificity/
│
├── README.md
├── requirements.txt
├── .gitignore
│
├── data/
│   ├── metadata/
│   └── raw/
│       ├── citrus/
│       ├── grape/
│       ├── pomegranate/
│       └── xoo/
│
├── scripts/
│   ├── bash/
│   ├── python/
│   ├── R/
│   └── extract_species_specific.sh
│
├── quantum_ml/
│   ├── quantum_kernel_prediction.ipynb
│   ├── quantum_kernel_prediction.py
│   └── README.md
│
├── results/
│   ├── classical/
│   └── quantum/
│
├── config/
│   ├── params.yml
│   ├── paths.yml
│   ├── samples.csv
│   └── samples.tsv
│
└── add_xo_to_project.sh
```

# Future Improvements
- Compare quantum-kernel classification with conventional machine learning models.
- Evaluate Support Vector Machines, Random Forest, and Logistic Regression approaches.
- Perform systematic hyperparameter optimization.
- Increase the number of Xanthomonas strains and host groups.
- Evaluate additional quantum feature maps and kernel methods.
- Perform cross-validation and expanded model evaluation.
- Integrate additional biological annotation features.
- Integrate additional virulence-factor databases.
- Develop an automated end-to-end pipeline.
- Perform functional annotation and enrichment analysis.
- Develop interactive visualization for candidate exploration.
- Experimentally validate the most promising candidate proteins.


# Skills Demonstrated

Python • Machine Learning • Quantum Machine Learning • Quantum Kernels • Feature Engineering • Data Analysis • Pandas • NumPy • Linux • Bash • R • BLAST • Comparative Proteomics • Computational Biology
