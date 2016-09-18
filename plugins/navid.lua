do

function run(msg, matches)
local reply_id = msg['id']
local text = 'بله'
--در اینجا میتونین جواب رو تعیین کنید
if matches[1] == 'نوید' or 'نوید کوییک' or 'navidquick' or 'navid' then
    if not is_sudo(msg) then
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
    "^نوید کوییک$",
    "^نوید$",
"^([Nn]avid[Qq]uick)$",
"^([Nn]avid)$",
},
run = run
}

end
