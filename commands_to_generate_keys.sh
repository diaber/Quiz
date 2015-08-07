mkdir certs
cd certs
openssl genrsa -out quiz-key.pem 2048
openssl req -new -sha256 -key quiz-key.pem -out quiz-csr.pem
openssl x509 -req -in quiz-csr.pem -signkey quiz-key.pem -out quiz-cert.pem
