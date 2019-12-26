/*
    -1 => tout
	Clothing0 => Cheveux
	Clothing1 => Torse(Dessous)
	Clothing2 => Torse(Dessus)
	Clothing3 => Accessoires
	Clothing4 => Jambes
	Clothing5 => Pieds
]]*/
let jambe = {
    name: "Jambe",
    slot: 4,
    data: [
        {
            asset: "/Game/CharacterModels/Clothing/Meshes/SK_Jeans01",
            occupationSlot: [4]
        },
        {
            asset: "/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_FormalPants_LPR",
            occupationSlot: [4]
        },
        {
            asset: "/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_CargoPants_LPR",
            occupationSlot: [4]
        },
        {
            asset: "/Game/CharacterModels/SkeletalMesh/Outfits/HZN_Outfit_Piece_DenimPants_LPR",
            occupationSlot: [4]
        }
    ]
}
export default jambe;