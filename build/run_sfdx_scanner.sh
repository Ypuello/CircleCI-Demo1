echo "Installing JDK"
sudo apt update
sudo apt install default-jre
#sudo apt install default-jdk
sudo apt-get install openjdk-8-jdk

echo "Install SFDX Scanner"
echo -e 'y/n' | sfdx plugins:install @salesforce/sdfx-scanner

echo "Running SFDX Scanner"
npx sfdx scanner:run --target "**/default/**" --format "csv" --outfile "sfdxScannerAnalysis.csv"  --violations-cause-error