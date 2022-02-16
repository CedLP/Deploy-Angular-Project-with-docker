#!/bin/bash

if [ $APP_ENV == "prod" ]; then
 ng build --prod --aot=true --commonChunk --optimization=true --vendorChunk --extractCss=true
elif [ $APP_ENV == "staging" ]; then
 ng build --configuration=preprod  --aot=true --commonChunk --optimization=true --vendorChunk --extractCss=true
else
 ng serve --host 0.0.0.0 --poll=2000
fi
