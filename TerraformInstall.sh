sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform


Selenium+Jenkins Integration : Page Object Model (POM) Design With Selenium - Part -6
https://www.jenkins.io/doc/book/installing/linux/#debianubuntu
