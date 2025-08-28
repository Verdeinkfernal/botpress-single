FROM botpress/server:12.30.7

# Exponemos el puerto que Railway abrirá
EXPOSE 3000

# Forzamos el puerto que Botpress usa por defecto
ENV PORT=3000
ENV BP_PORT=3000

# Copiamos un entry-point que redirige Studio al mismo puerto
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]