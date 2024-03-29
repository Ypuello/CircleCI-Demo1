echo "Installing JDK"
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:some/ppa
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk

echo "Install SFDX Scanner"
echo -e 'y/n' | sfdx plugins:install @salesforce/sfdx-scanner

echo "Running SFDX Scanner"
npm sfdx scanner:run --target "**/default/**" --format "csv" --outfile "sfdxScannerAnalysis.csv"  --violations-cause-error