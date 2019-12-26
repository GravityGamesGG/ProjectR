/*
    -1 => tout
	Clothing0 => Cheveux
	Clothing1 => Torse(Dessous)
	Clothing2 => Torse(Dessus)
	Clothing3 => Accessoires
	Clothing4 => Jambes
	Clothing5 => Pieds
]]*/
let torseDown = {
    name: "Torse dessous",
    slot: 1,
    data: [
        {
            asset: "/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_TShirt_Knitted2_LPR",
            occupationSlot: [1, 2]
        },
        {
            asset: "/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_TShirt_Knitted_LPR",
            occupationSlot: [1, 2]
        },
        {
            asset: "/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_TShirt_LPR",
            occupationSlot: [1, 2]
        },
        {
            asset: "/Game/CharacterModels/Clothing/Meshes/SK_TShirt01",
            occupationSlot: [1, 2]
        },
        {
            asset: "/Game/CharacterModels/Clothing/Meshes/SK_TShirtShorts01",
            occupationSlot: [1, 4, 2]
        },
        {
            asset: "/Game/CharacterModels/Clothing/Meshes/SK_Undershirt01",
            occupationSlot: [1, 2]
        }
    ]
}
export default torseDown;