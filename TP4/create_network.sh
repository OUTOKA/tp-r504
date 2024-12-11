#!/bin/bash
docker network create --driver bridge net-tp4 || echo "Le réseau 'net-tp4' existe déjà."
