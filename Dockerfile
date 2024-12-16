# Use a imagem oficial do Node.js
FROM node:18-alpine

# Defina o diretório de trabalho dentro do container
WORKDIR /app

# Instale as dependências globais necessárias
RUN npm install -g @vue/cli

# Copie os arquivos para o container
COPY . .

# Exponha a porta padrão usada pelo Vue.js
EXPOSE 8080

# Comando padrão para manter o container ativo
CMD ["npm", "run", "serve"]