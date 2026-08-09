# xanthomonas-virulence-host-specificity
Quantum-enhanced identification of virulence signatures governing host specificity in Xanthomonas using bioinformatics and quantum kernel-based prediction.

## Overview

This project investigates protein signatures associated with host specificity in *Xanthomonas* using a combination of classical comparative genomics, protein sequence analysis, BLAST-based analysis, and quantum-kernel-based machine learning.

The workflow starts with protein FASTA datasets from different *Xanthomonas* groups associated with citrus, grape, pomegranate, and Xoo. Orthology analysis is used to identify shared and unique protein groups, followed by downstream sequence comparison and candidate identification.

The resulting species/host-specific protein features are then prepared for machine-learning analysis. A quantum kernel-based classification workflow implemented in Google Colab is used as the quantum-enhanced component of the project.

The overall objective is to identify candidate protein signatures that contribute to distinguishing host/species-specific groups and may represent potential virulence-associated signatures.


## Objectives

The major objectives of this project are:

1. Collect and organize protein datasets from different *Xanthomonas* groups.
2. Perform comparative protein/orthology analysis across the datasets.
3. Identify proteins that are unique or specific to individual groups.
4. Perform BLAST-based sequence analysis of candidate proteins.
5. Extract and organize features associated with host/species specificity.
6. Perform classical classification and candidate ranking.
7. Prepare selected features for quantum machine-learning analysis.
8. Apply a quantum kernel-based prediction workflow.
9. Identify and rank candidate proteins contributing to host-specific classification.
10. Generate structured result tables for downstream biological interpretation.

# Overall Workflow

```text
Xanthomonas Protein Datasets
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
   Identification of Unique
      Protein Groups
            │
            ▼
 Species/Host-Specific Candidate
       Protein Extraction
            │
            ▼
       BLAST Analysis
            │
            ▼
 Candidate Filtering & Annotation
            │
            ▼
 Feature Preparation
            │
            ▼
 Classical Classification
            │
            ▼
 Candidate Ranking
            │
            ▼
 Quantum ML Data Preparation
            │
            ▼
       Quantum Kernel
         Prediction
            │
            ▼
 Final Candidate Signatures


Dataset

The project uses protein FASTA (.faa) datasets representing different Xanthomonas groups.
