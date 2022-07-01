echo "Installing JDK"
apt-get update && \
apt-get install -y openjdk-8-jdk && \
apt-get install -y ant && \
apt-get clean
#sudo apt-get install openjdk-8-jdk

echo "Install SFDX Scanner"
echo -e 'y/n' | sfdx plugins:install @salesforce/sdfx-scanner

echo "Running SFDX Scanner"
npx sfdx scanner:run --target "**/default/**" --format "csv" --outfile "sfdxScannerAnalysis.csv"  --violations-cause-error