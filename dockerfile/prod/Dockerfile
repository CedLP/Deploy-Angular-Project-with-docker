FROM node:14.15.1 AS node

RUN npm install -g @angular/cli@11.x.x #Add your angular cli version here
WORKDIR /app/app
COPY . .

RUN npm install
RUN ng build --prod --aot=true --commonChunk --optimization=true --vendorChunk --extractCss=true

FROM nginx:alpine
COPY ./dockerfile/prod/default.conf /etc/nginx/conf.d/
COPY --from=node /app/app/dist/angular/ /usr/share/nginx/html
