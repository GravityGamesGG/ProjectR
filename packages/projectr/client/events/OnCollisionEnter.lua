AddEvent("OnCollisionEnter", function(collision, hittype, hitid)
    AddPlayerChat("Collision Enter - colId :" ..collision.. "hitType : " ..hittype)
end)

AddEvent("OnCollisionLeave", function(collision, hittype, hitid)
    AddPlayerChat("Collision Exit - colId :" ..collision.. "hitType : " ..hittype)
end)
