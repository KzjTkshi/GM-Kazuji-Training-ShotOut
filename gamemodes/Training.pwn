/*

	Kazuji Training Shot Out Gamemode Present's
	
	Basic Gamemode : Bare.pwn
	Scripter 	   : Kazuji Takahashi
	IDEA		   : Kazuji Takahashi

	Spesial Thanks To
	- Y_Less, Karim, Southclaws & ZeeX For Includes Generator
	- Don't Remove Credits !
	- Jangan Hapus Credits !
	-

	NOTE : Ini GM Gunain dengan benar, jangan lu aku akuin ini buatan lu, hargai gw, gw butuh waktu untuk membuat gm ini

	Gamemode Ini dibuat khusus buat di share, kalo di remake serah lu, tapi kalo masalah credits ya tetep gw creditsnya karna gw yg bikin gm ini

	YANG RESHARE + PAKE LINK RECEH, GW DOAIN LU JADI MISKIN SE MISKIN MISKINNYA. AAMINN

		BUAT LU YANG JUAL GM INI FUCK YOU BITCH ! 

	Discord Community : https://discord.gg/SCJ94u2M6v
	Discord Store 	  : https://discord.gg/MSNDpyeeFp
	YouTube 		  : https://youtube.com/@kzjtkshi?si=ab4mfqTDjw9eqbZB

	Discord Account	  : KazujiTakahashi, Yang Asli Ada Akun GitHub & YouTube.
*/
/*

	FEATURE
	- PLAYER CHECK DAMAGES
	- ANTI CBUG
	- AND OTHER CMD

*/


#include <a_samp> /* https://sa-mp.co.id/files/samp037_svr_R2-2-1_win32.zip */ // SA-MP Team
#include <sscanf2> /* https://github.com/Y-Less/sscanf */ // Y_Less
#include <streamer> /* https://github.com/samp-incognito/samp-streamer-plugin */ // Incognito
#include <foreach> /* https://github.com/karimcambridge/samp-foreach */ // Karimcambrigde
#include <zcmd> /* https://github.com/Southclaws/zcmd */ // Barnaby / Southclaws & ZeeX


#include "Modules\Colors.inc"
#include "Modules\WeaponDamages.inc"
#include "Modules\Variables.inc"
#include "Modules\TDName.inc"
#include "Modules\Enums.inc"
#include "Modules\Function.inc"

main()
{
}

public OnPlayerConnect(playerid)
{	
    GameTextForPlayer(playerid,"~w~Kazuji~r~ Training ShotOut ~y~ Gamemode",5000,5);
    ResetHitPlayer(playerid);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	new
        szString[128],
        playerName[MAX_PLAYER_NAME];

    GetPlayerName(playerid, playerName, MAX_PLAYER_NAME);

    new DiskoReason[3][] =
    {
        "Timeout/Crash",
        "Quit",
        "Kick/Ban"
    };

    format(szString, sizeof szString, "SERVER LOGS : %s Telah Terputus Alasan : (%s)", playerName, DiskoReason[reason]);
    SendClientMessageToAll(-1, szString);
    return 1;
}

public OnPlayerSpawn(playerid)
{	
	SetPlayerPos(playerid,1364.5934,-1279.1853,13.5469);
	GivePlayerWeapon(playerid, 29, 500);
	GivePlayerWeapon(playerid, 24, 500);
	GivePlayerWeapon(playerid, 25, 500);		
    SetSpawnInfo(playerid, 0, GetPlayerSkin(playerid), 1364.5934,-1279.1853,13.5469,87.4545, 29, 500, 24, 140, 25, 500);
	SetPlayerInterior(playerid,0);
    SetCameraBehindPlayer(playerid);
    TogglePlayerControllable(playerid, 1);
    ClearAnimations(playerid);
    ResetHitPlayer(playerid);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
   	return 1;
}

SetupPlayerForClassSelection(playerid)
{
 	SetPlayerInterior(playerid,14);
	SetPlayerPos(playerid, 258.4893,-41.4008,1002.0234);
	SetPlayerFacingAngle(playerid, 270.0);
	SetPlayerCameraPos(playerid,256.0815,-43.0475,1004.0234);
	SetPlayerCameraLookAt(playerid,258.4893,-41.4008,1002.0234);
}

public OnPlayerRequestClass(playerid, classid)
{
	TextDrawShowForPlayer(playerid, KTGMWM[0]);
	TextDrawShowForPlayer(playerid, KTGMWM[1]);
	TextDrawShowForPlayer(playerid, KTGMWM[2]);
	SetupPlayerForClassSelection(playerid);
	return 1;
}

