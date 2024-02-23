#!/bin/bash

# Переменная для пути к temp1_input
temp_path=""

# Поиск temp1_input в /sys/class/hwmon/ и /sys/devices/
temp_path=$(find /sys/class/hwmon/ /sys/devices/ -name 'temp1_input' -type f | head -n 1)

# Если temp_path пуст, выводим ошибку и завершаем скрипт
if [ -z "$temp_path" ]; then
    echo "Ошибка: temp1_input не найден"
    exit 1
fi

# Читаем значение температуры из файла temp1_input и умножаем на 1000
temperature_millidegrees=$(($(cat "$temp_path")))

# Выводим температуру
echo $temperature_millidegrees

