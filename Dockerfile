# Container Image
FROM node:alpine

# Copy Script
COPY run.sh /run.sh

# Run Script
ENTRYPOINT ["/run.sh"]