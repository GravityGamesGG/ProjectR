AddEvent("OnKeyPress", function(key)
	if key == "Tab" then
        ExecuteWebJS(webui, "window.vm.showCharaCustom = !window.vm.showCharaCustom")
    end
end)

--[[
	Clothing0 => Cheveux
	Clothing1 => Torse(Dessous)
	Clothing2 => Torse(Dessus)
	Clothing3 => Accessoires
	Clothing4 => Jambes
	Clothing5 => Pieds
]]
AddEvent("OnCharaCustom", function (clothing0, clothing1, clothing2, clothing3, clothing4, clothing5, body)
	local SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing0")
	if clothing0 then
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset(clothing0))
	else
		SkeletalMeshComponent:SetSkeletalMesh(nil)
	end

	SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing1")
	if clothing1 then
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset(clothing1))
	else
		SkeletalMeshComponent:SetSkeletalMesh(nil)
	end

	SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing2")
	if clothing2 then
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset(clothing2))
	else
		SkeletalMeshComponent:SetSkeletalMesh(nil)
	end

	SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing3")
	if clothing3 then
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset(clothing3))
	else
		SkeletalMeshComponent:SetSkeletalMesh(nil)
	end

	SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing4")
	if clothing4 then
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset(clothing4))
	else
		SkeletalMeshComponent:SetSkeletalMesh(nil)
	end

	SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing5")
	if clothing5 then
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset(clothing5))
	else
		SkeletalMeshComponent:SetSkeletalMesh(nil)
	end

	SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Body")
	if body then
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset(body))
	end
end )

