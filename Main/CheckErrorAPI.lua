local Console = {}

function library:CheckErrors(error1, error2, eplayer, v1, v2)
	local message = "Unexpected client behavior."
	local echeck1, client = function(err1)
		if err1 then
			local errorcheck1 = {
				error57 = err1
			}

			if not errorcheck1.error57 then
				local printval = function(val)
					print(val)
				end

				printval(message)
			end

			return err1
		end

		return ""
	end, eplayer

	if error1 and error2 then
		local errtable, pcheck1 = {
			err_1 = error1, 
			err_2 = error2
		}, function(detected, reason)
			detected:Kick(reason)
		end

		if not (errtable.err_1 and errtable.err_2) then
			if client then
				pcheck1(client, message)
			end
		end

		if (errtable.err_1 == error1) and (errtable.err_2 == error2) then
			if v1 ~= v2 then
				pcheck1(client, message)
			end
		end
	end
end

function Console:Handle(clean, v1)
    local function clearConsole()
        print("\n" .. string.rep("-", 50) .. "\n")
    end

    if clean then
        clearConsole()
    end

    if v1 == "error" then
        print("An error occurred.")
    elseif v1 == "warning" then
        print("Warning: Check your inputs.")
    else
        print("Message: " .. tostring(v1))
    end
end

return Console
