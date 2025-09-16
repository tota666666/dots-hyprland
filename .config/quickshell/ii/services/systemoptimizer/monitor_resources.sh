#!/bin/bash

# Monitorea el uso de CPU, RAM y GPU
echo "Monitoreando recursos del sistema..."

# Uso de CPU
echo "Uso de CPU:"
mpstat | tail -n 1

# Uso de RAM
echo "Uso de RAM:"
free -h

# Uso de GPU
echo "Uso de GPU:"
nvidia-smi
