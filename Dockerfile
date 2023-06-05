#ultima versão do node
FROM node:alpine 

#diretorio onde quer trabalhar dentro da maquina virtual do container
WORKDIR /usr/app


#copiar todos os arquivos de configuração do package para dentro da maquina
COPY  package*.json ./
#executar o npm install
RUN npm install

#copia todo o restante dos arquivos pra dentro da maquina, menos o node_modes que ja vai ser criado automaticamente dentro da maquina
#pra evitar que seja copiado cria o arquivo .dockerignore
COPY . .


#indica qual porta que o container vai estar distribuindo o serviço
EXPOSE 3000


#comando que vai executar para inicializar o servidor
CMD ["npm", "start"]