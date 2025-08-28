FROM botpress/server:latest

# 1. Fuerza Studio y Server al mismo puerto exterior
ENV BP_STUDIO_PORT=3000
ENV BP_PORT=3000
ENV PORT=3000

# 2. Expón el puerto
EXPOSE 3000

# 3. Arranca
CMD ["./bp"]