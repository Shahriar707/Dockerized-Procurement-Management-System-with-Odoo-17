# Use the official Odoo 17 image
FROM odoo:17

# Set working directory
WORKDIR /app

COPY ./enterprise_file /mnt/enterprise

# Upgrade pip and install dependencies
RUN pip install --upgrade pip && \
    pip install PyJWT psycopg2-binary

# Expose Odoo ports
EXPOSE 8069 8072

# Start Odoo
CMD ["odoo", "--db_host=odoo-db", "--db_port=5432", "--db_user=odoo", "--db_password=odoo"]