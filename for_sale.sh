#!/bin/bash
for i in {0..7};do
 curl  http://www.dressagedaily.com/market/horse-market/price/30000-and-lower?page=$i  > for_sale30_$i.html
 curl  http://www.dressagedaily.com/market/horse-market/price/30000-50000?page=$i> for_sale50_$i.html
 curl  http://www.dressagedaily.com/market/horse-market/price/50000-75000?page=$i> for_sale75html
 curl  http://www.dressagedaily.com/market/horse-market/price/75000-100000?page=$i> for_sale100_$i.html
 curl  http://www.dressagedaily.com/market/horse-market/price/100000-and?page=$i> for_sale100+_$i.html
done



