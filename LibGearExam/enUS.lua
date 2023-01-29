-- For enchant and gem IDs, check out the following link: https://fr.classic.wowhead.com/enchanting
-- Pattern entries marked with an "alert" value will cause Examiner to show a warning message,
-- { p = "Pattern", s = "Category", alert = 1 },
-- telling that the pattern is thought of as no longer in use. These patterns should eventually be deleted.
-- Modified by Grome of EU-Sulfuron for patch 1.13.2 September 26th 2019

LibGearExam.Patterns = {
	--  Base Stats  --
	{ p = "([+-]%d+) Strength", s = "STR" },
	{ p = "([+-]%d+) Agility", s = "AGI" },
	{ p = "([+-]%d+) Stamina", s = "STA" },
	{ p = "([+-]%d+) Intellect", s = "INT" },
	{ p = "([+-]%d+) Spirit", s = "SPI" },
	{ p = "(%d+) Armor", s = "ARMOR" }, -- Should catch all armor: Base armor, Armor enchants, Armor kits

	--  Resistances (Exclude the Resist-"ance" then it picks up armor patches as well)  --
	{ p = "%+(%d+) Arcane Resist", s = "ARCANERESIST" },
	{ p = "%+(%d+) Fire Resist", s = "FIRERESIST" },
	{ p = "%+(%d+) Nature Resist", s = "NATURERESIST" },
	{ p = "%+(%d+) Frost Resist", s = "FROSTRESIST" },
	{ p = "%+(%d+) Shadow Resist", s = "SHADOWRESIST" },
	{ p = "%+(%d+) All Resistances", s = { "ARCANERESIST", "FIRERESIST", "NATURERESIST", "FROSTRESIST", "SHADOWRESIST" } },
	{ p = "%+(%d+) Resist All", s = { "ARCANERESIST", "FIRERESIST", "NATURERESIST", "FROSTRESIST", "SHADOWRESIST" } }, -- Void Sphere

	--  Equip: Other  --
	{ p = "Improves your resilience rating by (%d+)%.", s = "RESILIENCE" },

	{ p = "Increases defense rating by (%d+)%.", s = "DEFENSE" },
	{ p = "Increases your dodge rating by (%d+)%.", s = "DODGE" },
	{ p = "Increases your parry rating by (%d+)%.", s = "PARRY" },
	{ p = "Increases your s?h?i?e?l?d? ?block rating by (%d+)%.", s = "BLOCK" }, -- Should catch both new and old style

	{ p = "Increases the block value of your shield by (%d+)%.", s = "BLOCKVALUE" },
	{ p = "^(%d+) Block$", s = "BLOCKVALUE" }, -- Should catch only base block value from a shield

	--  Equip: Melee & Ranged  --
	{ p = "Increases attack power by (%d+)%.", s = "AP" },
	{ p = "Increases ranged attack power by (%d+)%.", s = "RAP" },

	{ p = "Increases your expertise rating by (%d+)%.", s = "EXPERTISE" }, -- New 2.3 Stat
	{ p = "Increases y?o?u?r? ?armor penetration rating by (%d+)%.", s = "ARMORPENETRATION" }, -- Armor Penetration in 3.0

	--  Equip: Spell Power  --
	{ p = "Increases your spell penetration by (%d+)%.", s = "SPELLPENETRATION" },

	{ p = "Increases spell power by (%d+)%.", s = { "HEAL", "SPELLDMG" } },
	{ p = "Increases spell power slightly%.", s = { "HEAL", "SPELLDMG" }, v = 6 }, -- Bronze Band of Force

	{ p = "%+(%d+) Shadow and Frost Spell Power", s = { "SHADOWDMG", "FROSTDMG" } },	-- Old "Soulfrost" enchant
	{ p = "%+(%d+) Arcane and Fire Spell Power", s = { "ARCANEDMG", "FIREDMG" } },	-- Old "Sunfire" enchant

	{ p = "Increases arcane spell power by (%d+)%.", s = "ARCANEDMG" },
	{ p = "Increases fire spell power by (%d+)%.", s = "FIREDMG" },
	{ p = "Increases nature spell power by (%d+)%.", s = "NATUREDMG" },
	{ p = "Increases frost spell power by (%d+)%.", s = "FROSTDMG" },
	{ p = "Increases shadow spell power by (%d+)%.", s = "SHADOWDMG" },
	{ p = "Increases holy spell power by (%d+)%.", s = "HOLYDMG" },

	--  Equip: Stats Which Improves Both Spells & Melee  --
	{ p = "Increases your critical strike rating by (%d+)%.", s = { "CRIT", "SPELLCRIT" } },
	{ p = "Improves critical strike rating by (%d+)%.", s = { "CRIT", "SPELLCRIT" } },
	{ p = "Increases your hit rating by (%d+)%.", s = { "HIT", "SPELLHIT" } },
	{ p = "Improves hit rating by (%d+)%.", s = { "HIT", "SPELLHIT" } },
	{ p = "Improves haste rating by (%d+)%.", s = { "HASTE", "SPELLHASTE" } },

	--  Health & Mana Per 5 Sec  --
	{ p = "(%d+) health every 5 sec%.", s = "HP5" },
	{ p = "(%d+) [Hh]ealth per 5 sec%.", s = "HP5" },

	{ p = "%+(%d+) Mana Regen", s = "MP5" }, -- Scryer Shoulder Enchant, Priest ZG Enchant
	{ p = "%+(%d+) Mana restored per 5 seconds", s = "MP5" }, -- Magister's Armor Kit

	{ p = "%+(%d+) Health and Mana every 5 sec", s = { "HP5", "MP5" } },	-- Old Vitality enchant changed into this

	{ p = "%+?(%d+) [Mm]ana per 5 [Ss]econds", s = "MP5" }, -- Gem: Royal Shadow Draenite / Wyrmrest head enchant
	{ p = "Mana Regen (%d+) per 5 sec%.", s = "MP5" }, -- Bracer Enchant
	{ p = "%+(%d+) Mana/5 seconds", s = "MP5" }, -- Some WotLK Shoulder Enchant, unsure which

	{ p = "(%d+) [Mm]ana [Pp]er 5 [Ss]ec%.|-r-$", s = "MP5" }, -- Combined Pattern: Covers [Equip Bonuses] [Socket Bonuses] --- Added "|-r-$" to avoid confusing on item 33502
	{ p = "(%d+) [Mm]ana every 5 [Ss]ec", s = "MP5" }, -- Combined Pattern: Covers [Chest Enchant] [Gem: Dazzling Deep Peridot] [Various Gems] -- Az: 09.01.05 removed the "%+" at the start.

	--  Enchants / Gems / Socket Bonuses / Mixed / Misc  --
	{ p = "^%+(%d+) HP$", s = "HP" },
	{ p = "^%+(%d+) Health$", s = "HP" },
	{ p = "^%+(%d+) Mana$", s = "MP" },

	{ p = "^%+(%d+) Shadow and Frost Spell Power", s = { "FROSTDMG", "SHADOWDMG" } },	-- Soulfrost enchant
	{ p = "^%+(%d+) Arcane and Fire Spell Power", s = { "ARCANEDMG", "FIREDMG" } },		-- Sunfire enchant

--	{ p = "^Rune of the Stoneskin Gargoyle$", s = "DEFENSE", v = 25 }, -- Death Knight Enchant, also adds 2% stamina

	-- Az: these 3 was added 09.01.05 and has not been checked out in game yet, please confirm they are correct.
	{ p = "^Titanium Weapon Chain$", s = { "HIT", "SPELLHIT" }, v = 28 },
	{ p = "^Titanium Plating$", s = "BLOCKVALUE", v = 40 },

	{ p = "%+(%d+) t?o? ?All Stats", s = { "STR", "AGI", "STA", "INT", "SPI" } }, -- Chest + Bracer Enchant

	{ p = "%+(%d+) Arcane S?p?e?l?l? ?Damage", s = "ARCANEDMG" },
	{ p = "%+(%d+) Fire S?p?e?l?l? ?Damage", s = "FIREDMG" },
	{ p = "%+(%d+) Nature S?p?e?l?l? ?Damage", s = "NATUREDMG" },
	{ p = "%+(%d+) Frost S?p?e?l?l? ?Damage", s = "FROSTDMG" },
	{ p = "%+(%d+) Shadow S?p?e?l?l? ?Damage", s = "SHADOWDMG" },
	{ p = "%+(%d+) Holy S?p?e?l?l? ?Damage", s = "HOLYDMG" },

	{ p = "%+(%d+) Defense", s = "DEFENSE" }, -- Exclude "Rating" from this pattern due to Paladin ZG Enchant
	{ p = "%+(%d+) Dodge Rating", s = "DODGE" },
	{ p = "(%d+) Parry Rating", s = "PARRY" }, -- Az: plus sign no longer needed for a match
	{ p = "%+(%d+) S?h?i?e?l?d? ?Block Rating", s = "BLOCK" }, -- Combined Pattern: Covers [Shield Enchant] [Socket Bonus]

	{ p = "%+(%d+) Block Value", s = "BLOCKVALUE" },

	{ p = "%+(%d+) Attack Power", s = "AP" },
	{ p = "%+(%d+) Ranged Attack Power", s = "RAP" },
	{ p = "%+(%d+) Hit Rating", s = { "HIT", "SPELLHIT" } },
	{ p = "%+(%d+) Crit Rating", s = { "CRIT", "SPELLCRIT" } },
	{ p = "%+(%d+) Critical S?t?r?i?k?e? ?Rating", s = { "CRIT", "SPELLCRIT" } }, -- Matches two versions, with/without "Strike". No "Strike" on "Unstable Citrine"
	{ p = "(%d+) Critical strike rating%.", s = { "CRIT", "SPELLCRIT" } }, -- Kirin Tor head enchant, no "+" sign, lower case "s" and "r"
	{ p = "%+(%d+) [Rr]esilience", s = "RESILIENCE" },	-- PvP Set bonus uses "resilience" so match lower case "r" as well.
	{ p = "%+(%d+) Haste Rating", s = { "HASTE", "SPELLHASTE" } },
	{ p = "%+(%d+) Expertise Rating", s = "EXPERTISE" },
	{ p = "%+(%d+) Armor Penetration Rating", s = "ARMORPENETRATION" },

	{ p = "%+(%d+) Spell Power", s = { "SPELLDMG", "HEAL" } }, -- Was used in a few items/gems before WotLK, but is now the permanent spell pattern
	{ p = "%+(%d+) Spell Hit", s = "SPELLHIT" }, -- Exclude "Rating" from this pattern to catch Mage ZG Enchant
	{ p = "%+(%d+) Spell Crit Rating", s = "SPELLCRIT" },
	{ p = "%+(%d+) Spell Critical ", s = "SPELLCRIT" }, -- Matches three versions, with Strike + Rating, with Rating, and without any suffix at all
	{ p = "%+(%d+) Spell Haste Rating", s = "SPELLHASTE" }, -- Found on gems
	{ p = "%+(%d+) Spell Penetration", s = "SPELLPENETRATION" },

	{ p = "%+(%d+)  ?Weapon Damage", s = "WPNDMG" }, -- Added optional space as I found a "+1  Weapon Damage" enchant on someone
	{ p = "^Scope %(%+(%d+) Damage%)$", s = "RANGEDDMG" },

	-- Demon's Blood
	{ p = "Increases defense rating by 5, Shadow resistance by 10 and your normal health regeneration by 3%.", s = { "DEFENSE", "SHADOWRESIST", "HP5" }, v = { 5, 10, 3 } },

	-- Void Star Talisman (Warlock T5 Class Trinket)
	{ p = "Increases your pet's resistances by 130 and increases your spell power by 48%.", s = "SPELLDMG", v = 48 },

	
};

