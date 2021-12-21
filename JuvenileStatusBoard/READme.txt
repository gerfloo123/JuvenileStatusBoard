## JuvenileStatusBoard

JuvenileStatusBoard is an asp.net web application with Oracle db (Other languages c#, html, css).
For now we are focusing on Lewiston location, but that may change to more locations in the future.
The main purpose of the JuvenileStatusBoard is to display information based on the facilities (Lewiston) groups.
We first display the group with the total juveniles in facility and a total out of the facility. Below that we get information 
for every juvenile currently in that group, for example general notes LMA restrictions and other information about
that juvenile that will be important to staff for that day.

Currently the website is to Refresh every 15 minutes.

## Installation

Download JSB folder, run JuvenileStatusBoard.sln on Visual Studio, ctrl-shift-b to compile and then run.

## Usage

before deploying
* move VS version from 4.7.2 to 4.5
* solution platform set to x86

after cleaning/deploying
* copy files in JSB folder onto the servers website folder
* also copy TNS file onto servers website folder
* In advance setting for App pool Enable 32 bit app to TRUE
* site will live on .166 
* include next line in host file (leif is working on IDJC DNS instead of host file)
  164.165.156.166		juvenilestatusboard.ijos.idaho.gov
  C:\Windows\System32\drivers\etc

## Contributing

## License
