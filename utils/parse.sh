#!/usr/bin/env bash

tlm="$(dirname $0)/converter.py"
savedpath="$PWD"

cd $1

if [ -f "config.js" ]; then
  ( \
    echo 'Config={}; Config.Schema={};'; \
    grep 'Config.Schema.API' config.js; \
    echo ';console.log(JSON.stringify(Config.Schema.API));' \
  ) | node > "$savedpath/schema.json"
  
  grep 'Config.Schema.API.layer' config.js
  
  cd $savedpath
  # Two times because of Vector
  $tlm schema.json; $tlm schema.tl
  $tlm schema.json; $tlm schema.tl
elif [ -f "scheme.tl" ]; then
  if ! grep 'LAYER' scheme.tl; then
    if [ -f "mtpCoreTypes.h" ]; then
      if ! grep 'mtpCurrentLayer' mtpCoreTypes.h; then
        grep 'mtpLayerMax' -B 1 mtpCoreTypes.h|head -n 1
      fi
    elif [ -f "core_types.h" ]; then
      grep 'mtpCurrentLayer' core_types.h
    fi
  fi
  
  ln="$(grep -n 'Main application API' scheme.tl | cut -d ':' -f 1)"
  tail -n "+$ln" scheme.tl > $savedpath/schema.tl

  cd $savedpath
  # Two times because of Vector
  $tlm schema.tl; $tlm schema.json
  $tlm schema.tl; $tlm schema.json
fi

