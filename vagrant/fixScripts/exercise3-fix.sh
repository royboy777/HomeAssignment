#!/bin/bash
#add fix to exercise3 here
#add fix to exercise2 here
#solution to the problem where http command failed with http 403 error - forbidden
#problem was that the configuration of the local apache2 denied acces from any
#the solution was to allow access to any instead
sudo sed -i 's/deny from all/allow from all/g' /etc/apache2/sites-available/default
