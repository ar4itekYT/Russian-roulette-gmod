-- крингеее
-- я знаю можно было сделать по-другому немного и получше, но мне лень.

hook.Add("PlayerSay", "roulette", function(sender, text)

	if string.StartWith(string.lower(text), "/roulette ") or string.StartWith(string.lower(text), "!roulette ") then

		if(sender:IsUserGroup("superadmin")) then

			for i, v in ipairs( player.GetAll() ) do

   				if(string.sub( text, 11 ) == v:Nick()) then

   					sendMsg(v:Nick() .. " нарушил многочисленное количества правил и администрация устроила ему Русскую рулетку.")
   					sendMsg("-----")

   					if math.random(0,6) != 1 then
  						sendMsg( v:Nick() .. " проиграл в русскую рулетку.")
  						v:Ban(0, true)
					else
 						sendMsg( v:Nick() .. " победил в русскую рулетку.")
					end

   				end

			end

		else
			sender:ChatPrint( "Команда только for ♂ dungeon masters ♂ " )
		end

		return ""

	end

end)

-- оо, костыль подъехал
function sendMsg(text)

	for i, ply in ipairs( player.GetAll() ) do
		ply:ChatPrint( text )
	end

end
