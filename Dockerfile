#mengampil image node versi 18 alpine
FROM node:18-alpine 

 #mendefinisikan working directory ada di path /src
WORKDIR /src

RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

#copy semua file yang ada di path default ke image yang ada di path default juga
COPY . .

#menginstall dependency yang diperlukan
RUN npm install

#ekspose bahwa port yang digunakan aplikasi
EXPOSE 3001

#mencalankan server ketika container dijalankan
CMD ["npm", "start"]