o "Java update"

sudo yum update -y

sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y

echo "Download SonarQube latest "

cd /opt

sudo yum install wget -y

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

echo "packages extraction"

sudo yum install unzip -y

sudo unzip /opt/sonarqube-9.3.0.51899.zip

echo "Change ownership to the user and Switch to Linux binaries directory to start service"

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

./sonar.sh start

echo "installation completed"<F10>
