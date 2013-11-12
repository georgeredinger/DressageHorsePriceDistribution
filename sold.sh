#!/bin/bash
#assume 12 pages of sold horses
for i in {0..12};do
 curl http://www.dressagedaily.com/market/horse-market/price/sold?page=$i  > sold$i.html
done

