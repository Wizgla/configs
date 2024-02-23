#!/bin/bash

# Используем awk для извлечения значения скорости вентилятора из вывода sensors
fan_path=$(sensors | awk '/cpu_fan/ {print $2}')

echo "$fan_path"


