# vteam-example-bike

Denna strukturen kan hållas i varje repo som gör det smidigt att sätta ihop och starta tillsammans i systemet.

I rooten för varje repo ligger en README, ett bash-skript och en Dockerfile. Resten av filerna ligger sedan i en egen mapp, namnet är egentligen orelevant men förslagsvis src, app, root eller liknande. Det är sedan i den mappen man lägger själva applikationen och all kod, troligen det som tidgare varit rooten i andra repon man gjort.

När man jobbar med sitt repo så bygger man det via docker och jobbar i containern med alla filer tillagda som volymer, då kan man vara säker på att alla kommer ha samma miljö när de sedan ska kopplas ihop. Imagen behöver alltså inte sparas och/eller laddas upp i utvecklingsfasen. Förslagsvis så använder man ett bash-skript som sköter detta åt en då kan man i huvudrepot sedan använda i stora drag samma uppsättning för att koppla ihop allt. Det blir även enklare för andra att bara köra skriptet för att köra repot lokalt.

I det här repot görs allt i bash-skriptet, utan en docker-compose, för att visa ett exempel hur man kan göra. Man kan starta repot med:
```
./setup.bash
```

Som startar containern, och sedan är man inne i containern för att visa hur man kan jobba kvar i containern och köra sina filer där.

