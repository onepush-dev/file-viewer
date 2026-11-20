# File Viewer on Railway: the official flyfishdev/file-viewer image (Apache-2.0), static nginx site, content unmodified.
# Only change: nginx listens on 8080 (IPv4 + IPv6) instead of 80, so Railway can route the domain to 8080 without a PORT variable.
FROM flyfishdev/file-viewer:3.3.4
LABEL org.opencontainers.image.source="https://github.com/onepush-dev/file-viewer"
RUN sed -i 's/^\(\s*\)listen 80;/\1listen 8080;\n\1listen [::]:8080;/' /etc/nginx/conf.d/default.conf \
    && grep -q 'listen 8080;' /etc/nginx/conf.d/default.conf \
    && nginx -t
EXPOSE 8080
HEALTHCHECK NONE
