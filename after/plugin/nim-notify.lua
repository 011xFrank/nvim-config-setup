local notify = require('notify')
notify.setup ({
  icons = {
    DEBUG = "",
    ERROR = "",
    INFO = "",
    TRACE = "✎",
    WARN = ""
  },
  timeout = 3000
})