#!/bin/bash

read -p "Enter your year of birth: " birth_year

current_year=2024

age_current=$(($current_year - $birth_year))
age_2020=$((2020 - $birth_year))
age_2030=$((2030 - $birth_year))

echo "Your age in $current_year: $age_current"
echo "Your age in 2020: $age_2020"
echo "Your age in 2030: $age_2030"
