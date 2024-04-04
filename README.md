# KilL-DAP. Use

This repository contains two scripts designed for penetration testing purposes, focusing on user enumeration and data extraction from a web application.

This Bash script utilizes wfuzz to identify valid LDAP methods from a target web application. By sending various LDAP queries and analyzing the responses, it extracts methods enclosed within double quotes, indicating successful queries. The identified methods serve as a basis for subsequent data extraction in the main Python script.

***

##### Install requirements:

~~~bash
git clone https://github.com/JoseVazquez101/Kil-DAP.-LDAP-injection
cd Kil-DAP.-LDAP-injection
pip install -r requirements.txt
sudo apt install wfuzz
~~~

***

##### Use:

~~~bash
python3 kilLDAP.py
~~~

