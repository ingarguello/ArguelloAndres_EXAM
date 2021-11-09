echo Installing Sonar Scanner CLI
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
unzip sonar-scanner-cli-4.6.2.2472-linux.zip
export PATH=$(pwd)/sonar-scanner-cli-4.6.2.2472-linux/bin:$PATH
echo Sonar Scanner Installed!
echo Running Sonar Scanner...
# We add here the command that runs sonar scanner
sonar-scanner \
  -Dsonar.projectKey=ArguelloAndres_EXAM \
  -Dsonar.sources=. \
  -Dsonar.host.url=https://sonar.semanticsecurity.org \
  -Dsonar.login=$SONARQUBE_LOGIN
echo Done!


