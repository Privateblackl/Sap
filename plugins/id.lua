do function run(msg, matches)
   local hash = 'groupcmds:'..msg.to.id
    local group_cmds = redis:hget(hash,'cmds')
if matches[1]:lower() == 'ایدی' or 'id' then
local text = "["..msg.from.print_name.."](https://Telegram.Me/"..(msg.from.username or 'sphero_ch')..")\n*Your *#*ID* : _"..msg.from.id.."_\n*Group *#*ID :* _"..msg.to.id.."_"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
end
return {
description = "show your id",
usage = {
moderator = {
"!id : show your userid and information" },
},
patterns = {
"^[!/#]([Ii][Dd])$",
"^ایدی$",
-- "^[Ii][Dd]$", --For lock cmds
},
run = run
}
end
