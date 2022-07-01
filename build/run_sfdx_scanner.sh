echo "Installing JDK"
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jre

echo "Install SFDX Scanner"
echo -e 'y/n' | sfdx plugins:install @salesforce/sfdx-scanner

echo "Running SFDX Scanner"
npm sfdx scanner:run --target "**/default/**" --format "csv" --outfile "sfdxScannerAnalysis.csv"  --violations-cause-error