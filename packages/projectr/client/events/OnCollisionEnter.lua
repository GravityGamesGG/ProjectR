AddEvent("OnCollisionEnter", function(collision, hittype, hitid)
    --AddPlayerChat("Collision " ..collision.. " hitType " ..hittype.. " hitId " ..hitid)
end)

AddEvent("OnCollisionLeave", function(collision, hittype, hitid)
    AddPlayerChat("NOLO")
end)
