FROM botpress/server:12.30.7

EXPOSE 3000
ENV BP_STUDIO_PORT=3000
ENV BP_PORT=3000
ENV PORT=3000
ENV BP_HOST=0.0.0.0

CMD ["./bp", "--studio-port", "3000", "--port", "3000", "--host", "0.0.0.0"]