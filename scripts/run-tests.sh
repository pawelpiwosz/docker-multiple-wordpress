#! /bin/bash

echo "Checking docker-multiple-wordpress_wp-1"
export wp1=$(docker ps|grep docker-multiple-wordpress_wp1 |sed 's/.*0.0.0.0://g'|sed 's/->.*//g')
curl -I localhost:${wp1}/wp-admin/install.php
echo "Checking docker-multiple-wordpress_wp-2"
export wp1=$(docker ps|grep docker-multiple-wordpress_wp2 |sed 's/.*0.0.0.0://g'|sed 's/->.*//g')
curl -I localhost:${wp2}/wp-admin/install.php
echo "Checking docker-multiple-wordpress_wp-3"
export wp1=$(docker ps|grep docker-multiple-wordpress_wp3 |sed 's/.*0.0.0.0://g'|sed 's/->.*//g')
curl -I localhost:${wp3}/wp-admin/install.php

echo "Checking docker-multiple-wordpress_haproxy"
curl -I localhost:8080

echo "Checking docker-multiple-wordpress_haproxy stats"
curl -I localhost:8082/stats
