local colors = {
{name = "Schwarz", colorindex = 0},{name = "Carbonschwarz", colorindex = 147},
{name = "Graphit", colorindex = 1},{name = "Anthrazit", colorindex = 11},
{name = "Schwarzer Stahl", colorindex = 2},{name = "Dunkler Stahl", colorindex = 3},
{name = "Silber", colorindex = 4},{name = "Blausilber", colorindex = 5},
{name = "Walzstahl", colorindex = 6},{name = "Schattensilber", colorindex = 7},
{name = "Steinsilber", colorindex = 8},{name = "Mitternachtsilber", colorindex = 9},
{name = "Gusseisensilber", colorindex = 10},{name = "Rot", colorindex = 27},
{name = "Torino-Rot", colorindex = 28},{name = "Purpur-Rot", colorindex = 29},
{name = "Lavarot", colorindex = 150},{name = "Brandrot", colorindex = 30},
{name = "Gnadenrot", colorindex = 31},{name = "Granatrot", colorindex = 32},
{name = "Sonnenuntergangsrot", colorindex = 33},{name = "Cabernet-Rot", colorindex = 34},
{name = "Weinrot", colorindex = 143},{name = "Bonbonrot", colorindex = 35},
{name = "Heißes Pink", colorindex = 135},{name = "Pfister-Rosa", colorindex = 137},
{name = "Lachs", colorindex = 136},{name = "Sonnenaufgangsorange", colorindex = 36},
{name = "Orange", colorindex = 38},{name = "Hellorange", colorindex = 138},
{name = "Gold", colorindex = 99},{name = "Bronze", colorindex = 90},
{name = "Gelb", colorindex = 88},{name = "Renngelb", colorindex = 89},
{name = "Taugelb", colorindex = 91},{name = "Dunkelgrün", colorindex = 49},
{name = "Renngrün", colorindex = 50},{name = "Meergrün", colorindex = 51},
{name = "Olivgrün", colorindex = 52},{name = "Hellgrün", colorindex = 53},
{name = "Petrolgrün", colorindex = 54},{name = "Limettengrün", colorindex = 92},
{name = "Mitternachtsblau", colorindex = 141},
{name = "Galaxisblau", colorindex = 61},{name = "Dunkelblau", colorindex = 62},
{name = "Sächsisch-Blau", colorindex = 63},{name = "Blau", colorindex = 64},
{name = "Marineblau", colorindex = 65},{name = "Hafenblau", colorindex = 66},
{name = "Diamantblau", colorindex = 67},{name = "Surfblau", colorindex = 68},
{name = "Nautisch-Blau", colorindex = 69},{name = "Rennblau", colorindex = 73},
{name = "Ultrablau", colorindex = 70},{name = "Hellblau", colorindex = 74},
{name = "Schokobraun", colorindex = 96},{name = "Bisonbraun", colorindex = 101},
{name = "Bachbraun", colorindex = 95},{name = "Feltzer-Braun", colorindex = 94},
{name = "Ahornbraun", colorindex = 97},{name = "Buchenbraun", colorindex = 103},
{name = "Siena-Ocker", colorindex = 104},{name = "Sattelbraun", colorindex = 98},
{name = "Moosbraun", colorindex = 100},{name = "Kastanienbraun", colorindex = 102},
{name = "Strohbraun", colorindex = 99},{name = "Sandbraun", colorindex = 105},
{name = "Ausgeblichenes Braun", colorindex = 106},{name = "Schafter-Lila", colorindex = 71},
{name = "Spinnaker-Lila", colorindex = 72},{name = "Mitternachtsviolett", colorindex = 142},
{name = "Hell-Lila", colorindex = 145},{name = "Cremeweiß", colorindex = 107},
{name = "Eis", colorindex = 111},{name = "Frostweiß", colorindex = 112}}
local metalcolors = {
{name = "Gebürsteter Stahl",colorindex = 117},
{name = "Gebürsteter schwarzer Stahl",colorindex = 118},
{name = "Gebürstetes Aluminium",colorindex = 119},
{name = "Pures Gold",colorindex = 158},
{name = "Gebürstetes Gold",colorindex = 159}
}
local mattecolors = {
{name = "Schwarz", colorindex = 12},
{name = "Grau", colorindex = 13},
{name = "Hellgrau", colorindex = 14},
{name = "Eis", colorindex = 131},
{name = "Blau", colorindex = 83},
{name = "Dunkelblau", colorindex = 82},
{name = "Mitternachtsblau", colorindex = 84},
{name = "Mitternachtsviolett", colorindex = 149},
{name = "Schafter-Lila", colorindex = 148},
{name = "Rot", colorindex = 39},
{name = "Dunkelrot", colorindex = 40},
{name = "Orange", colorindex = 41},
{name = "Gelb", colorindex = 42},
{name = "Limettengrün", colorindex = 55},
{name = "Grün", colorindex = 128},
{name = "Waldgrün", colorindex = 151},
{name = "Blattgrün", colorindex = 155},
{name = "Olivgrün", colorindex = 152},
{name = "Erdbraun", colorindex = 153},
{name = "Wüstenbeige", colorindex = 154}
}