public OnGameModeInit()
{
	CreateWaterMark();	
	Cp1 = CreateDynamicCP(286.2290, -29.8189, 1001.5156, 1.0, -1, -1, -1, 2.0);
	Cp2 = CreateDynamicCP(304.5869, -141.8904, 1004.0625, 1.0, -1, -1, -1, 2.0);
	Cp3 = CreateDynamicCP(284.5695, -41.3477, 1001.5156, 1.0, -1, -1, -1, 2.0);
	Cp4 = CreateDynamicCP(1369.0007, -1279.0824, 13.5469, 1.0, -1, -1, -1, 2.0);
    SetNameTagDrawDistance(20.0);
	DisableInteriorEnterExits();
	ShowPlayerMarkers(1);
	SetGameModeText("Kazuji Takahashi Training Shot Out");
	AddStaticVehicle(468,1364.2051,-1284.3303,13.1752,269.6011,46,46); // 
	AddStaticVehicle(468,1363.8918,-1285.8558,13.1748,270.0806,46,46); // 
	AddStaticVehicle(468,1363.9211,-1287.2495,13.1765,268.1844,46,46); // 
	AddPlayerClass(1,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(2,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(3,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(4,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(5,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(6,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(7,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(14,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(15,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(16,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(17,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(18,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(19,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(20,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(49,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(55,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(59,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(60,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(56,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(67,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(73,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(78,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(87,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(85,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(93,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(100,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(102,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(104,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(106,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(107,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(108,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(113,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(114,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(115,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(116,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(122,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(123,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(126,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(133,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(134,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(152,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(174,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(175,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(176,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(177,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(180,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(181,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(184,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(185,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(188,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(191,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(192,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(193,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(194,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(195,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(206,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(209,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(217,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(237,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(241,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(250,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(255,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(265,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(271,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(270,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(285,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(291,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(292,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(293,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(294,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(296,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(297,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(298,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(299,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	AddPlayerClass(264,1529.2416, -1676.9371, 5.8906, 176.5846,0,0,0,0,0,0); // Spawnz
	return 1;
}

// NEVER USED JADI SAYA NON AKTIFKAN
/*strtok(const string[], &index)
{
	new length = strlen(string);
	while ((index < length) && (string[index] <= ' '))
	{
		index++;
	}

	new offset = index;
	new result[20];
	while ((index < length) && (string[index] > ' ') && ((index - offset) < (sizeof(result) - 1)))
	{
		result[index - offset] = string[index];
		index++;
	}
	result[index - offset] = EOS;
	return result;
}*/

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	new string[256], pText[128];
	format(pText, sizeof (pText), "%s", text);
	format(string, sizeof(string), "%s says: %s", PlayerName(playerid), pText);
	ProxDetector(30.0, playerid, string, -1);
	return 0;
}

public OnPlayerEnterDynamicCP(playerid, checkpointid)
{
    if(checkpointid == Cp1)
	{
		SetPlayerInterior(playerid, 7);
		SetPlayerPos(playerid, 304.5869, -141.8904, 1004.0625);
	}
	if(checkpointid == Cp2)
	{
		SetPlayerInterior(playerid, 1);
		SetPlayerPos(playerid, 286.2290, -29.8189, 1001.5156);
	}
	if(checkpointid == Cp3)
	{
		SetPlayerInterior(playerid, 0);
		SetPlayerPos(playerid, 1366.0477, -1279.0034, 13.5469);
	}
	if(checkpointid == Cp4)
	{
		SetPlayerInterior(playerid, 1);
		SetPlayerPos(playerid, 285.5169, -40.0603, 1001.5156);
	}
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
   	if((AntiCBUG(playerid) && PRESSED(KEY_FIRE)) && newkeys != KEY_FIRE && newkeys & KEY_CROUCH)
    {
        ApplyAnimation ( playerid , "PED" , "getup" , 4.1 , 0 , 0 , 0 , 0 , 0 ) ;
        PlayerPlaySound(playerid, 1149, 0.0, 0.0, 0.0);
        SendClientMessage(playerid, -1, "WKWK NOOB PAKAI C-BUG!");
    }
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid, bodypart)
{
    if(issuerid != INVALID_PLAYER_ID)
	{
	    new Float:x, Float:y, Float:z, Float:amoun, Float:distance = 0.9, Float:health, Float:armour;
	    GetPlayerPos(playerid,x,y,z), GetPlayerHealth(playerid,health), GetPlayerArmour(playerid,armour);
	   	if(weaponid > 21 && weaponid < 35)
		{
			new damage = 0;
			switch(weaponid)
			{
			    case 22: damage = DAMAGE_COLT;
			    case 23: damage = DAMAGE_SILENCER;
			    case 24: damage = DAMAGE_DEAGLE;
			    case 25: damage = DAMAGE_SHOTGUN;
			    case 26: damage = DAMAGE_SAWNOFF;
			    case 27: damage = DAMAGE_SHOTGUN;
			    case 28: damage = DAMAGE_UZI;
			    case 29: damage = DAMAGE_MP5;
			    case 30: damage = DAMAGE_AK47;
			    case 31: damage = DAMAGE_M4;
			    case 32: damage = DAMAGE_TEC9;
			    case 33: damage = DAMAGE_RIFLE;
			    case 34: damage = DAMAGE_SNIPER;
			}

			if(damage != 0 && !IsPlayerInRangeOfPoint(issuerid,distance,x,y,z))
			{
			    if(armour > 0)
			    {
			        amoun = armour - damage;
				    if(amoun <= 0)
					{
						SetPlayerHealth(playerid,health-damage+armour);
						SetPlayerArmour(playerid, 0);
						CreateHitPlayer(playerid, weaponid, bodypart, damage, 0);
					}
				    else
				    {
				        CreateHitPlayer(playerid, weaponid, bodypart, damage, 1);
						SetPlayerArmour(playerid,armour-damage);
					}
			    }
			    else
				{
					SetPlayerHealth(playerid,health-damage);
					CreateHitPlayer(playerid, weaponid, bodypart, damage, 0);
				}

			}
		}
	}
    return 1;
}

forward Float:GetDistanceBetweenPlayerToPoint(p1,Float:px,Float:py,Float:pz);
public Float:GetDistanceBetweenPlayerToPoint(p1,Float:px,Float:py,Float:pz)
{
	new Float:x1,Float:y1,Float:z1,Float:x2,Float:y2,Float:z2;
	if(!IsPlayerConnected(p1)) return -1.00;
	GetPlayerPos(p1,x1,y1,z1);
	x2 = px;
	y2 = py;
	z2 = pz;
	return floatsqroot(floatpower(floatabs(floatsub(x2,x1)),2)+floatpower(floatabs(floatsub(y2,y1)),2)+floatpower(floatabs(floatsub(z2,z1)),2));
}

CMD:help(playerid, params[])
{
	new str[1024] = "";
    strcat(str, "/health || /armor || /skin || /weap || /training || /respawn");
	ShowPlayerDialog(playerid, DIALOG_HELP, DIALOG_STYLE_MSGBOX, "Help menu", str, "Tutup", "");
	return 1;
}
CMD:health(playerid, params[])
{
	new Float:ammount;
	if(sscanf(params, "f", ammount)) return SendClientMessage(playerid, -1, "/health [Jumplah]");
	else
	{
		SetPlayerHealth(playerid, ammount);
	}
	return 1;
}

CMD:armor(playerid, params[])
{
	new Float:ammount;
	if(sscanf(params, "f", ammount)) return SendClientMessage(playerid, -1, "/armor [Jumplah]");
	else
	{
		SetPlayerArmour(playerid, ammount);
	}
	return 1;
}
CMD:skin(playerid, params[])
{
	new skinid;

	if(sscanf(params, "i", skinid)) return SendClientMessage(playerid, -1, "/skin [Skin ID]");
	else
	{
		if(skinid > 312 || skinid < 0) return SendClientMessage(playerid, COLOR_RED, "Lu Salah ID KONTOL.");
		else
			SetPlayerSkin(playerid, skinid);
	}
	return 1;
}
CMD:weap(playerid, params[])
{
    new gun;
	if(sscanf(params, "d", gun)) return SendClientMessage(playerid, -1, "/weap [Weapon ID]");

 	if(gun < 1 || gun > 47) { SendClientMessage(playerid, COLOR_RED, "Lu Salah ID KONTOL."); return 1; }
    if(gun <= 20 || gun >= 22)
	{
        GivePlayerWeapon(playerid, gun, 500);
	}
	return 1;
}
CMD:training(playerid)
{
	SetPlayerPos(playerid, 1924.1031, 704.3874, 11.1328);
	SetPlayerVirtualWorld(playerid, 0);
	SetPlayerInterior(playerid, 0);
	return 1;
}

CMD:respawn(playerid)
{
	SpawnPlayer(playerid);
	return 1;
}

Bodyname(abodypart)
{
	new bname[16];
	switch(abodypart)
	{
		case 3: format(bname, sizeof(bname), "CHEST");
		case 4: format(bname, sizeof(bname), "GROIN");
		case 5: format(bname, sizeof(bname), "LEFT ARM");
		case 6: format(bname, sizeof(bname), "RIGHT ARM");
		case 7: format(bname, sizeof(bname), "LEFT LEG");
		case 8: format(bname, sizeof(bname), "RIGHT LEG");
		case 9: format(bname, sizeof(bname), "HEAD");
		default: format(bname, sizeof(bname), "UNKNOWN");
	}
	return bname;
}
GunNameEx(weaponid)
{
	new string[25];
	switch (weaponid)
	{
		case 0: format(string, sizeof(string), "Knuckle");
		case 1: format(string, sizeof(string), "Boxer");
		case 2: format(string, sizeof(string), "Golf bat");
		case 3: format(string, sizeof(string), "Baton");
		case 4: format(string, sizeof(string), "Knife");
	    case 5: format(string, sizeof(string), "Baseball bat");
	    case 6: format(string, sizeof(string), "Shovel");
	    case 7: format(string, sizeof(string), "Pool cue");
	    case 8: format(string, sizeof(string), "Katana");
	    case 9: format(string, sizeof(string), "Chainsaw");
	    case 10: format(string, sizeof(string), "Purple vibrator");
	    case 11: format(string, sizeof(string), "Dildo");
	    case 12: format(string, sizeof(string), "Vibrator");
	    case 13: format(string, sizeof(string), "Vibrator");
	    case 14: format(string, sizeof(string), "Flowers");
	    case 15: format(string, sizeof(string), "Cane");
	    case 16: format(string, sizeof(string), "Grenade");
	    case 17: format(string, sizeof(string), "Smoke Grenade");
	    case 18: format(string, sizeof(string), "Molotov Cocktail");
	    case 19: format(string, sizeof(string), "(?) Vehicle Rocker");
	    case 20: format(string, sizeof(string), "(?)Hydra Flare");
	    case 21: format(string, sizeof(string), "(?)Jetpack");
	    case 22: format(string, sizeof(string), "Glock");
	    case 23: format(string, sizeof(string), "TASER");
	    case 24: format(string, sizeof(string), "DEAGLE");
	    case 25: format(string, sizeof(string), "SHOTGUN");
	    case 26: format(string, sizeof(string), "SAWNOFF");
	    case 27: format(string, sizeof(string), "SPAS12");
	    case 28: format(string, sizeof(string), "UZI");
	    case 29: format(string, sizeof(string), "MP5");
	    case 30: format(string, sizeof(string), "AK47");
	    case 31: format(string, sizeof(string), "M4");
	    case 32: format(string, sizeof(string), "TEC9");
	    case 33: format(string, sizeof(string), "RIFLE");
	    case 34: format(string, sizeof(string), "SNIPER");
	    case 35: format(string, sizeof(string), "Rocket Launcher");
	    case 36: format(string, sizeof(string), "HS Rocket Launcher");
	    case 37: format(string, sizeof(string), "Flamethrower");
	    case 38: format(string, sizeof(string), "Minigun");
	    case 39: format(string, sizeof(string), "C4");
	    case 40: format(string, sizeof(string), "Detonator");
	    case 41: format(string, sizeof(string), "Pepper Spray");
	    case 42: format(string, sizeof(string), "Fire Extinguisher");
	    case 43: format(string, sizeof(string), "Camera");
	}
	return string;
}

CMD:damage(playerid, params[])
{
	new dinfo;
	if(sscanf(params, "u", dinfo)) return SendClientMessage(playerid, -1, "/damage [Player ID/Name]");
	else
	{
		new dmgstring[1280], dtitle[64], line[256], injured = false;
		new cdamage;
		strcat(dmgstring, "Bodypart\tWeapon\tDamage\tWound\n");
		for(cdamage = 0; cdamage < 20; ++cdamage)
		{
		    if(PlayerDamage[dinfo][DHit][cdamage] > 0)
		    {
		        injured = true;
		        if(PlayerDamage[dinfo][armor] == 1)
		        	format(line, sizeof(line), "%s\t%s\tDMG:%d\tArmor\n", Bodyname(PlayerDamage[dinfo][DHit][cdamage]), GunNameEx(PlayerDamage[dinfo][DHit][cdamage]), PlayerDamage[dinfo][WDamage][cdamage]);
		        else
		            format(line, sizeof(line), "%s\t%s\tDMG:%d\tFLESH\n", Bodyname(PlayerDamage[dinfo][DHit][cdamage]), GunNameEx(PlayerDamage[dinfo][DHit][cdamage]), PlayerDamage[dinfo][WDamage][cdamage]);
		        strcat(dmgstring, line);
		    }
		
		
		}
		format(dtitle, sizeof(dtitle), "Damage Dari %s", PlayerName(dinfo));
	    if(injured)
			ShowPlayerDialog(playerid, DIALOG_DAMAGE, DIALOG_STYLE_TABLIST_HEADERS, dtitle, dmgstring, "Close", "");
		else
		    SendClientMessage(playerid, COLOR_RED, "ERROR : Player Sedang Tidak Injured!.");
    }
	return 1;
}