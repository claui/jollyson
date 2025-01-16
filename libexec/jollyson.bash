source libexec/constants.bash
source libexec/options.bash

function __jollyson {
  parse_options "$@"

  if [[ -z "${file:-}" ]]; then
    file='-'
  fi

  {
    echo 'function load()'
    python "${__PROJECT_ROOT}/libexec/deflate.py" "${file}"
    echo 'end print(require("cjson").encode(load()))'
  } | lua | jq -S .
}

export -f __jollyson
