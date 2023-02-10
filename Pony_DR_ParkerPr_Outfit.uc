class Pony_DR_ParkerPr_Outfit extends Hat_Collectible_Skin;
    

defaultproperties
{
	ItemQuality = class'Hat_ItemQuality_Completionist' //:sickos: custom itemquality, called "they've got history"
	HUDIcon = Texture2D'Pony_DR_Prehistory.Texture2D.ImmortalParker' //oh shit i should make those icons huh
	ItemName = "DR_ILB_ParkerPr_Outfit" //lol pony change that, uhhh "Immortal Parker"
	ItemDescription(0) = "DR_ILB_ParkerPr_Outfit_Desc" //"You’re just too big a risk, we are history."
	
	SkinBodyMesh = SkeletalMesh'Pony_DR_Prehistory.models.ParkerPrJersey'
	SkinBodyPhysicsAsset = None
	SkinLegsMesh = SkeletalMesh'Pony_DR_Prehistory.models.Blase_Legs'
	SkinLegsPhysicsAsset = None
	
	SkinColor[SkinColor_Hat] = (R=76, G=168, B=248) //immortals blue
	SkinColor[SkinColor_HatAlt] = (R=117, G=188, B=250)
	SkinColor[SkinColor_HatBand] = (R=255, G=209, B=65) //yellow star
	
	SkinColor[SkinColor_Dress] = (R=76, G=168, B=248) //immortals blue
	SkinColor[SkinColor_Orange] = (R=27, G=145, B=113)
	SkinColor[SkinColor_Cape] = (R=255, G=209, B=65) //yellow star
	SkinColor[SkinColor_ShoesBottom] = (R=255, G=209, B=65) //yellow star
	SkinColor[SkinColor_Pants] = (R=240, G=240, B=240) //white
	SkinColor[SkinColor_Shoes] = (R=35, G=124, B=221) //slightly darker immortals blue
}
//AGENDAS: figure tf how to replace face materials (and also make certain parts, dyeable)
//oh and custom eyes + texture bs perhaps (eyes done)

static function Apply(Actor a)
{

	Super.Apply(a);
	
	if (CheckPlayerClass(a, class'Hat_Player_HatKid', true))
    {	
		SetHeadMaterial(a, 0, MaterialInstanceTimeVarying'HatInTime_Characters_HatKid.Expressions.Material.Expression_HatKid_Animated');	
		SetHeadMaterial(a, 4, MaterialInstanceTimeVarying'Pony_DR_Prehistory.Expressions.ParkerPr_Eyes_animated'); //costume hat eyes
		SetExpressionComponent(a, Class'Hat_ExpressionComponent_HatKid');
    }
    else
	if (CheckPlayerClass(a, class'Hat_Player_CoPartner'))
    {
		SetHeadMaterial(a, 0, MaterialInstanceTimeVarying'Pony_DR_Prehistory.Expressions.ParkerPr_Bow_Kid_Eye'); //costume bow eyes
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