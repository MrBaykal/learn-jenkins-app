# Node 18 baz alınır
FROM node:18

# Çalışma dizini
WORKDIR /app

# package.json ve lock dosyasını kopyala
COPY package*.json ./

# Bağımlılıkları kur
RUN npm install

# Uygulamanın tamamını kopyala
COPY . .

# Build aşamasını çalıştır
RUN npm run build

# (Opsiyonel) Konteyner çalıştığında yapılacak komut
CMD ["npm", "start"]
