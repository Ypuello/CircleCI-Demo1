echo "Installing JDK"
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:webpd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install openjdk-8-jdk

echo "Install SFDX Scanner"
echo -e 'y/n' | sfdx plugins:install @salesforce/sfdx-scanner

echo "Running SFDX Scanner"
npm sfdx scanner:run --target "**/default/**" --format "csv" --outfile "sfdxScannerAnalysis.csv"  --violations-cause-error