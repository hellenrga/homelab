#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Erro! Nao foram fornecidos dois argumentos"
  exit 1
fi

arg1=$1
arg2=$2

echo "O primeiro argumento é: $arg1"
echo "O segundo argumento é: $arg2"
