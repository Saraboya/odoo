FROM odoo:17

USER root
RUN apt-get update && apt-get install -y fonts-thai-tlwg

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER odoo
COPY ./addons /mnt/extra-addons

ENTRYPOINT ["/entrypoint.sh"]
