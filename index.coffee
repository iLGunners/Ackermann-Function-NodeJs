# Instantiate an express server
express = require('express')
app = express()

ackermann = (m, n) ->
  if m is 0 then n+1
  else if m > 0 and n is 0 then ackermann m-1, 1
  else ackermann m-1, ackermann m, n-1  

for m in [0..3]
  for n in [0..(13-m)]  
    console.log "ackermann(#{m}, #{n}) = #{ackermann m, n}"

# The server runs here
PORT = process.env.PORT || 8080
server = app.listen(PORT, ->
  console.log "server running @http://localhost:#{server.address().port}"
  return
)