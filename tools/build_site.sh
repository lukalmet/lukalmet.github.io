#!/bin/sh

IFS=";"

while read source_image order family genus binomial code french author france world_iucn france_iucn alimentation migrateur habitat resident hivernant nicheur longueur envergure  lien_order lien_family

do

  # On affiche dans la console le nom de l'espèce
  echo "Espèce : $french ($binomial)"

  # On copie le template HTML pour l'espèce (on duplique le fichier)
  cp ./assets/template.html ./assets/$code.html

  sed -i '' 's|{{source_image}}|'"${source_image}"'|g' "./assets/$code.html";
  sed -i '' 's|{{order}}|'"${order}"'|g' "./assets/$code.html";
  sed -i '' 's|{{family}}|'"${family}"'|g' "./assets/$code.html";
  sed -i '' 's|{{genus}}|'"${genus}"'|g' "./assets/$code.html";
  sed -i '' 's|{{code}}|'"${code}"'|g' "./assets/$code.html";
  sed -i '' 's|{{french}}|'"${french}"'|g' "./assets/$code.html";
  sed -i '' 's|{{binomial}}|'"${binomial}"'|g' "./assets/$code.html";
  sed -i '' 's|{{author}}|'"${author}"'|g' "./assets/$code.html";
  sed -i '' 's|{{france}}|'"${france}"'|g' "./assets/$code.html";
  sed -i '' 's|{{world_iucn}}|'"${world_iucn}"'|g' "./assets/$code.html";
  sed -i '' 's|{{france_iucn}}|'"${france_iucn}"'|g' "./assets/$code.html";
  sed -i '' 's|{{alimentation}}|'"${alimentation}"'|g' "./assets/$code.html";
  sed -i '' 's|{{migrateur}}|'"${migrateur}"'|g' "./assets/$code.html";
  sed -i '' 's|{{habitat}}|'"${habitat}"'|g' "./assets/$code.html";
  sed -i '' 's|{{resident}}|'"${resident}"'|g' "./assets/$code.html";
  sed -i '' 's|{{hivernant}}|'"${hivernant}"'|g' "./assets/$code.html";
  sed -i '' 's|{{nicheur}}|'"${nicheur}"'|g' "./assets/$code.html";
  sed -i '' 's|{{longueur}}|'"${longueur}"'|g' "./assets/$code.html";
  sed -i '' 's|{{envergure}}|'"${envergure}"'|g' "./assets/$code.html";
  sed -i '' 's|{{lien_order}}|'"../index.html#${order}"'|g' "./assets/$code.html";
  sed -i '' 's|{{lien_family}}|'"../index.html#${family}"'|g' "./assets/$code.html";


done < ./data/data.csv
