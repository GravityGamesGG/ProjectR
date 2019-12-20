AddEvent("OnKeyPress", function(key)
    --AddPlayerChat(key)
    if key == "Left Alt" then
        SetIgnoreLookInput(true)
        ShowMouseCursor(true)
        SetInputMode(INPUT_GAMEANDUI)
    end

    if key == "E" then
        local scalar = 100
        local x1, y1, z1 = GetPlayerLocation(GetPlayerId())
        local x2, y2, z2 = GetPlayerForwardVector(GetPlayerId())
        DrawLine3D(x1, y1, z1, x1+(x2*scalar), y1+(y2*scalar), z1+(z2*scalar))
        local type, id, x, y, z = LineTrace(x1, y1, z1, x1+(x2*scalar), y1+(y2*scalar), z1+(z2*scalar))
        AddPlayerChat("Type: "..type.." id: "..id.." x: "..x.." y: "..y.." z: "..z)

        local sizeX, sizeY, sizeZ = GetObjectSize(id)
        if(sizeX ~= nil and sizeY ~= nil and sizeZ ~= nil) then
            AddPlayerChat("Size X: " ..sizeX.. "Size Y: " ..sizeY.. "Size Z:" ..sizeZ)
        end
        SetObjectOutline(id)
    end

    if key == "R" then
        local x1, y1, z1 = GetPlayerLocation(GetPlayerId())
        local coll1 = CreateCollisionBox(128267, 77617, 1547, 
            128012, 77621, 1535, true)
    end

    if key == "Tab" then
        ExecuteWebJS(webui, "window.vm.showCharaCustom = !window.vm.showCharaCustom")
    end
    if key == "1" then
		local SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Body")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/Zombie01/Mesh/SK_Zombie01"))
		SkeletalMeshComponent:SetMaterial(3, UMaterialInterface.LoadFromAsset("/Game/CharacterModels/Materials/HZN_Materials/M_HZN_Body_NoClothes"))
		--[[SkeletalMeshComponent:SetFloatParameterOnMaterials("PupilScale", 1.3)
		SkeletalMeshComponent:SetColorParameterOnMaterials("Skin Color", FLinearColor(0.239583, 0.239583, 0.239583, 0.0))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing0")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/HZN_CH3D_Normal_Hair_03_LPR"))
		SkeletalMeshComponent:SetColorParameterOnMaterials("Hair Color", FLinearColor(2.0, 0.0, 0.0, 0.0))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing1")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_CH3D_Prisoner_LPR"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing4")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_CargoPants_LPR"))
		local DynamicMaterialInstance = SkeletalMeshComponent:CreateDynamicMaterialInstance(0)
		DynamicMaterialInstance:SetColorParameter("Clothing Color", FLinearColor(0.786458, 0.103145, 0.0, 1.0))
		SkeletalMeshComponent:SetRelativeScale3D(FVector(1.0, 1.01, 1.0))
		SkeletalMeshComponent:SetRelativeRotation(FRotator(0.0, 0.0, 0.0))
		SkeletalMeshComponent:SetRelativeLocation(FVector(0.0, 0.0, 0.0))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing5")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_NormalShoes_LPR"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing3")
		SkeletalMeshComponent:SetSkeletalMesh(nil)

		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing2")
		SkeletalMeshComponent:SetSkeletalMesh(nil)]]
	end
	
	if key == "2" then
		local SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Body")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/BodyMerged/HZN_CH3D_Normal04_LPR"))
		SkeletalMeshComponent:SetMaterial(0, UMaterialInterface.LoadFromAsset("/Game/CharacterModels/Materials/HZN_Materials/M_HZN_Body_NoShoesLegsTorso"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing0")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Police_Hat_LPR"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing1")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Police_Shirt-Long_LPR"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing4")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_FormalPants_LPR"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing5")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_BusinessShoes_LPR"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing3")
		SkeletalMeshComponent:SetSkeletalMesh(nil)

		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing2")
		SkeletalMeshComponent:SetSkeletalMesh(nil)
	end
	
	if key == "3" then
		local SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Body")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/BodyMerged/HZN_CH3D_Business_LPR"))
		SkeletalMeshComponent:SetMaterial(3, UMaterialInterface.LoadFromAsset("/Game/CharacterModels/Materials/HZN_Materials/M_HZN_Body_NoShoesLegsTorso"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing0")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/HZN_CH3D_Hair_Business_LP"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing4")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_FormalPants_LPR"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing5")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_BusinessShoes_LPR"))
		local DynamicMaterialInstance = SkeletalMeshComponent:CreateDynamicMaterialInstance(0)
		DynamicMaterialInstance:SetColorParameter("Clothing Color", FLinearColor(0.0, 0.0, 0.0, 1.0))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing1")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_FormalShirt_LPR"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing2")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_FormalJacket_LPR"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing3")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_TacticalGlasses_LPR"))
		SkeletalMeshComponent:SetRelativeLocation(FVector(0.0, 0.0, 3.5))
	end
	
	if key == "4" then
		local SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Body")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/BodyMerged/HZN_CH3D_SpecialAgent_LPR"))
		SkeletalMeshComponent:SetMaterial(0, UMaterialInterface.LoadFromAsset("/Game/CharacterModels/Materials/HZN_Materials/M_HZN_Body_NoShoesLegsTorso"))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing1")
		SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Set_SpecialAgent_LPR"))
		local DynamicMaterialInstance = SkeletalMeshComponent:CreateDynamicMaterialInstance(2)
		DynamicMaterialInstance:SetColorParameter("Clothing Color", FLinearColor(0.0, 1.0, 0.0, 1.0))
		DynamicMaterialInstance = SkeletalMeshComponent:CreateDynamicMaterialInstance(3)
		DynamicMaterialInstance:SetColorParameter("Clothing Color", FLinearColor(0.0, 0.0, 1.0, 1.0))
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing3")
		SkeletalMeshComponent:SetSkeletalMesh(nil)

		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing2")
		SkeletalMeshComponent:SetSkeletalMesh(nil)
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing4")
		SkeletalMeshComponent:SetSkeletalMesh(nil)
		
		SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing5")
		SkeletalMeshComponent:SetSkeletalMesh(nil)
	end

    if key == "5" then
        local SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Body")
        SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/Alien/Meshes/SK_Alien01"))
        
        SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing1")
        --SkeletalMeshComponent:SetSkeletalMesh(USkeletalMesh.LoadFromAsset("/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Set_SpecialAgent_LPR"))
        SkeletalMeshComponent:SetSkeletalMesh(nil)
        --local DynamicMaterialInstance = SkeletalMeshComponent:CreateDynamicMaterialInstance(2)
        --DynamicMaterialInstance:SetColorParameter("Clothing Color", FLinearColor(0.0, 1.0, 0.0, 1.0))

        --DynamicMaterialInstance = SkeletalMeshComponent:CreateDynamicMaterialInstance(3)
        --DynamicMaterialInstance:SetColorParameter("Clothing Color", FLinearColor(1.0, 0.0, 0.0, 1.0))
        
        SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing3")
        SkeletalMeshComponent:SetSkeletalMesh(nil)

        SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing2")
        SkeletalMeshComponent:SetSkeletalMesh(nil)
        
        SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing4")
        SkeletalMeshComponent:SetSkeletalMesh(nil)
        
        SkeletalMeshComponent = GetPlayerSkeletalMeshComponent(GetPlayerId(), "Clothing5")
        SkeletalMeshComponent:SetSkeletalMesh(nil)
     end
end)

AddEvent("OnKeyRelease", function(key)
    if key == "Left Alt" then
        SetIgnoreLookInput(false)
        ShowMouseCursor(false)
        SetInputMode(INPUT_GAME)
    end
end)