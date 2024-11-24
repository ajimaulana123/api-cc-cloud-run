# Menggunakan Node.js versi LTS (misalnya 16)
FROM node:16

# Menentukan direktori kerja di dalam container
WORKDIR /usr/src/app

# Menyalin file package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependencies
RUN npm install

# Menyalin seluruh kode aplikasi ke dalam container
COPY . .

# Menentukan port yang akan dibuka oleh aplikasi
EXPOSE 5000

# Menjalankan aplikasi menggunakan Node.js
CMD ["node", "index.js"]