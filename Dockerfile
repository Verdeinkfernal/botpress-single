FROM botpress/server:12.30.7
ENV BP_STUDIO_PORT=3000
ENV BP_PORT=3000
ENV PORT=3000
ENV BP_HOST=0.0.0.0
ENV EXTERNAL_URL=https://botpress-single-production.up.railway.app
EXPOSE 3000
CMD ["./bp"]