LSC_Config = {}
LSC_Config.prices = {}

LSC_Config.prices = {

	windowtint = {
		{ name = "Schwarz", tint = 1, price = 1000},
		{ name = "Schwarz verraucht", tint = 2, price = 1000},
		{ name = "Leicht verwischt", tint = 3, price = 1000},
		{ name = "Limo", tint = 4, price = 1000},
		{ name = "Grün", tint = 5, price = 1000},
	},

	--[[Primary]]--

	chrome = {
		colors = {
			{name = "Chrom", colorindex = 120}
		},
		price = 15000
	},

	classic = {
		colors = colors,
		price = 900
	},

	matte = {
		colors = mattecolors,
		price = 900
	},

	metallic = {
		colors = colors,
		price = 900
	},

	metal = {
		colors = metalcolors,
		price = 900
	},

	--[[Secondary]]--

	chrome2 = {
		colors = {
			{name = "Chrom", colorindex = 120}
		},
		price = 10000
	},

	classic2 = {
		colors = colors,
		price = 900
	},

	matte2 = {
		colors = mattecolors,
		price = 900
	},

	metallic2 = {
		colors = colors,
		price = 900
	},

	metal2 = {
		colors = metalcolors,
		price = 900
	},

	neonlayout = {
		{name = "Vorne, Hinten und Seiten", price = 12500},
	},

	neoncolor = {
		{ name = "Weiß", neon = {255,255,255}, price = 1000},
		{ name = "Blau", neon = {0,0,255}, price = 1000},
		{ name = "Elektrischesblau", neon = {0,150,255}, price = 1000},
		{ name = "Mintgrün", neon = {50,255,155}, price = 1000},
		{ name = "Limettengrün", neon = {0,255,0}, price = 1000},
		{ name = "Gelb", neon = {255,255,0}, price = 1000},
		{ name = "Gold", neon = {204,204,0}, price = 1000},
		{ name = "Orange", neon = {255,128,0}, price = 1000},
		{ name = "Rot", neon = {255,0,0}, price = 1000},
		{ name = "Pink", neon = {255,102,255}, price = 1000},
		{ name = "Hellviolett",neon = {255,0,255}, price = 1000},
		{ name = "Violett", neon = {153,0,153}, price = 1000},
		{ name = "Braun", neon = {139,69,19}, price = 1000},
	},

	plates = {
		{ name = "Blau auf Weiß 1", plateindex = 0, price = 200},
		{ name = "Blau auf Weiß 2", plateindex = 3, price = 200},
		{ name = "Blau auf Weiß 3", plateindex = 4, price = 200},
		{ name = "Gelb auf Blau", plateindex = 2, price = 300},
		{ name = "Gelb auf Schwarz", plateindex = 1, price = 600},
	},

	wheelaccessories = {
		{ name = "Standartreifen", price = 1000},
		{ name = "Custom Reifen", price = 1250},
		{ name = "Schusssichere Reifen", price = 5000},
		{ name = "Weißer Reifenqualm",smokecolor = {254,254,254}, price = 3000},
		{ name = "Schwarzer Reifenqualm", smokecolor = {1,1,1}, price = 3000},
		{ name = "Blauer Reifenqualm", smokecolor = {0,150,255}, price = 3000},
		{ name = "Gelber Reifenqualm", smokecolor = {255,255,50}, price = 3000},
		{ name = "Oranger Reifenqualm", smokecolor = {255,153,51}, price = 3000},
		{ name = "Roter Reifenqualm", smokecolor = {255,10,10}, price = 3000},
		{ name = "Grüner Reifenqualm", smokecolor = {10,255,10}, price = 3000},
		{ name = "Violetter Reifenqualm", smokecolor = {153,10,153}, price = 3000},
		{ name = "Rosa Reifenqualm", smokecolor = {255,102,178}, price = 3000},
		{ name = "Grauer Reifenqualm",smokecolor = {128,128,128}, price = 3000},
	},

	wheelcolor = {
		colors = colors,
		price = 1000,
	},

	frontwheel = {
		{name = "Stock", wtype = 6, mod = -1, price = 1000},
		{name = "Speedway", wtype = 6, mod = 0, price = 1000},
		{name = "Streetspecial", wtype = 6, mod = 1, price = 1000},
		{name = "Racer", wtype = 6, mod = 2, price = 1000},
		{name = "Trackstar", wtype = 6, mod = 3, price = 1000},
		{name = "Overlord", wtype = 6, mod = 4, price = 1000},
		{name = "Trident", wtype = 6, mod = 5, price = 1000},
		{name = "Triplethreat", wtype = 6, mod = 6, price = 1000},
		{name = "Stilleto", wtype = 6, mod = 7, price = 1000},
		{name = "Wires", wtype = 6, mod = 8, price = 1000},
		{name = "Bobber", wtype = 6, mod = 9, price = 1000},
		{name = "Solidus", wtype = 6, mod = 10, price = 1000},
		{name = "Iceshield", wtype = 6, mod = 11, price = 1000},
		{name = "Loops", wtype = 6, mod = 12, price = 1000},
	},

	backwheel = {
		{name = "Stock", wtype = 6, mod = -1, price = 1000},
		{name = "Speedway", wtype = 6, mod = 0, price = 1000},
		{name = "Streetspecial", wtype = 6, mod = 1, price = 1000},
		{name = "Racer", wtype = 6, mod = 2, price = 1000},
		{name = "Trackstar", wtype = 6, mod = 3, price = 1000},
		{name = "Overlord", wtype = 6, mod = 4, price = 1000},
		{name = "Trident", wtype = 6, mod = 5, price = 1000},
		{name = "Triplethreat", wtype = 6, mod = 6, price = 1000},
		{name = "Stilleto", wtype = 6, mod = 7, price = 1000},
		{name = "Wires", wtype = 6, mod = 8, price = 1000},
		{name = "Bobber", wtype = 6, mod = 9, price = 1000},
		{name = "Solidus", wtype = 6, mod = 10, price = 1000},
		{name = "Iceshield", wtype = 6, mod = 11, price = 1000},
		{name = "Loops", wtype = 6, mod = 12, price = 1000},
	},

	sportwheels = {
		{name = "Stock", wtype = 0, mod = -1, price = 1000},
		{name = "Inferno", wtype = 0, mod = 0, price = 1000},
		{name = "Deepfive", wtype = 0, mod = 1, price = 1000},
		{name = "Lozspeed", wtype = 0, mod = 2, price = 1000},
		{name = "Diamondcut", wtype = 0, mod = 3, price = 1000},
		{name = "Chrono", wtype = 0, mod = 4, price = 1000},
		{name = "Feroccirr", wtype = 0, mod = 5, price = 1000},
		{name = "Fiftynine", wtype = 0, mod = 6, price = 1000},
		{name = "Mercie", wtype = 0, mod = 7, price = 1000},
		{name = "Syntheticz", wtype = 0, mod = 8, price = 1000},
		{name = "Organictyped", wtype = 0, mod = 9, price = 1000},
		{name = "Endov1", wtype = 0, mod = 10, price = 1000},
		{name = "Duper7", wtype = 0, mod = 11, price = 1000},
		{name = "Uzer", wtype = 0, mod = 12, price = 1000},
		{name = "Groundride", wtype = 0, mod = 13, price = 1000},
		{name = "Spacer", wtype = 0, mod = 14, price = 1000},
		{name = "Venum", wtype = 0, mod = 15, price = 1000},
		{name = "Cosmo", wtype = 0, mod = 16, price = 1000},
		{name = "Dashvip", wtype = 0, mod = 17, price = 1000},
		{name = "Icekid", wtype = 0, mod = 18, price = 1000},
		{name = "Ruffeld", wtype = 0, mod = 19, price = 1000},
		{name = "Wangenmaster", wtype = 0, mod = 20, price = 1000},
		{name = "Superfive", wtype = 0, mod = 21, price = 1000},
		{name = "Endov2", wtype = 0, mod = 22, price = 1000},
		{name = "Slitsix", wtype = 0, mod = 23, price = 1000},
	},

	suvwheels = {
		{name = "Stock", wtype = 3, mod = -1, price = 1000},
		{name = "Vip", wtype = 3, mod = 0, price = 1000},
		{name = "Benefactor", wtype = 3, mod = 1, price = 1000},
		{name = "Cosmo", wtype = 3, mod = 2, price = 1000},
		{name = "Bippu", wtype = 3, mod = 3, price = 1000},
		{name = "Royalsix", wtype = 3, mod = 4, price = 1000},
		{name = "Fagorme", wtype = 3, mod = 5, price = 1000},
		{name = "Deluxe", wtype = 3, mod = 6, price = 1000},
		{name = "Icedout", wtype = 3, mod = 7, price = 1000},
		{name = "Cognscenti", wtype = 3, mod = 8, price = 1000},
		{name = "Lozspeedten", wtype = 3, mod = 9, price = 1000},
		{name = "Supernova", wtype = 3, mod = 10, price = 1000},
		{name = "Obeyrs", wtype = 3, mod = 11, price = 1000},
		{name = "Lozspeedballer", wtype = 3, mod = 12, price = 1000},
		{name = "Extra vaganzo", wtype = 3, mod = 13, price = 1000},
		{name = "Splitsix", wtype = 3, mod = 14, price = 1000},
		{name = "Empowered", wtype = 3, mod = 15, price = 1000},
		{name = "Sunrise", wtype = 3, mod = 16, price = 1000},
		{name = "Dashvip", wtype = 3, mod = 17, price = 1000},
		{name = "Cutter", wtype = 3, mod = 18, price = 1000},
	},

	offroadwheels = {
		{name = "Stock", wtype = 4, mod = -1, price = 1000},
		{name = "Raider", wtype = 4, mod = 0, price = 1000},
		{name = "Mudslinger", wtype = 4, modtype = 23, wtype = 4, mod = 1, price = 1000},
		{name = "Nevis", wtype = 4, mod = 2, price = 1000},
		{name = "Cairngorm", wtype = 4, mod = 3, price = 1000},
		{name = "Amazon", wtype = 4, mod = 4, price = 1000},
		{name = "Challenger", wtype = 4, mod = 5, price = 1000},
		{name = "Dunebasher", wtype = 4, mod = 6, price = 1000},
		{name = "Fivestar", wtype = 4, mod = 7, price = 1000},
		{name = "Rockcrawler", wtype = 4, mod = 8, price = 1000},
		{name = "Milspecsteelie", wtype = 4, mod = 9, price = 1000},
	},

	tunerwheels = {
		{name = "Stock", wtype = 5, mod = -1, price = 1000},
		{name = "Cosmo", wtype = 5, mod = 0, price = 1000},
		{name = "Supermesh", wtype = 5, mod = 1, price = 1000},
		{name = "Outsider", wtype = 5, mod = 2, price = 1000},
		{name = "Rollas", wtype = 5, mod = 3, price = 1000},
		{name = "Driffmeister", wtype = 5, mod = 4, price = 1000},
		{name = "Slicer", wtype = 5, mod = 5, price = 1000},
		{name = "Elquatro", wtype = 5, mod = 6, price = 1000},
		{name = "Dubbed", wtype = 5, mod = 7, price = 1000},
		{name = "Fivestar", wtype = 5, mod = 8, price = 1000},
		{name = "Slideways", wtype = 5, mod = 9, price = 1000},
		{name = "Apex", wtype = 5, mod = 10, price = 1000},
		{name = "Stancedeg", wtype = 5, mod = 11, price = 1000},
		{name = "Countersteer", wtype = 5, mod = 12, price = 1000},
		{name = "Endov1", wtype = 5, mod = 13, price = 1000},
		{name = "Endov2dish", wtype = 5, mod = 14, price = 1000},
		{name = "Guppez", wtype = 5, mod = 15, price = 1000},
		{name = "Chokadori", wtype = 5, mod = 16, price = 1000},
		{name = "Chicane", wtype = 5, mod = 17, price = 1000},
		{name = "Saisoku", wtype = 5, mod = 18, price = 1000},
		{name = "Dishedeight", wtype = 5, mod = 19, price = 1000},
		{name = "Fujiwara", wtype = 5, mod = 20, price = 1000},
		{name = "Zokusha", wtype = 5, mod = 21, price = 1000},
		{name = "Battlevill", wtype = 5, mod = 22, price = 1000},
		{name = "Rallymaster", wtype = 5, mod = 23, price = 1000},
	},

	highendwheels = {
		{name = "Stock", wtype = 7, mod = -1, price = 1000},
		{name = "Shadow", wtype = 7, mod = 0, price = 1000},
		{name = "Hyper", wtype = 7, mod = 1, price = 1000},
		{name = "Blade", wtype = 7, mod = 2, price = 1000},
		{name = "Diamond", wtype = 7, mod = 3, price = 1000},
		{name = "Supagee", wtype = 7, mod = 4, price = 1000},
		{name = "Chromaticz", wtype = 7, mod = 5, price = 1000},
		{name = "Merciechlip", wtype = 7, mod = 6, price = 1000},
		{name = "Obeyrs", wtype = 7, mod = 7, price = 1000},
		{name = "Gtchrome", wtype = 7, mod = 8, price = 1000},
		{name = "Cheetahr", wtype = 7, mod = 9, price = 1000},
		{name = "Solar", wtype = 7, mod = 10, price = 1000},
		{name = "Splitten", wtype = 7, mod = 11, price = 1000},
		{name = "Dashvip", wtype = 7, mod = 12, price = 1000},
		{name = "Lozspeedten", wtype = 7, mod = 13, price = 1000},
		{name = "Carboninferno", wtype = 7, mod = 14, price = 1000},
		{name = "Carbonshadow", wtype = 7, mod = 15, price = 1000},
		{name = "Carbonz", wtype = 7, mod = 16, price = 1000},
		{name = "Carbonsolar", wtype = 7, mod = 17, price = 1000},
		{name = "Carboncheetahr", wtype = 7, mod = 18, price = 1000},
		{name = "Carbonsracer", wtype = 7, mod = 19, price = 1000},
	},

	lowriderwheels = {
		{name = "Stock", wtype = 2, mod = -1, price = 1000},
		{name = "Flare", wtype = 2, mod = 0, price = 1000},
		{name = "Wired", wtype = 2, mod = 1, price = 1000},
		{name = "Triplegolds", wtype = 2, mod = 2, price = 1000},
		{name = "Bigworm", wtype = 2, mod = 3, price = 1000},
		{name = "Sevenfives", wtype = 2, mod = 4, price = 1000},
		{name = "Splitsix", wtype = 2, mod = 5, price = 1000},
		{name = "Freshmesh", wtype = 2, mod = 6, price = 1000},
		{name = "Leadsled", wtype = 2, mod = 7, price = 1000},
		{name = "Turbine", wtype = 2, mod = 8, price = 1000},
		{name = "Superfin", wtype = 2, mod = 9, price = 1000},
		{name = "Classicrod", wtype = 2, mod = 10, price = 1000},
		{name = "Dollar", wtype = 2, mod = 11, price = 1000},
		{name = "Dukes", wtype = 2, mod = 12, price = 1000},
		{name = "Lowfive", wtype = 2, mod = 13, price = 1000},
		{name = "Gooch", wtype = 2, mod = 14, price = 1000},
	},

	musclewheels = {
		{name = "Stock", wtype = 1, mod = -1, price = 1000},
		{name = "Classicfive", wtype = 1, mod = 0, price = 1000},
		{name = "Dukes", wtype = 1, mod = 1, price = 1000},
		{name = "Musclefreak", wtype = 1, mod = 2, price = 1000},
		{name = "Kracka", wtype = 1, mod = 3, price = 1000},
		{name = "Azrea", wtype = 1, mod = 4, price = 1000},
		{name = "Mecha", wtype = 1, mod = 5, price = 1000},
		{name = "Blacktop", wtype = 1, mod = 6, price = 1000},
		{name = "Dragspl", wtype = 1, mod = 7, price = 1000},
		{name = "Revolver", wtype = 1, mod = 8, price = 1000},
		{name = "Classicrod", wtype = 1, mod = 9, price = 1000},
		{name = "Spooner", wtype = 1, mod = 10, price = 1000},
		{name = "Fivestar", wtype = 1, mod = 11, price = 1000},
		{name = "Oldschool", wtype = 1, mod = 12, price = 1000},
		{name = "Eljefe", wtype = 1, mod = 13, price = 1000},
		{name = "Dodman", wtype = 1, mod = 14, price = 1000},
		{name = "Sixgun", wtype = 1, mod = 15, price = 1000},
		{name = "Mercenary", wtype = 1, mod = 16, price = 1000},
	},
	

	trim = {
		colors = colors,
		price = 1000
	},

	mods = {
	
--[[Liveries]]--
	[48] = {
		startprice = 15000,
		increaseby = 2500
	},
	
--[[Windows]]--
	[46] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Tank]]--
	[45] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Trim]]--
	[44] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Aerials]]--
	[43] = {
		startprice = 5000,
		increaseby = 1250
	},

