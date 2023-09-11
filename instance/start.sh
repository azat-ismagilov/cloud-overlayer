#!/bin/sh

rsync -av --ignore-existing /app/ /workspace/

exec /usr/bin/supervisord
