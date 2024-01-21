# Pilih base image dari Golang, dengan versi yang diinginkan
FROM golang:1.17

# Set working directory di dalam container
WORKDIR /app

# Salin file go.mod dan go.sum ke dalam container
COPY go.mod .
COPY go.sum .

# Download dan instal dependensi menggunakan go modules
RUN go mod download

# Salin seluruh kode sumber ke dalam container
COPY . .

# Build aplikasi Go
RUN go build -o main .

# Expose port yang akan digunakan oleh aplikasi
EXPOSE 8000

# Command untuk menjalankan aplikasi
CMD ["./main"]
