#!
URL="https://ort.foodcoop.com/calendar/0/0/0/2025-11-01/"
CLEAN_URL=$(echo $URL|sed 's/[^0-9a-zA-Z]/_/g')
echo $CLEAN_URL
# exit
for (( i=1; i<=1000; i++ ))
do
  echo "Number $i"
DATE="$(date) $(date +%s)"
# wget -k -p -r https://www.zohranfornyc.com/
# curl "${URL}"   -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7'   -H 'Accept-Language: en-US,en;q=0.9,it-IT;q=0.8,it;q=0.7'   -H 'Cache-Control: no-cache'   -H 'Connection: keep-alive'   -b '_gid=GA1.2.1023248861.1761994766; _ga=GA1.1.406104493.1760461909; _ga_J5S14FGSF1=GS2.1.s1761994765$o3$g1$t1761994793$j32$l0$h0; csrftoken=mrhpCzXaNpj0zakWTVgS18zHvfsHOVDY; sessionid=ekz9ear4ah7mf419k6s3f7zhxnspi19b; _ga_6P9WTJFDPZ=GS2.1.s1761994776$o1$g1$t1761995171$j59$l0$h0'   -H 'DNT: 1'   -H 'Pragma: no-cache'   -H 'Referer: https://ort.foodcoop.com/profile/'   -H 'Sec-Fetch-Dest: document'   -H 'Sec-Fetch-Mode: navigate'   -H 'Sec-Fetch-Site: same-origin'   -H 'Sec-Fetch-User: ?1'   -H 'Upgrade-Insecure-Requests: 1'   -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36'   -H 'sec-ch-ua: "Chromium";v="140", "Not=A?Brand";v="24", "Google Chrome";v="140"'   -H 'sec-ch-ua-mobile: ?0'   -H 'sec-ch-ua-platform: "Linux"' |tee "${DATE} ${CLEAN_URL}.html"  |html2text >  "${DATE} ${CLEAN_URL}.txt"
# curl 'https://ort.foodcoop.com/calendar/0/0/0/2025-11-02/' \
curl "${URL}" \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' \
  -H 'Accept-Language: en-US,en;q=0.9,it-IT;q=0.8,it;q=0.7' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -b '_ga=GA1.1.406104493.1760461909; _ga_J5S14FGSF1=GS2.1.s1761997413$o4$g0$t1761997413$j60$l0$h0; csrftoken=vlYPMBxRVB39WeVOqQhk2MKb4Q4Ii2CW; sessionid=j66t2jkx17zj6ofa0t9y0odamt1z9lr7; _ga_6P9WTJFDPZ=GS2.1.s1762120120$o3$g1$t1762120288$j15$l0$h0' \
  -H 'DNT: 1' \
  -H 'Pragma: no-cache' \
  -H 'Referer: https://ort.foodcoop.com/profile/' \
  -H 'Sec-Fetch-Dest: document' \
  -H 'Sec-Fetch-Mode: navigate' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'Sec-Fetch-User: ?1' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua: "Chromium";v="140", "Not=A?Brand";v="24", "Google Chrome";v="140"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"'
done

    git add .
    git commit -m "${DATE}" .
    git pull --quiet
    git push

