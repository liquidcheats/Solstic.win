local Console = {}

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
