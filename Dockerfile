FROM botpress/server:latest

# Expose the Railway port
EXPOSE 3000

# Force Studio & Server to the external port
ENV BP_STUDIO_PORT=3000
ENV BP_PORT=3000
ENV PORT=3000
ENV BP_HOST=0.0.0.0
ENV EXTERNAL_URL=https://botpress-single-production.up.railway.app

# Start Botpress
CMD ["./bp"]