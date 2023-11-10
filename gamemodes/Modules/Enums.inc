enum 
{
    DIALOG_HELP,
    DIALOG_DAMAGE,
};

enum DamageSystem
{
	DHit[20],
	BodyDamage[20],
	WDamage[20],
	armor[20],
};
new PlayerDamage[MAX_PLAYERS][DamageSystem];