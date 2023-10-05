## 0x10. HTTPS SSL

### Definition:

HTTPS (Hypertext Transfer Protocol Secure) and SSL (Secure Sockets Layer) are related technologies used to secure the communication between a web browser and a web server. Here's an explanation of each:

1. `HTTP (Hypertext Transfer Protocol):`
- HTTP is the foundation of data communication on the World Wide Web. It defines how data should be formatted and transmitted between a web browser (client) and a web server (host).
- However, HTTP alone does not provide any security measures, making it vulnerable to eavesdropping, data interception, and tampering.

2. `HTTPS (Hypertext Transfer Protocol Secure):`
- HTTPS is a secure version of HTTP. It adds a layer of encryption to the data transmitted between the client and the server, ensuring that the information exchanged is confidential and secure.
- When you access a website with HTTPS, the URL typically starts with "https://" instead of "http://". This indicates that a secure connection is established.

3. `SSL (Secure Sockets Layer):`
- SSL was an earlier technology that was used to provide security to web communications. It has been largely replaced by its successor, TLS (Transport Layer Security).
- SSL is the predecessor to TLS, and both serve the same purpose: encrypting data exchanged between a client and a server to protect it from unauthorized access.

Here's how the HTTPS SSL/TLS process works:

1. `Handshake:`When you connect to a website using HTTPS, your web browser initiates a secure connection by requesting the server's SSL/TLS certificate.

2. `Certificate Verification:`The server responds with its digital certificate, which contains the server's public key and other information. Your browser verifies the certificate's authenticity by checking it against a list of trusted Certificate Authorities (CAs).

3. `Key Exchange:`Once the certificate is verified, your browser and the server exchange cryptographic keys to establish a secure session. These keys will be used to encrypt and decrypt data during the session.

4. `Data Encryption:`With the keys exchanged and the secure session established, all data exchanged between your browser and the server is encrypted. This encryption makes it extremely difficult for unauthorized parties to intercept or tamper with the data.

##
In summary, HTTPS with SSL/TLS provides secure and encrypted communication between your web browser and a web server, protecting your sensitive information from eavesdropping and ensuring the integrity of the data exchanged. It is essential for secure online transactions, logins, and any other situations where data security is paramount.