--[[Arch cover]]--
	[42] = {
		startprice = 5000,
		increaseby = 1250
	},

--[[Struts]]--
	[41] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Air filter]]--
	[40] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Engine block]]--
	[39] = {
		startprice = 5000,
		increaseby = 1250
	},

--[[Hydraulics]]--
	[38] = {
		startprice = 15000,
		increaseby = 2500
	},
	
--[[Trunk]]--
	[37] = {
		startprice = 5000,
		increaseby = 1250
	},

--[[Speakers]]--
	[36] = {
		startprice = 5000,
		increaseby = 1250
	},

--[[Plaques]]--
	[35] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Shift leavers]]--
	[34] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Steeringwheel]]--
	[33] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Seats]]--
	[32] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Door speaker]]--
	[31] = {
		startprice = 5000,
		increaseby = 1250
	},

--[[Dial]]--
	[30] = {
		startprice = 5000,
		increaseby = 1250
	},
--[[Dashboard]]--
	[29] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Ornaments]]--
	[28] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Trim]]--
	[27] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Vanity plates]]--
	[26] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Plate holder]]--
	[25] = {
		startprice = 5000,
		increaseby = 1250
	},
	
--[[Headlights]]--
	[22] = {
		{name = "Standart Scheinwerfer", mod = 0, price = 0},
		{name = "Xenon-Scheinwerfer", mod = 1, price = 1625},
	},
	
