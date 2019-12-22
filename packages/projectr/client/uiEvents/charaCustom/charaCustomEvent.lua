AddEvent("charaCustom", function (type, asset)
    if type == "corp" then
        local SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Body")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset(asset))
		--SkeletalMeshComponent:SetMaterial(3, UMaterialInterface.LoadFromAsset("/Game/CharacterModels/Materials/HZN_Materials/M_HZN_Body_NoShoesLegsTorso"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing0")
		SkeletalMeshComponent:SetSkeletalMesh(nil)
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing1")
		SkeletalMeshComponent:SetSkeletalMesh(nil)

		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing2")
		SkeletalMeshComponent:SetSkeletalMesh(nil)

		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing3")
		SkeletalMeshComponent:SetSkeletalMesh(nil)
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing4")
		SkeletalMeshComponent:SetSkeletalMesh(nil)
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing5")
		SkeletalMeshComponent:SetSkeletalMesh(nil)
    end
end )
