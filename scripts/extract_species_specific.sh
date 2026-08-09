#!/bin/bash
set -e

RESULTS="/home/uttej/xanthomonas_3proteome_project/results/orthology/input_fastas/OrthoFinder/Results_Apr20/Orthogroups"
mkdir -p "${RESULTS}/analysis"

python3 - << 'PY'
import pandas as pd
from pathlib import Path

base = Path("/home/uttej/xanthomonas_3proteome_project/results/orthology/input_fastas/OrthoFinder/Results_Apr20/Orthogroups")
gc = pd.read_csv(base / "Orthogroups.GeneCount.tsv", sep="\t")
gc = gc.rename(columns={gc.columns[0]: "Orthogroup"})

species_cols = list(gc.columns[1:])
mask_species_specific = gc[species_cols].astype(int).eq(0).sum(axis=1) == (len(species_cols) - 1)
species_specific = gc[mask_species_specific].copy()

species_specific.to_csv(base / "analysis" / "species_specific_orthogroups.tsv", sep="\t", index=False)

single_copy = pd.read_csv(base / "Orthogroups_SingleCopyOrthologues.txt", sep="\t", header=None)
single_copy.columns = ["Orthogroup"]
single_copy.to_csv(base / "analysis" / "single_copy_orthogroups.tsv", sep="\t", index=False)

print("Species-specific orthogroups:", species_specific.shape[0])
print("Single-copy orthogroups:", single_copy.shape[0])
PY
