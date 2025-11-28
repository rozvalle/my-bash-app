#!/usr/bin/env bash

PROJECT_NAME="Random Quote Generator"
TAILWIND=on

get_random_quote() {
  shuf -n 1 quotes.txt
}
