#mengampil image node versi 18 alpine
FROM node:18-alpine 

 #mendefinisikan working directory ada di path /src
WORKDIR /src

#copy semua file yang ada di path default ke image yang ada di path default juga
COPY . .

#menginstall dependency yang diperlukan
RUN npm install

#ekspose bahwa port yang digunakan aplikasi
EXPOSE 3000

#mencalankan server ketika container dijalankan
CMD ["npm", "start"]