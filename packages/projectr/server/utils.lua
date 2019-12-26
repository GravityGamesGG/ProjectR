function GetForwardVectorFromHeading2D(h)
    local x2 = math.cos(math.rad(h))
    local y2 = math.sin(math.rad(h))
    return x2, y2
end