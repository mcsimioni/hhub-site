FROM nginx:alpine

# Remove a página padrão de boas-vindas do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do site para o diretório do servidor web
COPY . /usr/share/nginx/html/

# Porta padrão interna
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]