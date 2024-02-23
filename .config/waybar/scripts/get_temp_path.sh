#!/bin/bash

# Используем sensors для получения температуры ядра
temp_millidegree=$(sensors | awk '/Core 0/ {gsub(/[+°C]/,""); print $3}')

# Проверка, является ли значение числом
if [[ "$temp_millidegree" =~ ^[0-9]+$ ]]; then
  # Умножаем значение на 1000 для получения миллиградусов
  temp_millidegree=$((temp_millidegree * 1000))
  echo "$temp_millidegree"
else
  echo "Ошибка в получении температуры"
fi

