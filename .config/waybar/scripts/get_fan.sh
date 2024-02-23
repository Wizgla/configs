#!/bin/bash

# Читаем значение скорости вентилятора из символической ссылки
fan_speed=$(cat ~/fan1_input)

# Выводим в формате JSON
echo "{\"fan\": \"$fan_speed\"}"

