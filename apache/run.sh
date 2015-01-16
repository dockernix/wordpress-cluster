#!/bin/bash
/wordpress_conf.sh
exec supervisord -n
