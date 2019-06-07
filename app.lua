local lapis = require "lapis"
local app = lapis.Application()

app:match("/", function(self)
  return "Hello, planet!"
end)

return app
