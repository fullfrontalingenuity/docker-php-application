FROM docker.azcender.com/php:latest

MAINTAINER Bryan Belanger bbelanger@azcender.com

COPY php_example.txt /etc/facter/facts.d/

COPY code/environments/production /etc/puppet

RUN puppet apply /etc/puppet/manifests/site.pp
