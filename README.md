# nxdomain_attack
This is a bash script designed to carry out an NXDOMAIN attack, and more specifically, the Random Subdomain attack variant. This is a DNS-based Denial of Service attack which aims at disrupting the availability of a DNS server by flooding it with requests for invalid or nonexistent records.


# Usage

To use this script follow the instructions below.

To clone the repository locally:
```
git clone https://github.com/nick22d/nxdomain_attack.git
```
To navigate into the repository:
```
cd nxdomain_attack/ 
```
To make the script executable:
```
chmod u+x nxdomain_attack.sh
```
To run the script:
```
./nxdomain_attack.sh
```

- Supply the apex domain of the target domain (i.e. example.com).
- Specify the desired number of lookup requests.

