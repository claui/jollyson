source libexec/constants.bash
source libexec/options.bash
source libexec/zip.bash

function __jollyson {
  parse_options "$@"

  if [[ -z "${file:-}" ]]; then
    file='-'
  fi

  (
    echo 'function load()'
    cat \
      <(/usr/bin/xxd -r -p <<< "${__ZIP_HEADER_HEX}") \
      "${file}" \
      | { zcat 2>/dev/null || true; }
    echo 'end print(require("cjson").encode(load()))'
  ) | lua | jq -S .
}

export -f __jollyson
