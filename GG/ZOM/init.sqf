/*
EXILE-Z Project v3.2 - Edit for EXILE by SAM, Otto and CaptionJack of RelentlessServers.com
Thanks to code34 for better spawn system the core is based on Civilian Life by code34
*/
	
	//Zombie Types - This can spawn any mod type it's not limited to Ryan mod just edit skins. All here are walkers and one boss
    civilclass = ["RyanZombieC_man_polo_2_Fslow", "RyanZombieC_man_polo_4_Fslow", "RyanZombieC_man_polo_5_Fslow", "RyanZombieC_man_polo_6_Fslow", "RyanZombieC_man_p_fugitive_Fslow", "RyanZombieC_man_w_worker_Fslow", "RyanZombieC_scientist_Fslow", "RyanZombieC_man_hunter_1_Fslow", "RyanZombieC_man_pilot_Fslow", "RyanZombieC_journalist_Fslow", "RyanZombieC_Orestesslow", "RyanZombieC_Nikosslow", "RyanZombieB_Soldier_02_fslow", "RyanZombieB_Soldier_02_f_1slow", "RyanZombieB_Soldier_02_f_1_1slow", "RyanZombieB_Soldier_03_fslow", "RyanZombieB_Soldier_03_f_1slow", "RyanZombieB_Soldier_03_f_1_1slow", "RyanZombieB_Soldier_04_fslow", "RyanZombieB_Soldier_04_f_1slow", "RyanZombieB_Soldier_04_f_1_1slow", "RyanZombieB_Soldier_lite_Fslow", "RyanZombieB_Soldier_lite_F_1slow", "RyanZombieB_RangeMaster_Fmedium"];
    
	//civilclass = ["C_man_polo_1_F_euro","C_man_polo_2_F_asia","C_man_polo_3_F"]; //used for teasing without ryans mod running
	
	//Zombie Loot settings
	zvest = ["V_TacVest_blk_POLICE","V_Rangemaster_belt","V_BandollierB_khk","TRYK_Hrp_vest_ucp""TRYK_V_harnes_blk_L","TRYK_V_harnes_od_L","TRYK_V_Sheriff_BA_OD","TRYK_V_harnes_TAN_L"]; //vest bags looked funny so vest was 2nd on list to use
    zloot = ["Exile_Item_Matches","Exile_Item_Surstromming","Exile_Item_PlasticBottleFreshWater","Exile_Item_ChristmasTinner","Chemlight_red","30Rnd_556x45_Stanag_Tracer_Red","Exile_Item_DuctTape","FlareRed_F","Exile_Item_CodeLock","Exile_Item_CamoTentKit","HandGrenade","APERSTripMine_Wire_Mag"]; //loot in vest 

	switch (toLower worldName) do
	{ 
		case "altis":		{ 	ZOMaltistownpositions = [[20875,6575],[20775,6675],[20875,6675],[20775,6775],[20875,6775],[21675,7575],[21775,7575],[20475,8875],[20575,8875],[3775,11075],[3875,11075],[5175,11075],[3875,11175],[5075,11175],[5175,11175],[5075,11275],[5175,11275],[4975,11375],[5075,11375],[9475,11575],[20175,11575],[4175,11675],[20175,11675],[20275,11675],[4075,11775],[4175,11775],[20175,11775],[20275,11775],[9075,11875],[9175,11875],[9275,11875],[9375,11875],[8975,11975],[9075,11975],[9175,11975],[8875,12075],[8975,12075],[9075,12075],[10675,12175],[10575,12275],[10675,12275],[16575,12475],[16675,12475],[16775,12475],[16775,12575],[16875,12575],[16975,12575],[3475,12675],[16775,12675],[16875,12675],[16975,12675],[3475,12775],[3575,12775],[3775,12775],[3875,12775],[16775,12775],[16875,12775],[3475,12875],[3575,12875],[3675,12875],[16775,12875],[16875,12875],[3275,12975],[3375,12975],[3475,12975],[3575,12975],[3675,12975],[3375,13075],[3475,13075],[3575,13075],[3675,13075],[3275,13175],[3375,13175],[3475,13175],[3575,13175],[17375,13175],[17475,13175],[3475,13275],[3575,13275],[3675,13275],[3775,13275],[19375,13275],[19475,13275],[3575,13375],[10975,13375],[11075,13375],[3675,13475],[3775,13475],[3575,13575],[3675,13575],[3775,13575],[3875,13575],[3775,13675],[3875,13675],[3975,13675],[11675,13675],[3675,13775],[3775,13775],[3875,13775],[3975,13775],[11775,13775],[3875,13875],[3575,13975],[12375,14175],[3375,14275],[12275,14275],[12375,14275],[12575,14275],[12675,14275],[12475,14375],[12575,14375],[12675,14375],[3575,14475],[12475,14475],[11075,14575],[11175,14575],[4275,15075],[9575,15075],[12875,15075],[12975,15075],[17975,15175],[18075,15175],[18175,15175],[17975,15275],[18075,15275],[18175,15275],[18275,15275],[7375,15375],[18175,15375],[12375,15575],[12475,15575],[20575,15675],[9075,15775],[9275,15775],[20775,15775],[9175,15875],[9275,15875],[9375,15875],[9375,15975],[9475,15975],[9575,15975],[9575,16075],[16675,16075],[4775,16175],[4875,16175],[15575,16175],[16675,16175],[6275,16275],[14175,16275],[15275,16275],[15975,16275],[21275,16375],[21375,16375],[21475,16375],[21575,16375],[7175,16475],[18775,16575],[18875,16575],[18775,16675],[18675,16775],[20875,16875],[20975,16875],[20875,16975],[20975,16975],[21075,16975],[15975,17075],[20875,17075],[20975,17075],[16475,17175],[20975,17175],[10475,17275],[16175,17275],[16275,17275],[16375,17275],[16475,17275],[14475,17575],[14575,17575],[14475,17675],[8575,18275],[8675,18275],[13975,18575],[14075,18575],[13875,18675],[13975,18675],[14075,18675],[13875,18775],[13975,18775],[14075,18775],[10275,19075],[10375,19075],[20975,19175],[9375,20275],[9475,20275],[25575,21275],[25675,21275],[25775,21275],[4575,21375],[25575,21375],[25675,21375],[25775,21375],[25775,21475],[26875,23175],[26975,23275],[27075,23275]]; };
		case "tavi":		{ 	ZOMaltistownpositions = [[8448.5566,12173.691],[9131.0156,11679.45],[9558.2451,11947.835],[10000.894,11626.954],[8981.0137,12557.397],[10528.601,9973.7227],[9507.708,12650.86],[9818.2705,12577.846],[11663.231,726.03424],[10955.8,719.75824],[11059.969,728.52136],[11814.851,1418.2705],[10012.179,1366.7249],[9600.0459,1776.3806],[8958.1182,2252.908],[8860.5439,2290.4338],[7966.6265,3869.5081],[7634.9399,3996.9844],[7898.5547,4321.2451],[7443.1064,4352.186],[7582.959,4557.6323],[3970.7087,7455.7178],[3813.894,7236.584],[3307.8652,7508.0806],[3307.8652,7508.0806],[5581.6924,8842.7861],[5318.6875,8603.0869],[5823.3125,9813.0811],[5833.0479,9811.1338],[6697.9673,9857.9307],[7938.3809,6707.3281],[7979.9697,6608.4766],[8237.5215,6072.1665],[8507.0781,5595.2104],[9054.2383,5408.6719],[9495.2891,5729.6392],[9671.2178,6016.7607],[10638.893,6505.1147],[8906.0869,8249.4209],[9085.5469,8121.9434],[9174.6543,8019.2236],[9404.8574,7926.3979],[9342.9727,7770.4556],[8734.3867,13288.953],[8521.4375,13589.719],[9249.3232,13400.724],[9638.7471,13478.435],[9188.7822,14102.37],[8719.2764,14787.633],[8702.2949,15138.794],[11044.54,10401.52],[11261.107,10161.636],[11620.049,9962.9541],[11578.236,9161.7178],[11819.144,8992.4814],[12028.966,9237.7041],[15187.977,7880.0195],[15545.979,8500.4434],[16627.496,8251.3691],[16873.783,8141.9409],[17277.242,8175.9009],[17318.828,7493.7739],[17290.982,7491.7363],[17573.098,6221.2134],[17135.111,6347.7607],[15713.431,9113.7158],[15339.847,9074.9512],[15130.617,9294.7881],[15442.604,9483.3408],[15735.229,9490.3594],[14831.213,9544.8076],[15209.593,9755.9629],[15180.763,10193.826],[15496.825,9990.3271],[14554.661,10304.792],[14849.282,9973.1123],[16299.936,11601.954],[16972.41,12699.269],[16218.357,13663.106],[15642.881,13360.795],[16008.599,14263.86],[15119.019,14884.078],[15446.672,16201.903],[15273.785,16549.07],[15559.929,16582.221],[15055.551,18145.258],[13428.99,19380.047],[11317.003,17838.096],[8545.4043,19374.348],[8898.9365,19596.717],[10119.443,19167.955],[10246.595,19039.998],[10407.687,19414.658],[10453.391,16930.924],[14439.005,11336.298],[14813.067,11886.109],[14187.388,11885.009],[13881.137,12205.534],[14075.425,12370.186],[12726.161,11849.591],[12696.602,12335.532],[12585.214,11868.945],[13625.691,13563.593],[13260.441,13423.711],[12493.986,13540.482],[12506.061,13862.103],[12731.577,14419.695],[13171.918,14460.074],[13027.477,14994.797],[12656.186,15164.038],[11668.42,14923.229],[11390.315,15187.076],[11215.669,15431.354],[11214.227,15845.778],[11518.171,15760.008],[11621.002,15359.594],[11857.278,15689.494],[11971.312,15277.789],[12274.815,15433.927],[5631.5039,18321.373],[5834.2031,17452.783],[5565.8184,16750.258],[5675.9521,16097.318],[4320.561,14084.927],[5435.9844,14788.549],[5088.354,17704.426],[5034.8169,17630.166],[3819.4636,17918.49],[3920.9495,17715.514],[2429.9548,16305.021],[2789.928,16692.742],[2876.4038,17251.42],[1926.4519,17201.813],[1453.3861,17411.828],[7599.0337,7964.4468],[6963.5503,8305.2588],[16569.467,9730.7529],[16721.697,10428.78],[16281.102,10526.556],[1070.8973,17742.738],[3407.522,7928.4702],[5402.498,9808.3994],[8698.334,13979.76],[17512.75,13072.147],[14684.188,18655.305],[14975.073,18535.658],[10018.705,18748.443],[10286.173,18454.229],[10951.499,18911.09],[11110.626,18648.414],[1904.4985,16767.131],[5853.104,14564.622],[11372.147,1138.7158],[5404.7881,5902.5713],[4585.23,6349.6016],[10507.724,1067.9255],[9868.9795,7472.2231],[8551.208,20479.279],[13074.995,12884.738],[2168.7668,7048.6631],[8867.7129,15550.046],[8496.4043,16309.97],[8507.418,16730.055],[16020.88,15629.426],[15149.074,17181.629],[12783.397,19180.166],[13014.878,14016.983],[3452.6633,17781.852],[4342.5762,18069.854],[4618.3413,14169.716],[10417.57,6775.4521],[9390.3125,5223.2695],[3757.1257,7720.9565],[10209.288,10225.223],[9806.5039,12088.028],[7787.98,9095.3115],[9171.8271,14547.546],[9169.2373,14824.719],[16761.459,6281.8931],[17182.18,5621.9722],[16287.584,10039.402],[16445.887,14302.153],[15056.868,15913.666],[12372.97,14872.185],[6095.7056,17751.643],[5570.999,14104.693],[2241.1531,16746.287],[1291.5315,18090.703],[8430.5508,10877.162],[10491.713,10877.255],[13402.454,8646.2461]]; };
		default 			{ _safePosParams = [[],0,-1]; };					// Use default BIS_fnc_findSafePos methods for finding map center (worldSize)
	};
	
	//Main Settings
	zA2Building = 0;         // set to 1 if using A2 Maps only looks for Land_House_L_1_EP1 at this time
	ZOMWALKING = 0;          // set to 1 to force zombies to walk around else they just spawn and wait 0 is better for FPS
	ZOMdistancepop = 40;    // distance trigger pops lower it for better FPS smaller zone = less zeds
	ZOMgroupsize = 1;        // Number max random to group spawn in a trigger zone keep it under 5 for better FPS
	ZOMdistancemove = 30;   // zombie group movement area max is what ever your ZOMdistancepop is
	ZOMcivilianside = east;  // zombie team side east, west and Civilian can be used
	ZOMBAD = 0;              // set to 1 for zombies to attack each other and other AI will kill them - BAD FPS if used
	SAFEZONE = 1;            // Removes All AI in safezone in ExilePlayerInSafezone set to 0 to disable works for default traders
    
	/* 
	FPS Settings - Thanks Otto for updating FPS script this is optional setting exile has own system in place this gives more control
	The FPS system is all in beta stage and not needed for main script I added it here for optional tool with Spawner script 
	*/
	ZOMperformance = true;   // Set to true to enable performance system will cache all server AI systems better for FPS
	ZOMFPSDEBUGER = false;    // set to true to view live AI Caching Report can be seen by all on server if on true 
	ZBNOAM = true;          // true/false removes ambient life from map better FPS
	ZBAISTATZ = false;       // true/false disable AI Cache keeps Cache on vehicles and objects 
	//NOTE: ZBAISTATZ is off by default AI have cleanup code it's optional setting
	
	// HC client settings - also setup to run AI Caching if ZOMperformance is true
	ZOMusehclient = false;   // set to true if running Headless Client
	ZOMhclientname = "HC";   // Headless Client name - needs in game HC logic setup
	
	
	
	/* DON'T EDIT BELOW ADVANCED USERS ONLY */
	generate_zone	= compile preprocessFile "GG\ZOM\generate_zone.sqf";
	if (ZOMWALKING == 1) then {
	walk		= compile preprocessFile "GG\ZOM\walk.sqf";};   
	
	{
		garbage = [_x] spawn generate_zone;
		sleep 0.01;
	}foreach ZOMaltistownpositions;	
	if (!ZOMusehclient && ZOMperformance) then {[1000,-1,false,100,1000,1000]execvm "GG\ZOM\cache\main.sqf";};	
	if(!hasInterface && !isServer && ZOMperformance && ZOMusehclient && name player != ZOMhclientname) then {[1000,-1,false,100,1000,1000]execvm "GG\ZOM\cache\main.sqf"};
