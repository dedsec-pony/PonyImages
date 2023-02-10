class Pony_DoubleRival_Avail extends GameMod
	config(Mods);

event OnModLoaded()
{
	HookActorSpawn(class'Hat_Player', 'Hat_Player');
	GiveItem(true);
}

event OnHookedActorSpawn(Object NewActor, Name Identifier)
{
	if (Identifier == 'Hat_Player') GiveItem(true);
}

function GiveItem(bool b)
{
	if (b)
	{
		Hat_PlayerController(GetALocalPlayerController()).GetLoadout().AddBackpack(class'Hat_Loadout'.static.MakeLoadoutItem(class'Pony_DR_MeganIto_Outfit'), false);
		Hat_PlayerController(GetALocalPlayerController()).GetLoadout().AddBackpack(class'Hat_Loadout'.static.MakeLoadoutItem(class'Pony_DR_ParkerPr_Outfit'), false);	
	}
	else
	{
		Hat_PlayerController(GetALocalPlayerController()).GetLoadout().RemoveBackpack(class'Hat_Loadout'.static.MakeLoadoutItem(class'Pony_DR_MeganIto_Outfit'));
		Hat_PlayerController(GetALocalPlayerController()).GetLoadout().RemoveBackpack(class'Hat_Loadout'.static.MakeLoadoutItem(class'Pony_DR_ParkerPr_Outfit'));
	}
}
event OnModUnloaded()
{
	GiveItem(false);
}