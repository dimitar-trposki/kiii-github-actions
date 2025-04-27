FROM nginx:stable
COPY index.html /usr/share/nginx/html/index.html
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/ || exit 1
USER nginx