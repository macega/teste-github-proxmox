FROM nginx:alpine

# Remove o arquivo index.html padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia o nosso arquivo de teste
COPY index.html /usr/share/nginx/html/

# Expõe a porta 80
EXPOSE 80

# Inicia o nginx
CMD ["nginx", "-g", "daemon off;"]
