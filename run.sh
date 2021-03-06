#!/bin/bash
#
# ==============================================================================
# Download Results in order to plot graphics
# ==============================================================================

cd scripts/;

chmod +x *.sh;
echo "Downloading dataset...";
bash downloadResults.sh;
echo "Intalling tools required for plots dataset...";
bash installTools.sh;
echo "Recreating plots Profiles and Dynamic Profiles...";
bash reprArticlePlot.sh;
echo "Recreating plots of Cardinality Growth and TMs...";
bash processResults.sh 0 1 1 1 1 1 1 1;

cd ..;
