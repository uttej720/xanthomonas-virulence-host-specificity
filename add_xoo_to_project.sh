#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="${PWD}"

echo "Project root: ${PROJECT_ROOT}"
echo "Adding Xanthomonas oryzae support folders..."

mkdir -p "${PROJECT_ROOT}/data/raw/xoo"
mkdir -p "${PROJECT_ROOT}/results/annotation/interproscan/xoo"
mkdir -p "${PROJECT_ROOT}/results/features/sequence_features/xoo"
mkdir -p "${PROJECT_ROOT}/results/features/quantum_features/xoo"

echo "Creating a placeholder README for xoo folder..."
cat > "${PROJECT_ROOT}/data/raw/xoo/README.txt" << 'EOF'
Place the Xanthomonas oryzae protein FASTA file here.
Recommended filename:
protein.faa
EOF

echo "Done."
echo "Next:"
echo "1. Copy the Xanthomonas oryzae .faa file into data/raw/xoo/protein.faa"
echo "2. Update config/samples.tsv"
echo "3. Rebuild orthology input FASTA folder"
echo "4. Rerun OrthoFinder"
