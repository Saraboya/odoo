#!/bin/bash

if [ "$INIT_DB" = "1" ]; then
    echo "==> Initializing DB for the first time..."
    exec odoo -d "$POSTGRES_DB" --init=base --without-demo=all
else
    exec odoo
fi
