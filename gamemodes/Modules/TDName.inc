new Text: KTGMWM[3];

CreateWaterMark()
{
    KTGMWM[0] = TextDrawCreate(537.000, 0.000, "HUD:radar_ammugun");
    TextDrawTextSize(KTGMWM[0], 14.000, 16.000);
    TextDrawAlignment(KTGMWM[0], 1);
    TextDrawColor(KTGMWM[0], -1);
    TextDrawSetShadow(KTGMWM[0], 0);
    TextDrawSetOutline(KTGMWM[0], 0);
    TextDrawBackgroundColor(KTGMWM[0], 255);
    TextDrawFont(KTGMWM[0], 4);
    TextDrawSetProportional(KTGMWM[0], 1);

    KTGMWM[1] = TextDrawCreate(554.000, 1.000, "Kazuji Training");
    TextDrawLetterSize(KTGMWM[1], 0.270, 1.399);
    TextDrawAlignment(KTGMWM[1], 1);
    TextDrawColor(KTGMWM[1], -1);
    TextDrawSetShadow(KTGMWM[1], 2);
    TextDrawSetOutline(KTGMWM[1], 0);
    TextDrawBackgroundColor(KTGMWM[1], 150);
    TextDrawFont(KTGMWM[1], 1);
    TextDrawSetProportional(KTGMWM[1], 1);

    KTGMWM[2] = TextDrawCreate(635.000, 0.000, "HUD:radar_ammugun");
    TextDrawLetterSize(KTGMWM[2], -1.389, 0.000);
    TextDrawTextSize(KTGMWM[2], -14.000, 16.000);
    TextDrawAlignment(KTGMWM[2], 1);
    TextDrawColor(KTGMWM[2], -1);
    TextDrawSetShadow(KTGMWM[2], 0);
    TextDrawSetOutline(KTGMWM[2], 0);
    TextDrawBackgroundColor(KTGMWM[2], 255);
    TextDrawFont(KTGMWM[2], 4);
    TextDrawSetProportional(KTGMWM[2], 1);
}