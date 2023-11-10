#define DAMAGE_COLT 35
#define DAMAGE_SILENCER 100
#define DAMAGE_DEAGLE 60
#define DAMAGE_SHOTGUN 60
#define DAMAGE_SAWNOFF 40
#define DAMAGE_UZI 35
#define DAMAGE_MP5 35
#define DAMAGE_AK47 35
#define DAMAGE_RIFLE 100
#define DAMAGE_TEC9 35
#define DAMAGE_M4 35
#define DAMAGE_SNIPER 350

// ANTI CBUG
#define PRESSED(%0) (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
AntiCBUG(playerid)
{
	if (IsPlayerConnected(playerid))
	{
	    new wID = GetPlayerWeapon ( playerid ) ;
	    if (wID == 24 || wID == 25 || wID == 27 || wID == 34 ) return 1 ;
	}
	return 0 ;
}