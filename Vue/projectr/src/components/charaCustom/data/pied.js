/*
    -1 => tout
	Clothing0 => Cheveux
	Clothing1 => Torse(Dessous)
	Clothing2 => Torse(Dessus)
	Clothing3 => Accessoires
	Clothing4 => Jambes
	Clothing5 => Pieds
]]*/
let pied = {
    name: "Pied",
    slot: 5,
    data: [
        {
            asset: "/Game/CharacterModels/Clothing/Meshes/SK_Shoes01",
            occupationSlot: [5]
        },
        {
            asset: "/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_NormalShoes_LPR",
            occupationSlot: [5]
        },
        {
            asset: "/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_BusinessShoes_LPR",
            occupationSlot: [5]
        }
    ]
}
export default pied;