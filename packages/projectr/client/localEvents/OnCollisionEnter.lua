AddEvent("OnCollisionEnter", function(collision, hittype, hitid)
    AddPlayerChat("Collision Enter - collision ID :" ..collision.. " hitType : " ..hittype.. " hitId : " ..hitid)
end)

AddEvent("OnCollisionLeave", function(collision, hittype, hitid)
    AddPlayerChat("Collision Exit - collision ID :" ..collision.. " hitType : " ..hittype.. " hitId : " ..hitid)
end)