--[[Turbo]]--
	[18] = {
		{ name = "Keiner", mod = 0, price = 0},
		{ name = "Turbotuning", mod = 1, price = 15000},
	},
	
--[[Armor]]--
	[16] = {
		{name = "Panzerung 20%",modtype = 16, mod = 0, price = 11000},
		{name = "Panzerung 40%",modtype = 16, mod = 1, price = 19500},
		{name = "Panzerung 60%",modtype = 16, mod = 2, price = 25000},
		{name = "Panzerung 80%",modtype = 16, mod = 3, price = 35000},
		{name = "Panzerung 100%",modtype = 16, mod = 4, price = 50000},
	},

--[[Suspension]]--
	[15] = {
		{name = "Tiefergelegte Federung",mod = 0, price = 1000},
		{name = "Straßenfederung",mod = 1, price = 2500},
		{name = "Sportfederung",mod = 2, price = 3500},
		{name = "Wettkampf-Federung",mod = 3, price = 5000},
	},

--[[Horn]]--
	[14] = {
		{name = "Lkw-Hupe", mod = 0, price = 1625},
		{name = "Polizeihupe", mod = 1, price = 4062},
		{name = "Clownhupe", mod = 2, price = 6500},
		{name = "Musikalische-Hupe 1", mod = 3, price = 11375},
		{name = "Musikalische-Hupe 2", mod = 4, price = 11375},
		{name = "Musikalische-Hupe 3", mod = 5, price = 11375},
		{name = "Musikalische-Hupe 4", mod = 6, price = 11375},
		{name = "Musikalische-Hupe 5", mod = 7, price = 11375},
		{name = "Trombonen Hupe", mod = 8, price = 11375},
		{name = "Klassische-Hupe 1", mod = 9, price = 11375},
		{name = "Klassische-Hupe 2", mod = 10, price = 11375},
		{name = "Klassische-Hupe 3", mod = 11, price = 11375},
		{name = "Klassische-Hupe 4", mod = 12, price = 11375},
		{name = "Klassische-Hupe 5", mod = 13, price = 11375},
		{name = "Klassische-Hupe 6", mod = 14, price = 11375},
		{name = "Klassische-Hupe 7", mod = 15, price = 11375},
		{name = "Scaledo Hupe", mod = 16, price = 11375},
		{name = "Scalere Hupe", mod = 17, price = 11375},
		{name = "Scalemi Hupe", mod = 18, price = 11375},
		{name = "Scalefa Hupe", mod = 19, price = 11375},
		{name = "Scalesol Hupe", mod = 20, price = 11375},
		{name = "Scalela Hupe", mod = 21, price = 11375},
		{name = "Scaleti Hupe", mod = 22, price = 11375},
		{name = "Scaledo Hupe Hoch", mod = 23, price = 11375},
		{name = "Jazz-Hupe 1", mod = 25, price = 11375},
		{name = "Jazz-Hupe 2", mod = 26, price = 11375},
		{name = "Jazz-Hupe 3", mod = 27, price = 11375},
		{name = "Jazz-Loop-Hupe", mod = 28, price = 11375},
		{name = "Starspangban-Hupe 1", mod = 29, price = 11375},
		{name = "Starspangban-Hupe 2", mod = 30, price = 11375},
		{name = "Starspangban-Hupe 3", mod = 31, price = 11375},
		{name = "Starspangban-Hupe 4", mod = 32, price = 11375},
		{name = "Klassische-Hupe-Loop 1", mod = 33, price = 11375},
		{name = "Klassische-Hupe-Loop 2", mod = 34, price = 11375},
		{name = "Klassische-Hupe-Loop 3", mod = 35, price = 11375},
	},

