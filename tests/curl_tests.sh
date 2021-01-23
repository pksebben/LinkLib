#!/bin/bash

curl -F "table=comment" -F'id=1' -X POST localhost:8081/load | cat
