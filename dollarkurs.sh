#!/bin/bash
#
#Author: Rösch Florian
#Name: Dollarkurs / B.7 dollarkurs
#Date:07.14.2023 (m.d.y)
# This scipt gives you the excange 1 euro to dollar

site_text=$(lynx -dump https://markets.businessinsider.com/currencies/eur-usd)
# echo "$site_text"

output=$(echo "$site_text" | grep -A 2 "Currency Snapshot" | sed -n '3p')
echo "$output" $