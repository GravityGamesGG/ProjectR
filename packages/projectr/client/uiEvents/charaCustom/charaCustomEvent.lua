--[[
	-1 => tout
	Clothing0 => Cheveux
	Clothing1 => Torse(Dessous)
	Clothing2 => Torse(Dessus)
	Clothing3 => Accessoires
	Clothing4 => Jambes
	Clothing5 => Pieds
]]
AddEvent("charaCustom", function (clothing0, clothing1, clothing2, clothing3, clothing4, clothing5, body)
	AddPlayerChat(clothing0)
	AddPlayerChat(clothing1)
	AddPlayerChat(clothing2)
	AddPlayerChat(clothing3)
	AddPlayerChat(clothing4)
	AddPlayerChat(clothing5)

    local SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Body")
	SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset(body))

	SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing0")
	SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset(asset))
end )
