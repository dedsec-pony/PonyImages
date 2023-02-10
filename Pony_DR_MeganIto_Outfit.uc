class Pony_DR_MeganIto_Outfit extends Hat_Collectible_Skin;
    

defaultproperties
{
	ItemQuality = class'Hat_ItemQuality_Completionist' //:sickos: custom itemquality, called "they've got history"
	HUDIcon =Texture2D'Pony_DR_Prehistory.Texture2D.MintyMegan' //oh shit i should make those icons huh
	ItemName = "DR_ILB_MeganIto_Outfit" //Minty Megan
	ItemDescription(0) = "DR_ILB_MeganIto_Outfit_Desc" //"Maybe one last tryst, we got history."
	
	SkinBodyMesh = SkeletalMesh'Pony_DR_Prehistory.models.MeganFSunglassesItoJersey' //new packidge or something
	SkinBodyPhysicsAsset = None
	SkinLegsMesh = SkeletalMesh'Pony_DR_Prehistory.models.Blase_Legs'
	SkinLegsPhysicsAsset = None
	
	SkinColor[SkinColor_Hat] = (R=45, G=110, B=26) //minty green
	SkinColor[SkinColor_HatAlt] = (R=64, G=143, B=63)//white or alt green
	SkinColor[SkinColor_HatBand] = (R=221, G=46, B=68) //minty red
	SkinColor[SkinColor_Hair] = (R=54, G=23,B=77)
	
	SkinColor[SkinColor_Dress] = (R=221, G=46, B=68) //minty red
	SkinColor[SkinColor_Orange] = (R=27, G=145, B=113)// laces
	SkinColor[SkinColor_Cape] = (R=221, G=46, B=68) //minty red
	SkinColor[SkinColor_ShoesBottom] = (R=255, G=225, B=225) //white
	SkinColor[SkinColor_Pants] = (R=45, G=110, B=26) //minty green
	SkinColor[SkinColor_Shoes] = (R=13, G=51, B=6) //slightly darker minty green
}
//AGENDAS: figure tf how to replace face materials (and also make certain parts, dyeable)
//ALSO FIND WHICH ONE CORRESPONDS TO THE SOCKS HELLP, ok i think socks are using skincolor_dress, i havent worked on these since uh, early 2022

static function Apply(Actor a)
{

	Super.Apply(a);
	
	if (CheckPlayerClass(a, class'Hat_Player_HatKid', true))
    {	
		SetHeadMaterial(a, 0, MaterialInstanceTimeVarying'HatInTime_Characters_HatKid.Expressions.Material.Expression_HatKid_Animated');	
		SetHeadMaterial(a, 4, MaterialInstanceTimeVarying'Pony_DR_Prehistory.Expressions.MeganIto_Eyes_animated'); //costume hat eyes
		SetExpressionComponent(a, Class'Hat_ExpressionComponent_HatKid');
    }
    else
	if (CheckPlayerClass(a, class'Hat_Player_CoPartner'))
    {
		SetHeadMaterial(a, 0, MaterialInstanceTimeVarying'Pony_DR_Prehistory.Expressions.MeganIto_Bow_Kid_Eye'); //costume bow eyes
		SetHeadMaterial(a, 1, MaterialInstanceTimeVarying'HatInTime_Characters_Coop.Expressions.Material.Expression_BowKid_Animated');
		SetExpressionComponent(a, Class'Hat_ExpressionComponent_BowKid');
    }
}

static function Removed(Actor a)
{
	Super.Apply(a);
	Super.Removed(a);
	if (CheckPlayerClass(a, class'Hat_Player_HatKid', true))
	
	{
		SetHeadMaterial(a, 0, MaterialInstanceTimeVarying'HatInTime_Characters_HatKid.Expressions.Material.Expression_HatKid_Animated');
		SetHeadMaterial(a, 1, Material'HatInTime_Characters_HatKid.Materials.HatKidBody');
		SetHeadMaterial(a, 2, Material'HatInTime_Characters_HatKid.Materials.HatKidHair');
		SetHeadMaterial(a, 3, Material'HatInTime_Characters_HatKid.Materials.HatKidHair');
		SetHeadMaterial(a, 4, MaterialInstanceTimeVarying'HatInTime_Characters_HatKid.Expressions.Material.HatKid_Eyes_Animated');
		SetExpressionComponent(a, Class'Hat_ExpressionComponent_HatKid');
    }
    else
	if (CheckPlayerClass(a, class'Hat_Player_CoPartner'))
    {
		SetHeadMaterial(a, 0, MaterialInstanceTimeVarying'HatInTime_Characters_Coop.Expressions.Material.BowKid_Eyes_Animated');
		SetHeadMaterial(a, 1, MaterialInstanceTimeVarying'HatInTime_Characters_Coop.Expressions.Material.Expression_BowKid_Animated');
		SetHeadMaterial(a, 2, Material'HatInTime_Characters_Coop.Materials.CoopCharacter_Diffuse');
		SetHeadMaterial(a, 3, Material'HatInTime_Characters_Coop.Materials.CoopCharacter_Hair');
		SetHeadMaterial(a, 4, Material'HatInTime_Characters_Coop.Materials.CoopCharacter_Hair');
		SetHeadMaterial(a, 5, Material'HatInTime_Characters_Coop.Materials.CoopCharacter_Hair');
		SetHeadMaterial(a, 6, MaterialInstanceConstant'HatInTime_Characters_Coop.Materials.CoopCharacter_Hair_WitchSnow');
		SetHeadMaterial(a, 7, MaterialInstanceConstant'HatInTime_Characters_Coop.Materials.CoopCharacter_Hair_WitchSnow');
		SetHeadMaterial(a, 8, Material'HatInTime_Characters_Coop.Materials.CoopCharacter_Hair');
		SetHeadMaterial(a, 9, Material'HatInTime_Characters_Coop.Materials.CoopCharacter_Hair');
		SetExpressionComponent(a, Class'Hat_ExpressionComponent_BowKid');
    }
}