--[[Transmission]]--
	[13] = {
		{name = "Straßengetriebe", mod = 0, price = 15000},
		{name = "Sportgetriebe", mod = 1, price = 35000},
		{name = "Renngetriebe", mod = 2, price = 25000},
	},
	
--[[Brakes]]--
	[12] = {
		{name = "Straßenbremsen", mod = 0, price = 7500},
		{name = "Sportbremsen", mod = 1, price = 12500},
		{name = "Rennbremsen", mod = 2, price = 25000},
	},
	
--[[Engine]]--
	[11] = {
		{name = "EMS-Verbesserung 2", mod = 0, price = 4000},
		{name = "EMS-Verbesserung 3", mod = 1, price = 8000},
		{name = "EMS-Verbesserung 4", mod = 2, price = 16000},
	},
	
--[[Roof]]--
	[10] = {
		startprice = 1250,
		increaseby = 400
	},
	
--[[Fenders]]--
	[8] = {
		startprice = 1500,
		increaseby = 400
	},
	
--[[Hood]]--
	[7] = {
		startprice = 1500,
		increaseby = 400
	},
	
--[[Grille]]--
	[6] = {
		startprice = 1250,
		increaseby = 400
	},
	
--[[Roll cage]]--
	[5] = {
		startprice = 1250,
		increaseby = 400
	},
	
--[[Exhaust]]--
	[4] = {
		startprice = 1000,
		increaseby = 400
	},
	
--[[Skirts]]--
	[3] = {
		startprice = 1250,
		increaseby = 400
	},
	
--[[Rear bumpers]]--
	[2] = {
		startprice = 2500,
		increaseby = 500
	},
	
--[[Front bumpers]]--
	[1] = {
		startprice = 2500,
		increaseby = 500
	},
	
--[[Spoiler]]--
	[0] = {
		startprice = 2500,
		increaseby = 400
	},
	}
	
}

LSC_Config.ModelBlacklist = {
	"police",
}

LSC_Config.lock = false

LSC_Config.oldenter = false

LSC_Config.menu = {
	controls = {
		menu_up = 27,
		menu_down = 173,
		menu_left = 174,
		menu_right = 175,
		menu_select = 201,
		menu_back = 177
	},

	position = "left",
	theme = "light",
	maxbuttons = 10,
	width = 0.24,
	height = 0.36
}