LibGearExam.StatNames = {
	STR = "Strength",
	AGI = "Agility",
	STA = "Stamina",
	INT = "Intellect",
	SPI = "Spirit",

	ARMOR = "Armor",

	ARCANERESIST = "Arcane Resistance",
	FIRERESIST = "Fire Resistance",
	NATURERESIST = "Nature Resistance",
	FROSTRESIST = "Frost Resistance",
	SHADOWRESIST = "Shadow Resistance",

	DODGE = "Dodge",
	PARRY = "Parry",
	DEFENSE = "Defense",
	BLOCK = "Block",
	BLOCKVALUE = "Block Value",
	RESILIENCE = "Resilience",

	AP = "Attack Power",
	RAP = "Ranged Attack Power",
	CRIT = "Crit Chance",
--HIT = "Hit Rating (Physical)",
--HASTE = "Haste Rating (Physical)",
	HIT = "Physical Hit",
	HASTE = "Physical Haste",
	WPNDMG = "Weapon Damage",
	RANGEDDMG = "Ranged Damage",
	ARMORPENETRATION = "Armor Penetration",
	EXPERTISE = "Expertise",

	SPELLCRIT = "Spell Crit Chance",
--SPELLHIT = "Hit Rating (Spell)",
--SPELLHASTE = "Haste Rating (Spell)",
	SPELLHIT = "Spell Hit",
	SPELLHASTE = "Spell Haste",
	SPELLPENETRATION = "Spell Penetration",

	-- HEAL = "Healing",
	SPELLDMG = "Spell Power",
	ARCANEDMG = "Spell Power (Arcane)",
	FIREDMG = "Spell Power (Fire)",
	NATUREDMG = "Spell Power (Nature)",
	FROSTDMG = "Spell Power (Frost)",
	SHADOWDMG = "Spell Power (Shadow)",
	HOLYDMG = "Spell Power (Holy)",

	HP = "Health Points",
	MP = "Mana Points",

	HP5 = "Health Regen Per 5 Sec",
	MP5 = "Mana Regen Per 5 Sec",
	
	-- Skill Bonuses
	DAGGERSKILL = "Daggers Skill Bonus",
	ONEAXESKILL = "Axes Skill Bonus",
	TWOAXESKILL = "Two-Handed Axes Skill Bonus",
	ONESWORDSKILL = "Swords Skill Bonus",
	TWOSWORDSKILL = "Two-Handed Swords Skill Bonus",
	ONEMACESKILL = "Maces Skill Bonus",
	TWOMACESKILL = "Two-Handed Maces Skill Bonus",
	BOWSKILL = "Bows skill Bonus",
	GUNSSKILL = "Guns skill Bonus",
	CROSSBOWSKILL = "Crossbows Skill Bonus",
};