#!/bin/bash
for i in {0:7};do
 curl  http://www.dressagedaily.com/market/horse-market/price/30000-and-lower?page=$i | grep "views-label-field-hm-price-value" -C 3 | grep "field-content" | sed "s/[^0-9]//g"
 curl  http://www.dressagedaily.com/market/horse-market/price/30000-50000?page=$i| grep "views-label-field-hm-price-value" -C 3 | grep "field-content" | sed "s/[^0-9]//g"

 curl  http://www.dressagedaily.com/market/horse-market/price/50000-75000?page=$i| grep "views-label-field-hm-price-value" -C 3 | grep "field-content" | sed "s/[^0-9]//g"

 curl  http://www.dressagedaily.com/market/horse-market/price/75000-100000?page=$i| grep "views-label-field-hm-price-value" -C 3 | grep "field-content" | sed "s/[^0-9]//g"

 curl  http://www.dressagedaily.com/market/horse-market/price/100000-and?page=$i| grep "views-label-field-hm-price-value" -C 3 | grep "field-content" | sed "s/[^0-9]//g"
done



