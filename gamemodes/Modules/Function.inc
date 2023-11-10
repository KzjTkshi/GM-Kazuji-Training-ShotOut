CreateHitPlayer(playerid, ddweapon, ddbodypart, dddamage, ddarmor)
{
    new look;
    for(look = 0; look < 20; ++look)
	{
		if(PlayerDamage[playerid][DHit][look] == 0)
		{
		    PlayerDamage[playerid][DHit][look] = ddweapon;
		    PlayerDamage[playerid][BodyDamage][look] = ddbodypart;
		    PlayerDamage[playerid][WDamage][look] = dddamage;
		    PlayerDamage[playerid][armor][look] = ddarmor;
		    break;
		}
	}
	return 1;
}
ResetHitPlayer(playerid)
{
    new look;
    for(look = 0; look < 20; ++look)
	{
	    PlayerDamage[playerid][DHit][look] = 0;
	    PlayerDamage[playerid][BodyDamage][look] = 0;
	    PlayerDamage[playerid][WDamage][look] = 0;
	    PlayerDamage[playerid][armor][look] = 0;
	}
	return 1;
}

PlayerName(playerid)
{
    new name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));
    return name;
}

SendSplitClientMessage(playerid, color, text[], minlen = 110, maxlen = 120)
{
    new str[256];
    if(strlen(text) > maxlen)
    {
        new pos = maxlen;
        while(text[--pos] > ' ') {}
        if(pos < minlen) pos = maxlen;
        format(str, sizeof(str), "%.*s ...", pos, text);
        SendClientMessage(playerid,color,str);
        format(str, sizeof(str), "... %s", text[pos+1]);
        SendClientMessage(playerid,color,str);
    }
    else format(str, sizeof(str), "%s", text), SendClientMessage(playerid,color,str);
    return true;
}

forward ProxDetector(Float:radi, playerid, string[], color);
public ProxDetector(Float:radi, playerid, string[], color)
{
    new Float:posx, Float:posy, Float:posz;
	GetPlayerPos(playerid, posx, posy, posz);
	if(color == COLOR_PURPLE) SetPlayerChatBubble(playerid, string, COLOR_PURPLE, radi, 5000);
    foreach (Player, i)
    {
	    if(GetPlayerVirtualWorld(i) == GetPlayerVirtualWorld(playerid))
	    {
	        if(IsPlayerInRangeOfPoint(i,radi,posx, posy, posz))
	        {
				if(color == -1)
				{
					new Float:radius, feet;
					radius = GetDistanceBetweenPlayerToPoint(i,posx, posy, posz);
	                feet = floatround(radius);
	                switch(feet)
	                {
	                    case 0 .. 10: SendSplitClientMessage(i,0xF0F0F096,string);
		                case 11 .. 15: SendSplitClientMessage(i,0xC9C9C996,string);
		                case 16 .. 20: SendSplitClientMessage(i,0xB5B5B596,string);
		                case 21 .. 25: SendSplitClientMessage(i,0xA3A3A396,string);
		                case 26 .. 100: SendSplitClientMessage(i,0x79797996,string);
	                }
				}
				else SendSplitClientMessage(i, color, string);
	        }
	    }
    }
    return 1;
}