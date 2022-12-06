#!/usr/bin/bash

echo "[+] [Domain:$1]"
echo "----------------------------------------------------------------------------------------------------------"
api1="API_KEY_AQUI"

### Pagina 1 a Pagina 5 ###

################################################ rateLimitExceeded quota_limit_value": "100" na api do google #######################
### page1 ###

curl -X GET "https://www.googleapis.com/customsearch/v1?key=${api1}&q=$1+$2&alt=json" | grep -Po "(http|ftp|https):\/\/([\w_-]+(?:(?:\.[\w_-]+)+))([\w.,@?^=%&:\/~+#-]*[\w@?^=%&\/~+#-])" | sort -u | egrep -v '(.css|.png|.jpeg|.jpg|.svg|.gif|.wolf|.JPG|.PNG|googleapis.com|gstatic.com)'

api2="API_KEY_AQUI"
### page2 ###
curl -X GET "https://www.googleapis.com/customsearch/v1?key=${api2}&q=$1+$2&start=10&alt=json" | grep -Po "(http|ftp|https):\/\/([\w_-]+(?:(?:\.[\w_-]+)+))([\w.,@?^=%&:\/~+#-]*[\w@?^=%&\/~+#-])" | sort -u | egrep -v '(.css|.png|.jpeg|.jpg|.svg|.gif|.wolf|.JPG|.PNG|googleapis.com|gstatic.com)'

api3="API_KEY_AQUI"
### page3 ###
curl -X GET "https://www.googleapis.com/customsearch/v1?key=${api3}&q=$1+$2&start=20&alt=json" | grep -Po "(http|ftp|https):\/\/([\w_-]+(?:(?:\.[\w_-]+)+))([\w.,@?^=%&:\/~+#-]*[\w@?^=%&\/~+#-])" | sort -u | egrep -v '(.css|.png|.jpeg|.jpg|.svg|.gif|.wolf|.JPG|.PNG|googleapis.com|gstatic.com)'

api4="API_KEY_AQUI"

### page4 ###
curl -X GET "https://www.googleapis.com/customsearch/v1?key=${api4}&q=$1+$2&start=30&alt=json" | grep -Po "(http|ftp|https):\/\/([\w_-]+(?:(?:\.[\w_-]+)+))([\w.,@?^=%&:\/~+#-]*[\w@?^=%&\/~+#-])" | sort -u | egrep -v '(.css|.png|.jpeg|.jpg|.svg|.gif|.wolf|.JPG|.PNG|googleapis.com|gstatic.com)'

api5="API_KEY_AQUI"

### page5 ###
curl -X GET "https://www.googleapis.com/customsearch/v1?key=${api5}&q=$1+$2&start=40&alt=json" | grep -Po "(http|ftp|https):\/\/([\w_-]+(?:(?:\.[\w_-]+)+))([\w.,@?^=%&:\/~+#-]*[\w@?^=%&\/~+#-])" | sort -u | egrep -v '(.css|.png|.jpeg|.jpg|.svg|.gif|.wolf|.JPG|.PNG|googleapis.com|gstatic.com)'

echo "----------------------------------------------------------------------------------------------------------"
