AddEventHandler("playerSpawned", function(spawn)
  TriggerEvent("chatMessage", "", { 71, 25, 95 }, "^1Type ^3/help ^5for read server rules or server key bindings")
end)


AddEventHandler("playerSpawned", function(spawn)
  TriggerEvent("chatMessage", "Server", { 71, 255, 95 }, "^4Welcome to ^3Your server name | ^2Some more Text")
end)