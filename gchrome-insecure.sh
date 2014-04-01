#Kill all google chrome instances and restart google chrome in insecure mode for testing cross domain ajax requests


function kill {
  ps aux | grep chrome | awk '{print $2}' | xargs kill -9
}

function start_chrome_insecure {
  google-chrome --disable-web-security
}

function main {
  kill
  start_chrome_insecure
}
