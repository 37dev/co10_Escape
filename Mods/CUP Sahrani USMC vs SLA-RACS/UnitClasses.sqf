/*
 * Description: This file contains the vehicle types and unit types for the units spawned in the mission, and the weapons and magazines found in ammo boxes/cars.
 * "Random array" (used below) means that array will be used to spawn units, and that chance is 1/n that each element will be spawned on each spawn. The array can contain 
 * many elements of the same type, so the example array ["Offroad_DSHKM_INS", "Pickup_PK_INS", "Pickup_PK_INS"] will spawn an Offroad with 1/3 probability, and a 
 * Pickup with 2/3 probability.
 */

private ["_enemyFrequency"];

_enemyFrequency = _this select 0;

A3E_VAR_Side_Blufor = west; //CUP USMC
A3E_VAR_Side_Opfor = east; //CUP SLA
A3E_VAR_Side_Ind = resistance; //CUP RACS

A3E_VAR_Flag_Opfor = "\CUP\BaseConfigs\CUP_BaseConfigs\Data\Flags\flag_sla_co";
A3E_VAR_Flag_Ind = "\CUP\BaseConfigs\CUP_BaseConfigs\Data\Flags\flag_racs_co";

A3E_VAR_Side_Blufor_Str = format["%1",A3E_VAR_Side_Blufor];
A3E_VAR_Side_Opfor_Str = format["%1",A3E_VAR_Side_Opfor];
A3E_VAR_Side_Ind_Str = format["%1",A3E_VAR_Side_Ind];

// Random array. Start position guard types around the prison.
a3e_arr_Escape_StartPositionGuardTypes = [
	"CUP_I_RACS_Soldier"
	,"CUP_I_RACS_Soldier_Light"
	,"CUP_I_RACS_Soldier_Light"
	,"CUP_I_RACS_GL"
	,"CUP_I_RACS_MMG"];

// Prison backpack secondary weapon (and corresponding magazine type).
a3e_arr_PrisonBackpackWeapons = [];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_CZ75","CUP_16Rnd_9x19_cz75"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Compact","CUP_10Rnd_9x19_Compact"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Duty","16Rnd_9x21_Mag"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Duty_M3X","16Rnd_9x21_Mag"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Phantom","CUP_18Rnd_9x19_Phantom"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Phantom_Flashlight","CUP_18Rnd_9x19_Phantom"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Phantom_Flashlight_snds","CUP_18Rnd_9x19_Phantom"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Deagle","CUP_7Rnd_50AE_Deagle"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_M17_Coyote","CUP_17Rnd_9x19_M17_Coyote"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_M17_Coyote","CUP_21Rnd_9x19_M17_Coyote"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_glock17_flashlight","CUP_17Rnd_9x19_glock17"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_glock17_tan_flashlight_snds","CUP_17Rnd_9x19_glock17"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Colt1911","CUP_7Rnd_45ACP_1911"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Colt1911_snds","CUP_7Rnd_45ACP_1911"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_M9","CUP_15Rnd_9x19_M9"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_M9_snds","CUP_15Rnd_9x19_M9"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_M9A1","CUP_15Rnd_9x19_M9"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Mac10","CUP_30Rnd_45ACP_MAC10_M"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Makarov","CUP_8Rnd_9x18_Makarov_M"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_MicroUzi","CUP_30Rnd_9x19_UZI"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_MicroUzi_snds","CUP_30Rnd_9x19_UZI"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_Mk23","CUP_12Rnd_45ACP_mk23"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_mk23_snds_lam","CUP_12Rnd_45ACP_mk23"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_MP7_desert","CUP_20Rnd_46x30_MP7"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_MP7_desert","CUP_40Rnd_46x30_MP7"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_PB6P9_snds","CUP_8Rnd_9x18_MakarovSD_M"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_PMM","CUP_12Rnd_9x18_PMM_M"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_SA61","CUP_20Rnd_B_765x17_Ball_M"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_TaurusTracker455","CUP_6Rnd_45ACP_M"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_TaurusTracker455_gold","CUP_6Rnd_45ACP_M"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_TEC9","CUP_32Rnd_9x19_TEC9"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_TEC9_FA","CUP_32Rnd_9x19_TEC9"];
a3e_arr_PrisonBackpackWeapons pushback ["CUP_hgun_TT","CUP_8Rnd_762x25_TT"];

// Random array. Civilian vehicle classes for ambient traffic.
a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses = [
	//CUP Civ
	"CUP_C_Datsun"
	,"CUP_C_Datsun_4seat"
	,"CUP_C_Golf4_random_Civ"
	,"CUP_C_Golf4_Sport_random_Civ"
	,"CUP_C_Pickup_unarmed_CIV"
	,"CUP_C_Pickup_unarmed_CIV"
	,"CUP_C_Pickup_unarmed_CIV"
	,"CUP_C_Pickup_unarmed_CIV"
	,"CUP_C_Octavia_CIV"
	,"CUP_C_Octavia_CIV"
	,"CUP_C_Octavia_CIV"
	,"CUP_C_Octavia_CIV"
	//CUP Civ Cherna
	,"CUP_C_TT650_CIV"
	,"CUP_C_TT650_CIV"
	,"CUP_C_Skoda_CR_CIV"
	,"CUP_C_Skoda_CR_CIV"
	,"CUP_C_Skoda_CR_CIV"
	,"CUP_C_Skoda_CR_CIV"
	,"CUP_C_S1203_CIV_CR"
	,"CUP_C_S1203_CIV_CR"
	,"CUP_B_S1203_Ambulance_CR"
	,"CUP_C_Datsun_Covered"
	,"CUP_C_Datsun_Plain"
	,"CUP_C_Datsun_Tubeframe"
	,"CUP_C_Volha_CR_CIV"
	,"CUP_C_Volha_CR_CIV"
	,"CUP_C_Volha_CR_CIV"
	,"CUP_C_Volha_CR_CIV"
	,"CUP_C_Golf4_CR_Civ"
	,"CUP_C_Golf4_CR_Civ"
	,"CUP_C_Golf4_Sport_CR_Civ"
	,"CUP_O_Hilux_unarmed_CR_CIV"
	,"CUP_O_Hilux_unarmed_CR_CIV"
	,"CUP_O_Hilux_unarmed_CR_CIV"
	,"CUP_O_Hilux_unarmed_CR_CIV"
	,"CUP_C_SUV_CIV"
	,"CUP_C_SUV_CIV"
	,"CUP_C_SUV_CIV"
	,"CUP_C_SUV_CIV"
	,"CUP_C_Tractor_CIV"
	,"CUP_C_Tractor_Old_CIV"
	,"CUP_C_Lada_CIV"
	,"CUP_C_Lada_CIV"
	,"CUP_C_Lada_CIV"
	,"CUP_C_Lada_CIV"
	//CUP Civ Sahrahni
	,"CUP_C_Bus_City_CIV"
	,"CUP_C_Bus_City_CIV"
	,"CUP_C_Bus_City_CIV"
	,"CUP_C_Ural_Open_Civ_01"
	,"CUP_C_Ural_Open_Civ_01"
	,"CUP_C_Ural_Civ_02"
	,"CUP_C_Ural_Civ_02"
	,"CUP_C_Ural_Open_Civ_02"
	,"CUP_C_Ural_Open_Civ_02"
	//CUP Civ Taki
	,"CUP_C_TT650_TK_CIV"
	,"CUP_C_TT650_TK_CIV"
	,"CUP_C_S1203_CIV"
	,"CUP_C_Volha_Gray_TKCIV"
	,"CUP_O_Hilux_unarmed_TK_CIV"
	,"CUP_O_Hilux_unarmed_TK_CIV"
	,"CUP_C_Ikarus_TKC"
	,"CUP_C_LR_Transport_CTK"
	,"CUP_C_LR_Transport_CTK"
	,"CUP_C_V3S_Open_TKC"
	,"CUP_C_V3S_Open_TKC"
	,"CUP_C_V3S_Covered_TKC"
	,"CUP_C_V3S_Covered_TKC"
	,"CUP_C_SUV_TK"
	,"CUP_C_UAZ_Unarmed_TK_CIV"
	,"CUP_C_UAZ_Unarmed_TK_CIV"
	,"CUP_C_UAZ_Open_TK_CIV"
	,"CUP_C_UAZ_Open_TK_CIV"
	,"CUP_C_Ural_Civ_01"
	//Vanilla
	,"C_Hatchback_01_F"
	,"C_Hatchback_01_F"
	,"C_Hatchback_01_sport_F"
	,"C_Offroad_01_F"
	,"C_Offroad_01_F"
	,"C_Offroad_01_repair_F"
	,"C_Quadbike_01_F"
	,"C_Quadbike_01_F"
	,"C_SUV_01_F"
	,"C_SUV_01_F"
	,"C_Van_01_box_F"
	,"C_Van_01_transport_F"
	,"C_Van_01_fuel_F"
	,"C_Truck_02_box_F"
	,"C_Truck_02_covered_F"
	,"C_Truck_02_fuel_F"
	,"C_Truck_02_transport_F"];
	if(A3E_Param_UseDLCApex==1) then {
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Offroad_02_unarmed_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Offroad_02_unarmed_F";
	};
	if(A3E_Param_UseDLCLaws==1) then {
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_medevac_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_vehicle_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_service_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_transport_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Van_02_transport_F";
	};
	if(A3E_Param_UseDLCContact==1) then {
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Tractor_01_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Offroad_01_covered_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Offroad_01_covered_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Offroad_01_covered_F";
	a3e_arr_Escape_MilitaryTraffic_CivilianVehicleClasses pushback "C_Offroad_01_comms_F";
	};

// Random arrays. Enemy vehicle classes for ambient traffic.
// Variable _enemyFrequency applies to server parameter, and can be one of the values 1 (Few), 2 (Some) or 3 (A lot).
switch (_enemyFrequency) do {
    case 1: {//Few (1-3)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		"CUP_O_UAZ_Unarmed_SLA"
		,"CUP_O_UAZ_Open_SLA"
		,"CUP_O_UAZ_Militia_SLA"
		,"CUP_O_UAZ_MG_SLA"
		,"CUP_O_UAZ_AGS30_SLA"
		,"CUP_O_UAZ_SPG9_SLA"
		,"CUP_O_UAZ_METIS_SLA"
		,"CUP_O_Volha_SLA"
		,"CUP_O_Ural_SLA"
		,"CUP_O_Ural_Open_SLA"
		,"CUP_O_Ural_Empty_SLA"
		,"CUP_O_Ural_ZU23_SLA"
		,"CUP_O_BM21_SLA"
		,"CUP_O_Ural_Refuel_SLA"
		,"CUP_O_Ural_Repair_SLA"
		,"CUP_O_Ural_Reammo_SLA"
		,"CUP_O_BRDM2_SLA"
		,"CUP_O_BRDM2_ATGM_SLA"
		,"CUP_O_BRDM2_HQ_SLA"
		,"CUP_O_BTR60_SLA"
		,"CUP_O_BTR80_SLA"
		,"CUP_O_BTR80A_SLA"
		,"CUP_O_MTLB_pk_SLA"
		,"CUP_O_BMP2_SLA"
		,"CUP_O_BMP_HQ_sla"
		,"CUP_O_BMP2_AMB_sla"
		,"CUP_O_ZSU23_SLA"
		,"CUP_O_ZSU23_Afghan_SLA"
		,"CUP_O_T55_SLA"
		,"CUP_O_T72_SLA"];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"CUP_I_LR_MG_RACS"
		,"CUP_I_LR_MG_RACS"
		,"CUP_I_LR_Transport_RACS"
		,"CUP_I_LR_Transport_RACS"
		,"CUP_I_LR_Ambulance_RACS"
		,"CUP_I_LR_AA_RACS"
		,"CUP_I_MTVR_RACS"
		,"CUP_I_MTVR_RACS"
		,"CUP_I_MTVR_Ammo_RACS"
		,"CUP_I_MTVR_Refuel_RACS"
		,"CUP_I_MTVR_Repair_RACS"
		,"CUP_I_M113A1_RACS"
		,"CUP_I_M113A1_RACS"
		,"CUP_I_M113A1_Med_RACS"
		,"CUP_I_M113A3_Reammo_RACS"
		,"CUP_I_M113A3_Repair_RACS"
		,"CUP_I_M163_Vulcan_RACS"
		,"CUP_I_LAV25_RACS"
		,"CUP_I_LAV25M240_RACS"
		,"CUP_I_LAV25_HQ_RACS"
		,"CUP_I_AAV_Unarmed_RACS"
		,"CUP_I_AAV_RACS"
		,"CUP_I_M270_DPICM_RACS"
		,"CUP_I_M270_HE_RACS"
		,"CUP_I_M60A3_RACS"
		,"CUP_I_T72_RACS"
		,"CUP_B_M1A2SEP_RACS"];
    };
    case 2: {//Some (4-6)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
		"CUP_O_UAZ_Unarmed_SLA"
		,"CUP_O_UAZ_Open_SLA"
		,"CUP_O_UAZ_Militia_SLA"
		,"CUP_O_UAZ_MG_SLA"
		,"CUP_O_UAZ_AGS30_SLA"
		,"CUP_O_UAZ_SPG9_SLA"
		,"CUP_O_UAZ_METIS_SLA"
		,"CUP_O_Volha_SLA"
		,"CUP_O_Ural_SLA"
		,"CUP_O_Ural_Open_SLA"
		,"CUP_O_Ural_Empty_SLA"
		,"CUP_O_Ural_ZU23_SLA"
		,"CUP_O_BM21_SLA"
		,"CUP_O_Ural_Refuel_SLA"
		,"CUP_O_Ural_Repair_SLA"
		,"CUP_O_Ural_Reammo_SLA"
		,"CUP_O_BRDM2_SLA"
		,"CUP_O_BRDM2_ATGM_SLA"
		,"CUP_O_BRDM2_HQ_SLA"
		,"CUP_O_BTR60_SLA"
		,"CUP_O_BTR80_SLA"
		,"CUP_O_BTR80A_SLA"
		,"CUP_O_MTLB_pk_SLA"
		,"CUP_O_BMP2_SLA"
		,"CUP_O_BMP_HQ_sla"
		,"CUP_O_BMP2_AMB_sla"
		,"CUP_O_ZSU23_SLA"
		,"CUP_O_ZSU23_Afghan_SLA"
		,"CUP_O_T55_SLA"
		,"CUP_O_T72_SLA"];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"CUP_I_LR_MG_RACS"
		,"CUP_I_LR_MG_RACS"
		,"CUP_I_LR_Transport_RACS"
		,"CUP_I_LR_Transport_RACS"
		,"CUP_I_LR_Ambulance_RACS"
		,"CUP_I_LR_AA_RACS"
		,"CUP_I_MTVR_RACS"
		,"CUP_I_MTVR_RACS"
		,"CUP_I_MTVR_Ammo_RACS"
		,"CUP_I_MTVR_Refuel_RACS"
		,"CUP_I_MTVR_Repair_RACS"
		,"CUP_I_M113A1_RACS"
		,"CUP_I_M113A1_RACS"
		,"CUP_I_M113A1_Med_RACS"
		,"CUP_I_M113A3_Reammo_RACS"
		,"CUP_I_M113A3_Repair_RACS"
		,"CUP_I_M163_Vulcan_RACS"
		,"CUP_I_LAV25_RACS"
		,"CUP_I_LAV25M240_RACS"
		,"CUP_I_LAV25_HQ_RACS"
		,"CUP_I_AAV_Unarmed_RACS"
		,"CUP_I_AAV_RACS"
		,"CUP_I_M270_DPICM_RACS"
		,"CUP_I_M270_HE_RACS"
		,"CUP_I_M60A3_RACS"
		,"CUP_I_M60A3_TTS_RACS"
		,"CUP_I_T72_RACS"
		,"CUP_B_M1A2SEP_RACS"
		,"CUP_B_M1A2SEP_TUSK_RACS"];
    };
    default {//A lot (7-8)
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = [
        "CUP_O_UAZ_Unarmed_SLA"
		,"CUP_O_UAZ_Open_SLA"
		,"CUP_O_UAZ_Militia_SLA"
		,"CUP_O_UAZ_MG_SLA"
		,"CUP_O_UAZ_AGS30_SLA"
		,"CUP_O_UAZ_SPG9_SLA"
		,"CUP_O_UAZ_METIS_SLA"
		,"CUP_O_Volha_SLA"
		,"CUP_O_Ural_SLA"
		,"CUP_O_Ural_Open_SLA"
		,"CUP_O_Ural_Empty_SLA"
		,"CUP_O_Ural_ZU23_SLA"
		,"CUP_O_BM21_SLA"
		,"CUP_O_Ural_Refuel_SLA"
		,"CUP_O_Ural_Repair_SLA"
		,"CUP_O_Ural_Reammo_SLA"
		,"CUP_O_BRDM2_SLA"
		,"CUP_O_BRDM2_ATGM_SLA"
		,"CUP_O_BRDM2_HQ_SLA"
		,"CUP_O_BTR60_SLA"
		,"CUP_O_BTR80_SLA"
		,"CUP_O_BTR80A_SLA"
		,"CUP_O_MTLB_pk_SLA"
		,"CUP_O_BMP2_SLA"
		,"CUP_O_BMP_HQ_sla"
		,"CUP_O_BMP2_AMB_sla"
		,"CUP_O_ZSU23_SLA"
		,"CUP_O_ZSU23_Afghan_SLA"
		,"CUP_O_T55_SLA"
		,"CUP_O_T72_SLA"];
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses_IND = [
		"CUP_I_LR_MG_RACS"
		,"CUP_I_LR_MG_RACS"
		,"CUP_I_LR_Transport_RACS"
		,"CUP_I_LR_Transport_RACS"
		,"CUP_I_LR_Ambulance_RACS"
		,"CUP_I_LR_AA_RACS"
		,"CUP_I_MTVR_RACS"
		,"CUP_I_MTVR_RACS"
		,"CUP_I_MTVR_Ammo_RACS"
		,"CUP_I_MTVR_Refuel_RACS"
		,"CUP_I_MTVR_Repair_RACS"
		,"CUP_I_M113A1_RACS"
		,"CUP_I_M113A1_RACS"
		,"CUP_I_M113A1_Med_RACS"
		,"CUP_I_M113A3_Reammo_RACS"
		,"CUP_I_M113A3_Repair_RACS"
		,"CUP_I_M163_Vulcan_RACS"
		,"CUP_I_LAV25_RACS"
		,"CUP_I_LAV25M240_RACS"
		,"CUP_I_LAV25_HQ_RACS"
		,"CUP_I_AAV_Unarmed_RACS"
		,"CUP_I_AAV_RACS"
		,"CUP_I_M270_DPICM_RACS"
		,"CUP_I_M270_HE_RACS"
		,"CUP_I_M60A3_RACS"
		,"CUP_I_M60A3_TTS_RACS"
		,"CUP_I_T72_RACS"
		,"CUP_B_M1A2SEP_RACS"
		,"CUP_B_M1A2SEP_TUSK_RACS"];
    };
};

// Random array. General infantry types. E.g. village patrols, ambient infantry, ammo depot guards, communication center guards, etc.
a3e_arr_Escape_InfantryTypes = [
	"CUP_O_SLA_Soldier"
	,"CUP_O_SLA_Soldier_GL"
	,"CUP_O_SLA_Soldier_Backpack"
	,"CUP_O_SLA_Soldier_AAT"
	,"CUP_O_SLA_Soldier_AMG"
	,"CUP_O_SLA_Soldier_LAT"
	,"CUP_O_SLA_Soldier_AT"
	,"CUP_O_SLA_Soldier_HAT"
	,"CUP_O_SLA_Soldier_AA"
	,"CUP_O_SLA_Engineer"	
	,"CUP_O_SLA_Engineer"
	,"CUP_O_SLA_Soldier_MG"
	,"CUP_O_SLA_Soldier_AR"
	,"CUP_O_SLA_Medic"
	,"CUP_O_SLA_Medic"
	,"CUP_O_SLA_Soldier_SL"
	,"CUP_O_SLA_Officer"
	,"CUP_O_SLA_Spotter"
	,"CUP_O_SLA_Sniper"
	,"CUP_O_SLA_Sniper_KSVK"
	,"CUP_O_SLA_Sniper_SVD_Night"
	,"CUP_O_SLA_Soldier_AKS_Night"
	,"CUP_O_SLA_Soldier_AKS_74_GOSHAWK"];
a3e_arr_Escape_InfantryTypes_Ind =  [
	"CUP_I_RACS_Soldier"
	,"CUP_I_RACS_Officer"
	,"CUP_I_RACS_Medic"
	,"CUP_I_RACS_SL"
	,"CUP_I_RACS_GL"
	,"CUP_I_RACS_MMG"
	,"CUP_I_RACS_Soldier_AA"
	,"CUP_I_RACS_Soldier_LAT"
	,"CUP_I_RACS_Soldier_MAT"
	,"CUP_I_RACS_Soldier_HAT"
	,"CUP_I_RACS_Soldier_Light"
	,"CUP_I_RACS_Soldier_AAT"
	,"CUP_I_RACS_Soldier_AMG"
	,"CUP_I_RACS_AR"
	,"CUP_I_RACS_M"
	,"CUP_I_RACS_Sniper"
	,"CUP_I_RACS_Engineer"
	,"CUP_I_RACS_Engineer"];
a3e_arr_recon_InfantryTypes = [
	"CUP_O_SLA_SpecOps"
	,"CUP_O_SLA_SpecOps"
	,"CUP_O_SLA_SpecOps"
	,"CUP_O_SLA_SpecOps"
	,"CUP_O_SLA_SpecOps_TL"
	,"CUP_O_SLA_SpecOps_MG"
	,"CUP_O_sla_SpecOps_LAT"
	,"CUP_O_sla_SpecOps_Demo"];
a3e_arr_recon_I_InfantryTypes = [
	"CUP_I_RACS_RoyalCommando"
	,"CUP_I_RACS_RoyalCommando"
	,"CUP_I_RACS_RoyalCommando"
	,"CUP_I_RACS_RoyalCommando"
	,"CUP_I_RACS_RoyalMarksman"
	,"CUP_I_RACS_RoyalMarksman"
	,"CUP_I_RACS_RoyalGuard"
	,"CUP_I_RACS_RoyalGuard"];

// Random array. A roadblock has a manned vehicle. This array contains possible manned vehicles (can be of any kind, like cars, armored and statics).
a3e_arr_Escape_RoadBlock_MannedVehicleTypes = [
	"CUP_O_UAZ_MG_SLA"
	,"CUP_O_UAZ_AGS30_SLA"
	,"CUP_O_UAZ_SPG9_SLA"
	,"CUP_O_UAZ_METIS_SLA"
	,"CUP_O_BRDM2_SLA"
	,"CUP_O_BRDM2_SLA"
	,"CUP_O_BRDM2_SLA"
	,"CUP_O_BRDM2_ATGM_SLA"
	,"CUP_O_BTR60_SLA"
	,"CUP_O_MTLB_pk_SLA"
	,"CUP_O_ZSU23_SLA"
	,"CUP_O_ZSU23_Afghan_SLA"];
a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind = [
	"CUP_I_LR_MG_RACS"
	,"CUP_I_LR_MG_RACS"
	,"CUP_I_LR_MG_RACS"
	,"CUP_I_LR_MG_RACS"
	,"CUP_I_M113A1_RACS"
	,"CUP_I_M113A1_RACS"
	,"CUP_I_LAV25_HQ_RACS"
	,"CUP_I_LAV25_RACS"
	,"CUP_I_M163_Vulcan_RACS"
	,"CUP_I_AAV_RACS"
	,"CUP_I_LR_AA_RACS"];

// Random array. Vehicle classes (preferrably trucks) transporting enemy reinforcements.
a3e_arr_Escape_ReinforcementTruck_vehicleClasses = [
	"CUP_O_UAZ_Open_SLA"	//6
	,"CUP_O_UAZ_Unarmed_SLA"	//6
	,"CUP_O_Ural_SLA"	//12
	,"CUP_O_Ural_SLA"	//12
	,"CUP_O_Ural_Open_SLA"];	//12
a3e_arr_Escape_ReinforcementTruck_vehicleClasses_Ind = [
	"CUP_I_LR_Transport_RACS"	//5
	,"CUP_I_MTVR_RACS"	//
	,"CUP_I_M113A1_RACS"	//
	,"CUP_I_LAV25_RACS"
	,"CUP_I_AAV_Unarmed_RACS"];




// Random array. Motorized search groups are sometimes sent to look for you. This array contains possible class definitions for the vehicles.
a3e_arr_Escape_MotorizedSearchGroup_vehicleClasses = [
	"CUP_O_Volha_SLA"
	,"CUP_O_BRDM2_HQ_SLA"
	,"CUP_O_BRDM2_SLA"
	,"CUP_O_MTLB_pk_SLA"
	,"CUP_O_BTR60_SLA"
	,"CUP_O_BTR80_SLA"
	,"CUP_O_BMP2_SLA"];



// A communication center is guarded by vehicles depending on variable _enemyFrequency. 1 = a random light armor. 2 = a random heavy armor. 3 = a random 
// light *and* a random heavy armor.

// Random array. Light armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_lightArmorClasses = [
	"CUP_O_BTR60_SLA"
	,"CUP_O_BTR80_SLA"
	,"CUP_O_BTR80A_SLA"
	,"CUP_O_BMP2_SLA"
	,"CUP_O_ZSU23_Afghan_SLA"];
// Random array. Heavy armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_heavyArmorClasses = [
	"CUP_O_T55_SLA"
	,"CUP_O_T72_SLA"];

// A communication center contains two static weapons (in two corners of the communication center).
// Random array. Possible static weapon types for communication centers.
a3e_arr_ComCenStaticWeapons = [
	"CUP_O_DSHKM_SLA"];
// A communication center have two parked and empty vehicles of the following possible types.
a3e_arr_ComCenParkedVehicles = [
	"CUP_O_Volha_SLA"
	,"CUP_O_UAZ_Open_SLA"
	,"CUP_O_UAZ_MG_SLA"
	,"CUP_O_UAZ_AGS30_SLA"
	,"CUP_O_UAZ_SPG9_SLA"
	,"CUP_O_Ural_SLA"
	,"CUP_O_Ural_Open_SLA"
	,"CUP_O_Ural_Refuel_SLA"
	,"CUP_O_Ural_Repair_SLA"
	,"CUP_O_Ural_Reammo_SLA"
	,"CUP_O_Ural_ZU23_SLA"
	,"CUP_O_BMP2_AMB_sla"];

// Random array. Enemies sometimes use civilian vehicles in their unconventional search for players. The following car types may be used.
a3e_arr_Escape_EnemyCivilianCarTypes = [
	//CUP Civ
	"CUP_C_Datsun"
	,"CUP_C_Datsun_4seat"
	,"CUP_C_Golf4_random_Civ"
	,"CUP_C_Golf4_Sport_random_Civ"
	,"CUP_C_Pickup_unarmed_CIV"
	,"CUP_C_Pickup_unarmed_CIV"
	,"CUP_C_Pickup_unarmed_CIV"
	,"CUP_C_Pickup_unarmed_CIV"
	,"CUP_C_Octavia_CIV"
	,"CUP_C_Octavia_CIV"
	,"CUP_C_Octavia_CIV"
	,"CUP_C_Octavia_CIV"
	//CUP Civ Cherna
	,"CUP_C_Skoda_CR_CIV"
	,"CUP_C_Skoda_CR_CIV"
	,"CUP_C_Skoda_CR_CIV"
	,"CUP_C_Skoda_CR_CIV"
	,"CUP_C_S1203_CIV_CR"
	,"CUP_C_S1203_CIV_CR"
	,"CUP_B_S1203_Ambulance_CR"
	,"CUP_C_Datsun_Covered"
	,"CUP_C_Datsun_Plain"
	,"CUP_C_Datsun_Tubeframe"
	,"CUP_C_Volha_CR_CIV"
	,"CUP_C_Volha_CR_CIV"
	,"CUP_C_Volha_CR_CIV"
	,"CUP_C_Volha_CR_CIV"
	,"CUP_C_Golf4_CR_Civ"
	,"CUP_C_Golf4_CR_Civ"
	,"CUP_C_Golf4_Sport_CR_Civ"
	,"CUP_O_Hilux_unarmed_CR_CIV"
	,"CUP_O_Hilux_unarmed_CR_CIV"
	,"CUP_O_Hilux_unarmed_CR_CIV"
	,"CUP_O_Hilux_unarmed_CR_CIV"
	,"CUP_C_SUV_CIV"
	,"CUP_C_SUV_CIV"
	,"CUP_C_SUV_CIV"
	,"CUP_C_SUV_CIV"
	,"CUP_C_Ural_Civ_03"
	,"CUP_C_Ural_Civ_03"
	,"CUP_C_Ural_Open_Civ_03"
	,"CUP_C_Ural_Open_Civ_03"
	,"CUP_C_Lada_CIV"
	,"CUP_C_Lada_CIV"
	,"CUP_C_Lada_CIV"
	,"CUP_C_Lada_CIV"
	//CUP Civ Sahrahni
	,"CUP_C_Bus_City_CIV"
	,"CUP_C_Bus_City_CIV"
	,"CUP_C_Ural_Open_Civ_01"
	,"CUP_C_Ural_Open_Civ_01"
	,"CUP_C_Ural_Civ_02"
	,"CUP_C_Ural_Civ_02"
	,"CUP_C_Ural_Open_Civ_02"
	,"CUP_C_Ural_Open_Civ_02"
	//CUP Civ Taki
	,"CUP_C_S1203_CIV"
	,"CUP_C_Volha_Gray_TKCIV"
	,"CUP_O_Hilux_unarmed_TK_CIV"
	,"CUP_O_Hilux_unarmed_TK_CIV"
	,"CUP_C_Ikarus_TKC"
	,"CUP_C_LR_Transport_CTK"
	,"CUP_C_LR_Transport_CTK"
	,"CUP_C_V3S_Open_TKC"
	,"CUP_C_V3S_Open_TKC"
	,"CUP_C_V3S_Covered_TKC"
	,"CUP_C_V3S_Covered_TKC"
	,"CUP_C_SUV_TK"
	,"CUP_C_UAZ_Unarmed_TK_CIV"
	,"CUP_C_UAZ_Unarmed_TK_CIV"
	,"CUP_C_Ural_Civ_01"
	//Vanilla
	,"C_Hatchback_01_F"
	,"C_Hatchback_01_F"
	,"C_Hatchback_01_sport_F"
	,"C_Offroad_01_F"
	,"C_Offroad_01_F"
	,"C_Offroad_01_repair_F"
	,"C_SUV_01_F"
	,"C_SUV_01_F"
	,"C_Van_01_transport_F"
	,"C_Van_01_fuel_F"
	,"C_Truck_02_covered_F"
	,"C_Truck_02_fuel_F"
	,"C_Truck_02_transport_F"];
	if(A3E_Param_UseDLCApex==1) then {
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Offroad_02_unarmed_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Offroad_02_unarmed_F";
	};
	if(A3E_Param_UseDLCLaws==1) then {
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Van_02_medevac_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Van_02_service_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Van_02_transport_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Van_02_transport_F";
	};
	if(A3E_Param_UseDLCContact==1) then {
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Offroad_01_covered_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Offroad_01_covered_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Offroad_01_covered_F";
	a3e_arr_Escape_EnemyCivilianCarTypes pushback "C_Offroad_01_comms_F";
	};

// Vehicles, weapons and ammo at ammo depots

// Random array. An ammo depot contains one static weapon of the followin types:
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses = [
	"CUP_O_DSHKM_SLA"
	,"CUP_O_DSHKM_MiniTripod_SLA"
	,"CUP_I_KORD_AAF"
	,"CUP_I_KORD_high_AAF"
	,"CUP_O_AGS_SLA"
	,"CUP_I_Metis_AAF"
	,"CUP_O_SPG9_SLA"
	,"CUP_O_Igla_AA_pod_SLA"];
// An ammo depot have one parked and empty vehicle of the following possible types.
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses = [
	"CUP_O_UAZ_Militia_SLA"
	,"CUP_O_UAZ_MG_SLA"
	,"CUP_O_UAZ_AGS30_SLA"
	,"CUP_O_UAZ_SPG9_SLA"
	,"CUP_O_UAZ_METIS_SLA"
	,"CUP_O_Ural_SLA"
	,"CUP_O_Ural_Open_SLA"
	,"CUP_O_Ural_Refuel_SLA"
	,"CUP_O_Ural_Repair_SLA"
	,"CUP_O_Ural_Reammo_SLA"
	,"CUP_O_BRDM2_HQ_SLA"
	,"CUP_O_MTLB_pk_SLA"];

//Random array. Types of helicopters to spawn
a3e_arr_O_attack_heli = [
	"CUP_O_Ka50_DL_SLA"
	,"CUP_O_Ka50_DL_SLA"
	,"CUP_O_Mi24_D_Dynamic_SLA"];
a3e_arr_O_transport_heli = [
	"CUP_O_Mi8_SLA_1"
	,"CUP_O_Mi8_SLA_2"
	,"CUP_O_UH1H_SLA"
	,"CUP_O_MI6T_SLA"];
a3e_arr_O_pilots = [
	"CUP_O_SLA_Pilot"];
a3e_arr_I_transport_heli = [
    "CUP_I_CH47F_RACS"
	,"CUP_I_SA330_Puma_HC1_RACS"
	,"CUP_I_SA330_Puma_HC2_RACS"
	,"CUP_I_UH60L_RACS"
	,"CUP_I_UH60L_FFV_RACS"
	,"CUP_I_UH60L_Unarmed_Racs"
	,"CUP_I_UH60L_Unarmed_FFV_Racs"
	,"CUP_I_UH1H_RACS"
	,"CUP_I_MH6J_RACS"];
a3e_arr_I_pilots = [
	"CUP_I_RACS_Pilot"];


// The following arrays define weapons and ammo contained at the ammo depots
// Index 0: Weapon classname.
// Index 1: Weapon's probability of presence (in percent, 0-100).
// Index 2: If weapon exists, crate contains at minimum this number of weapons of current class.
// Index 3: If weapon exists, crate contains at maximum this number of weapons of current class.
// Index 4: Array of magazine classnames. Magazines of these types are present if weapon exists.
// Index 5: Number of magazines per weapon that exists.

// Weapons and ammo in the basic weapons box
a3e_arr_AmmoDepotBasicWeapons = [];
// CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_hgun_Makarov", 50, 2, 5, ["CUP_8Rnd_9x18_Makarov_M"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_arifle_AKS74", 10, 1, 2, ["CUP_30Rnd_545x39_AK_M"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_arifle_AK74", 100, 3, 5, ["CUP_30Rnd_545x39_AK_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_arifle_AK74_GL", 75, 2, 4, ["CUP_30Rnd_545x39_AK_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M", "CUP_1Rnd_HE_GP25_M"], 4];
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_arifle_RPK74_45", 30, 1, 2, ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"], 8];
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_lmg_PKM", 20, 1, 2, ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], 4];
// non-CSAT weapons
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_hgun_Glock17_tan", 50, 2, 4, ["CUP_17Rnd_9x19_glock17"], 4];
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_arifle_M16A2_GL", 50, 1, 3, ["CUP_30Rnd_556x45_Stanag","CUP_1Rnd_HEDP_M203"], 4];
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_arifle_M16A2", 50, 1, 2, ["CUP_30Rnd_556x45_Stanag"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_arifle_Colt727", 50, 1, 2, ["CUP_30Rnd_556x45_Stanag"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_lmg_M249_E2", 10, 1, 2, ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249"], 6];
a3e_arr_AmmoDepotBasicWeapons pushback ["CUP_smg_MP5A5", 10, 1, 2, ["CUP_30Rnd_9x19_MP5"], 8];


// Weapons and ammo in the special weapons box
a3e_arr_AmmoDepotSpecialWeapons = [];
// CSAT weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_arifle_AKS74U", 50, 1, 3, ["CUP_30Rnd_545x39_AK_M"], 6];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_srifle_SVD", 50, 2, 4, ["CUP_10Rnd_762x54_SVD_M"], 9];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_srifle_ksvk", 50, 2, 4, ["CUP_5Rnd_127x108_KSVK_M"], 9];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_srifle_VSSVintorez_pso", 10, 2, 4, ["CUP_20Rnd_9x39_SP5_VSS_M"], 9];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_arifle_AS_VAL_flash", 10, 2, 4, ["CUP_20Rnd_9x39_SP5_VSS_M"], 9];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_arifle_OTS14_GROZA_Grip", 10, 2, 4, ["CUP_20Rnd_9x39_SP5_GROZA_M"], 9];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_lmg_Pecheneg", 50, 1, 3, ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], 4];
// non-CAST weapons
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_srifle_M24_des_LeupoldMk4LRT", 50, 2, 4, ["CUP_5Rnd_762x51_M24"], 12];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_srifle_Mk12SPR", 50, 2, 4, ["CUP_20Rnd_556x45_Stanag"], 12];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_lmg_M240", 10, 1, 2, ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"], 6];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_smg_MP5SD6", 50, 1, 2, ["CUP_30Rnd_Subsonic_9x19_MP5"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_arifle_G36C", 50, 1, 2, ["CUP_30Rnd_556x45_G36"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_arifle_G36A_AG36_RIS_camo", 50, 1, 2, ["CUP_30Rnd_556x45_G36_camo","CUP_1Rnd_HE_M203"], 8];
a3e_arr_AmmoDepotSpecialWeapons pushback ["CUP_arifle_G36A", 50, 1, 2, ["CUP_30Rnd_556x45_G36"], 8];


// Weapons and ammo in the launchers box
a3e_arr_AmmoDepotLaunchers = [];
// CSAT weapons
a3e_arr_AmmoDepotLaunchers pushback ["CUP_launch_RPG7V", 50, 1, 2, ["CUP_PG7V_M", "CUP_PG7VL_M", "CUP_PG7VR_M", "CUP_OG7_M"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["CUP_launch_RPG18", 50, 1, 3, ["CUP_RPG18_M"], 1];
a3e_arr_AmmoDepotLaunchers pushback ["CUP_launch_RPG7V", 50, 1, 3, ["CUP_PG7V_M"], 3];
a3e_arr_AmmoDepotLaunchers pushback ["CUP_launch_Metis", 50, 1, 3, ["CUP_AT13_M"], 2];
a3e_arr_AmmoDepotLaunchers pushback ["CUP_launch_Igla", 50, 1, 2, ["CUP_Igla_M"], 3];
// non-CSAT weapons
a3e_arr_AmmoDepotLaunchers pushback ["CUP_launch_MAAWS", 10, 1, 2, ["CUP_MAAWS_HEAT_M"], 2];
a3e_arr_AmmoDepotLaunchers pushback ["CUP_launch_MAAWS", 10, 1, 2, ["CUP_MAAWS_HEDP_M"], 2];
a3e_arr_AmmoDepotLaunchers pushback ["CUP_launch_M72A6", 20, 1, 4, [], 0];
a3e_arr_AmmoDepotLaunchers pushback ["CUP_launch_M47", 10, 1, 1, ["CUP_Dragon_EP1_M"], 1];
//a3e_arr_AmmoDepotLaunchers pushback ["launch_B_Titan_F", 100, 1, 1, ["Titan_AA"], 3];
//a3e_arr_AmmoDepotLaunchers pushback ["launch_B_Titan_short_F", 100, 1, 1, ["Titan_AP", "Titan_AT"], 3];


// Weapons and ammo in the ordnance box
a3e_arr_AmmoDepotOrdnance = [];
// General weapons
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["ClaymoreDirectionalMine_Remote_Mag", "SLAMDirectionalMine_Wire_Mag"], 5];
a3e_arr_AmmoDepotOrdnance pushback [objNull, 30, 1, 1, ["Laserbatteries"], 5];

// Weapons and ammo in the vehicle box (the big one)
// Some high volumes (mostly for immersion)
a3e_arr_AmmoDepotVehicle = [];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["CUP_HandGrenade_RGO", "CUP_HandGrenade_RGD5"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["SmokeShell", "SmokeShellYellow", "SmokeShellRed", "SmokeShellGreen", "SmokeShellPurple", "SmokeShellBlue", "SmokeShellOrange"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["Chemlight_blue", "Chemlight_green", "Chemlight_red", "Chemlight_yellow"], 50];
a3e_arr_AmmoDepotVehicle pushback [objNull, 10, 1, 1, ["CUP_1Rnd_HE_M203","CUP_1Rnd_HEDP_M203","CUP_1Rnd_Smoke_M203","CUP_1Rnd_SmokeRed_M203","CUP_1Rnd_SmokeGreen_M203","CUP_1Rnd_SmokeYellow_M203"], 5];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["CUP_1Rnd_HE_GP25_M"], 25];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["FlareWhite_F", "FlareGreen_F", "FlareRed_F", "FlareYellow_F"], 25];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["CUP_IlumFlareWhite_GP25_M","CUP_IlumFlareRed_GP25_M","CUP_IlumFlareGreen_GP25_M","CUP_FlareWhite_GP25_M","CUP_FlareGreen_GP25_M","CUP_FlareRed_GP25_M","CUP_FlareYellow_GP25_M"], 25];
a3e_arr_AmmoDepotVehicle pushback [objNull, 50, 1, 1, ["CUP_1Rnd_SMOKE_GP25_M","CUP_1Rnd_SMOKERED_GP25_M","CUP_1Rnd_SMOKEGREEN_GP25_M","CUP_1Rnd_SMOKEYELLOW_GP25_M"], 25];
a3e_arr_AmmoDepotVehicleItems = [];
a3e_arr_AmmoDepotVehicleItems pushback ["ToolKit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["Medikit", 20, 1, 1, [], 0];
a3e_arr_AmmoDepotVehicleItems pushback ["FirstAidKit", 100, 10, 50, [], 0];
a3e_arr_AmmoDepotVehicleBackpacks = ["CUP_B_AlicePack_Khaki"];

// Items

// Index 0: Item classname.
// Index 1: Item's probability of presence (in percent, 0-100)..
// Index 2: Minimum amount.
// Index 3: Maximum amount.
a3e_arr_AmmoDepotItems = [];
a3e_arr_AmmoDepotItems pushback ["Laserdesignator", 10, 1, 2];
if(A3E_Param_NoNightvision==0) then {
	a3e_arr_AmmoDepotItems pushback ["NVGoggles", 10, 1, 3];
};
a3e_arr_AmmoDepotItems pushback ["Rangefinder", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["Binocular", 50, 2, 3, [], 0];
a3e_arr_AmmoDepotItems pushback ["ItemCompass", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["ItemGPS", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["ItemMap", 50, 1, 3];
a3e_arr_AmmoDepotItems pushback ["ItemRadio", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["ItemWatch", 50, 1, 10];
a3e_arr_AmmoDepotItems pushback ["CUP_acc_Zenit_2DS", 50, 1, 5];
a3e_arr_AmmoDepotItems pushback ["CUP_acc_Flashlight_desert", 10, 1, 5];
a3e_arr_AmmoDepotItems pushback ["CUP_acc_ANPEQ_2_desert", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_muzzle_Bizon", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_muzzle_PBS4", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_muzzle_PB6P9", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_Kobra", 20, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_OKP_7", 20, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_OKP_7_w", 20, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_1p63", 20, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_PSO_1", 20, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_PSO_3", 20, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_PechenegScope", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_HoloDesert", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_SVD_camo_g_half", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_muzzle_snds_KZRZP_SVD_woodland", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_muzzle_snds_G36_desert", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_LeupoldMk4_CQ_T", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_LeupoldMk4_10x40_LRT_Desert", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_LeupoldM3LR", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_ZDDot", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_ACOG", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_TrijiconRx01_desert", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_AN_PAS_13c2", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_SB_3_12x50_PMII", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_CompM4", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_Eotech533", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["CUP_optic_CompM2_Desert", 10, 1, 3];
if(A3E_Param_NoNightvision==0) then {
	a3e_arr_AmmoDepotItems pushback ["CUP_optic_AN_PVS_4", 10, 1, 3];
	a3e_arr_AmmoDepotItems pushback ["CUP_optic_NSPU", 10, 1, 3];
	a3e_arr_AmmoDepotItems pushback ["CUP_optic_GOSHAWK", 10, 1, 3];
};
a3e_arr_AmmoDepotItems pushback ["O_UavTerminal", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["optic_DMS", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["optic_Yorris", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["optic_LRPS", 10, 1, 3];
a3e_arr_AmmoDepotItems pushback ["optic_AMS", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["optic_KHS_blk", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bipod_01_F_blk", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bipod_02_F_blk", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bipod_03_F_blk", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bipod_01_F_mtp", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bipod_02_F_hex", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["bipod_03_F_oli", 10, 1, 2];
a3e_arr_AmmoDepotItems pushback ["CUP_bipod_VLTOR_Modpod", 20, 1, 2];
a3e_arr_AmmoDepotItems pushback ["CUP_bipod_Harris_1A2_L", 10, 1, 2];


// Weapons that may show up in civilian cars

// Index 0: Weapon classname.
// Index 1: Magazine classname.
// Index 2: Number of magazines.
a3e_arr_CivilianCarWeapons = [];
a3e_arr_CivilianCarWeapons pushback ["CUP_hgun_TaurusTracker455_gold", "CUP_6Rnd_45ACP_M", 5];
a3e_arr_CivilianCarWeapons pushback ["CUP_hgun_FlareGun", "CUP_StarClusterWhite_265_M", 5];
a3e_arr_CivilianCarWeapons pushback ["CUP_arifle_AKS_Gold", "CUP_30Rnd_545x39_AK_M", 5];
a3e_arr_CivilianCarWeapons pushback ["CUP_sgun_AA12", "CUP_20Rnd_B_AA12_Pellets", 9];
a3e_arr_CivilianCarWeapons pushback ["CUP_sgun_AA12", "CUP_20Rnd_B_AA12_74Slug", 9];
a3e_arr_CivilianCarWeapons pushback ["CUP_sgun_AA12", "CUP_20Rnd_B_AA12_HE", 9];
a3e_arr_CivilianCarWeapons pushback ["CUP_arifle_AKS74UN_kobra_snds", "CUP_30Rnd_545x39_AK_M", 9];
a3e_arr_CivilianCarWeapons pushback ["CUP_smg_Mac10", "CUP_30Rnd_45ACP_MAC10_M", 9];
a3e_arr_CivilianCarWeapons pushback ["CUP_glaunch_6G30", "CUP_1Rnd_HE_GP25_M", 8];
a3e_arr_CivilianCarWeapons pushback ["CUP_arifle_Mk16_CQC_FG", "CUP_30Rnd_556x45_Stanag", 8];
a3e_arr_CivilianCarWeapons pushback ["CUP_arifle_Galil_556_black", "CUP_35Rnd_556x45_Galil_Mag", 8];
a3e_arr_CivilianCarWeapons pushback ["CUP_arifle_FNFAL5061_wooden", "CUP_20Rnd_762x51_FNFAL_M", 8];
a3e_arr_CivilianCarWeapons pushback ["CUP_arifle_CZ805_A1_ZDDot_Laser", "CUP_30Rnd_556x45_Stanag", 7];
a3e_arr_CivilianCarWeapons pushback ["CUP_lmg_M240", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", 5];
a3e_arr_CivilianCarWeapons pushback ["CUP_srifle_LeeEnfield", "CUP_10x_303_M", 8];
a3e_arr_CivilianCarWeapons pushback ["CUP_srifle_CZ550", "CUP_5x_22_LR_17_HMR_M", 10];
a3e_arr_CivilianCarWeapons pushback ["CUP_srifle_CZ750_SOS_bipod", "CUP_10Rnd_762x51_CZ750", 10];
a3e_arr_CivilianCarWeapons pushback ["CUP_sgun_slamfire", "CUP_1Rnd_12Gauge_Pellets_No00_Buck", 20];
a3e_arr_CivilianCarWeapons pushback ["CUP_sgun_slamfire", "CUP_1Rnd_12Gauge_HE", 20];
a3e_arr_CivilianCarWeapons pushback ["CUP_launch_RPG18","CUP_RPG18_M", 1];
a3e_arr_CivilianCarWeapons pushback ["MineDetector", objNull, 0]
//a3e_arr_CivilianCarWeapons pushback ["Medikit", objNull, 0];
//a3e_arr_CivilianCarWeapons pushback ["Toolkit", objNull, 0];
a3e_arr_CivilianCarWeapons pushback ["Binocular", objNull, 0];
a3e_arr_CivilianCarWeapons pushback [objNull, "SatchelCharge_Remote_Mag", 2];
a3e_arr_CivilianCarWeapons pushback [objNull, "HandGrenade", 5];
a3e_arr_CivilianCarWeapons pushback [objNull, "SmokeShell", 5];


// Here is a list of scopes:
a3e_arr_Scopes = [
	"CUP_optic_Kobra"
	,"CUP_optic_OKP_7"
	,"CUP_optic_OKP_7_w"
	,"CUP_optic_PSO_1"
	,"CUP_optic_PSO_3"
	,"CUP_optic_1p63"
	,"CUP_optic_PechenegScope"
	,"CUP_optic_SB_3_12x50_PMII"
	,"CUP_optic_LeupoldMk4"
	,"CUP_optic_HoloBlack"
	,"CUP_optic_HoloWdl"
	,"CUP_optic_HoloDesert"
	,"CUP_optic_Eotech533"
	,"CUP_optic_Eotech533Grey"
	,"CUP_optic_CompM4"
	,"CUP_optic_SUSAT"
	,"CUP_optic_ACOG"
	,"CUP_optic_RCO"
	,"CUP_optic_RCO_desert"
	,"CUP_optic_ElcanM145"
	,"CUP_optic_ELCAN_SpecterDR"
	,"CUP_optic_LeupoldMk4_CQ_T"
	,"CUP_optic_ZDDot"];
a3e_arr_Scopes_SMG = [
	"CUP_optic_Kobra"
	,"CUP_optic_OKP_7"
	,"CUP_optic_OKP_7_w"
	,"CUP_optic_Eotech533"
	,"CUP_optic_ZDDot"];
a3e_arr_Scopes_Sniper = [
	"CUP_optic_PSO_1"
	,"CUP_optic_PSO_3"
	,"CUP_optic_LeupoldMk4"
	,"CUP_optic_SB_3_12x50_PMII"
	,"CUP_optic_LeupoldMk4_10x40_LRT_Desert"];
a3e_arr_NightScopes = [
	"CUP_optic_NSPU"
	,"CUP_optic_AN_PVS_10"
	,"CUP_optic_AN_PVS_4"];
a3e_arr_TWSScopes = [
	"CUP_optic_GOSHAWK"
	,"CUP_optic_AN_PAS_13c2"
	,"CUP_optic_AN_PAS_13c1"];

// Here is a list of bipods, might get randomly added to enemy patrols:
a3e_arr_Bipods = [
	"CUP_bipod_VLTOR_Modpod"
	,"CUP_bipod_Harris_1A2_L"
	,"bipod_01_F_snd"
	,"bipod_01_F_blk"
	,"bipod_01_F_mtp"
	,"bipod_02_F_blk"
	,"bipod_02_F_tan"
	,"bipod_02_F_hex"
	,"bipod_03_F_blk"
	,"bipod_03_F_oli"];

//////////////////////////////////////////////////////////////////
// SelectExtractionZone.sqf
// Which type of extractions are supported/preferred by this unitclasses version?
// Only if supported by terrain, so if corresponding markers are placed
// Basic fallback is always Heli extraction
// Available types: a3e_arr_extractiontypes = ["air","land","sea"];
//////////////////////////////////////////////////////////////////
a3e_arr_extractiontypes = [
	"air"
	,"land"
	,"sea"];

//////////////////////////////////////////////////////////////////
// RunExtraction.sqf
// Helicopters that come to pick you up
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_chopper = [
	"CUP_B_MH60L_DAP_2x_USN"
	,"CUP_B_MH60L_DAP_4x_USN"
	,"CUP_MH60S_Unarmed_FFV_USN"
	,"CUP_B_UH60S_USN"
	,"cup_b_ch53e_usmc"
	,"CUP_B_UH1Y_UNA_USMC"];
a3e_arr_extraction_chopper_escort = [
	"CUP_B_AH1Z_Dynamic_USMC"];

//////////////////////////////////////////////////////////////////
// RunExtractionBoat.sqf
// Boats that come to pick you up
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_boat = [
	"CUP_B_RHIB_USMC"
	,"CUP_B_RHIB2Turret_USMC"
	,"CUP_B_LCU1600_USMC"];
a3e_arr_extraction_boat_escort = [
	"CUP_B_RHIB_USMC"
	,"CUP_B_RHIB2Turret_USMC"];

//////////////////////////////////////////////////////////////////
// RunExtractionLand.sqf
// Boats that come to pick you up
//////////////////////////////////////////////////////////////////
a3e_arr_extraction_car = [
	"CUP_B_MTVR_USMC"	//12
	,"CUP_B_RG31E_M2_OD_USMC"	//8
	,"CUP_B_AAV_Unarmed_USMC"	//14
	,"CUP_B_AAV_USMC"];	//14
a3e_arr_extraction_car_escort = [
	"CUP_B_LAV25_USMC"
	,"CUP_B_LAV25_green"
	,"CUP_B_M60A3_USMC"
	,"CUP_B_M1A1FEP_Woodland_USMC"
	,"CUP_B_M1A1EP_TUSK_Woodland_USMC"];

//////////////////////////////////////////////////////////////////
// EscapeSurprises.sqf and CreateSearchDrone.sqf
// Classnames of drones
//////////////////////////////////////////////////////////////////
a3e_arr_searchdrone = [
	"CUP_I_CESSNA_T41_ARMED_RACS"
	,"CUP_I_CESSNA_T41_UNARMED_RACS"];

//////////////////////////////////////////////////////////////////
// CreateSearchChopper.sqf
// first chopper that's called when you escape
// Two arrays for "Easy" and "Hard" parameter, both used on stadard setting
//////////////////////////////////////////////////////////////////
a3e_arr_searchChopperEasy = [
	"CUP_I_SA330_Puma_HC1_RACS"
	,"CUP_I_UH60L_Unarmed_RACS"];
a3e_arr_searchChopperHard = [
	"CUP_I_UH60L_FFV_RACS"
	,"CUP_I_AH6J_RACS"
	,"CUP_I_UH1H_gunship_RACS"];

if(A3E_Param_SearchChopper==0) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperEasy + a3e_arr_searchChopperHard;
};
if(A3E_Param_SearchChopper==1) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperEasy;
};
if(A3E_Param_SearchChopper==2) then {
	a3e_arr_searchChopper = a3e_arr_searchChopperHard;
};

//////////////////////////////////////////////////////////////////
// fn_AmbientInfantry
// only INS is used
//is this even used?
//////////////////////////////////////////////////////////////////
a3e_arr_AmbientInfantry_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_AmbientInfantry_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_InitGuardedLocations
// Units spawned to guard ammo camps and com centers
// Only INS used
//////////////////////////////////////////////////////////////////
a3e_arr_InitGuardedLocations_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_InitGuardedLocations_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_roadblocks
// units spawned on roadblocks
// Only INS used
// vehicle arrays not used, uses a3e_arr_Escape_RoadBlock_MannedVehicleTypes and a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind instead
//////////////////////////////////////////////////////////////////
a3e_arr_roadblocks_Inf_INS = a3e_arr_Escape_InfantryTypes;
a3e_arr_roadblocks_Inf_GUE = a3e_arr_Escape_InfantryTypes_Ind;

a3e_arr_roadblocks_Veh_INS = a3e_arr_Escape_RoadBlock_MannedVehicleTypes;
a3e_arr_roadblocks_Veh_GUE = a3e_arr_Escape_RoadBlock_MannedVehicleTypes_Ind;

//////////////////////////////////////////////////////////////////
// fn_PopulateAquaticPatrol
// boats that are spawned
//////////////////////////////////////////////////////////////////
a3e_arr_AquaticPatrols = [
	"CUP_O_LCVP_SLA"
	,"CUP_I_LCVP_RACS"
	,"CUP_I_RHIB_RACS"
	,"CUP_I_RHIB2Turret_RACS"];

//////////////////////////////////////////////////////////////////
// fn_AmmoDepot
// What kind of weapon boxes are spawned when the parameter "additional weapons" is activated
// use to add boxes from mods to the ammo depots
//////////////////////////////////////////////////////////////////
a3e_additional_weapon_box_1 = "CUP_BOX_SLA_Wps_F";
a3e_additional_weapon_box_2 = "CUP_BOX_SLA_WpsSpecial_F";

//////////////////////////////////////////////////////////////////
// fn_MortarSite
// mortar spawned in the mortar camps
//////////////////////////////////////////////////////////////////
a3e_arr_MortarSite = [
	"CUP_O_2b14_82mm_SLA"]; //O_Mortar_01_F

//////////////////////////////////////////////////////////////////
// fn_CallCAS.sqf
// Classnames of planes for the CAS module
//////////////////////////////////////////////////////////////////
a3e_arr_CASplane = [
	"CUP_O_Su25_Dyn_SLA"
	,"CUP_O_SU34_SLA"
	,"CUP_I_JAS39_RACS"
	,"CUP_I_CESSNA_T41_ARMED_RACS"];

//////////////////////////////////////////////////////////////////
// fn_CrashSite
// Random crashsite of west heli with west weapons
//////////////////////////////////////////////////////////////////
// The following arrays define weapons and ammo contained at crash sites
// Index 0: Weapon classname.
// Index 1: Weapon's probability of presence (in percent, 0-100).
// Index 2: If weapon exists, crate contains at minimum this number of weapons of current class.
// Index 3: If weapon exists, crate contains at maximum this number of weapons of current class.
// Index 4: Array of magazine classnames. Magazines of these types are present if weapon exists.
// Index 5: Number of magazines per weapon that exists.
a3e_arr_CrashSiteWrecks = [
	"Land_UWreck_MV22_F"
	,"Land_Wreck_Plane_Transport_01_F"
	,"Land_Wreck_Heli_Attack_01_F"
	,"CUP_UH1Y_StaticWeapon_Wreck"];
a3e_arr_CrashSiteCrew = [
	"CUP_B_US_Pilot"
	,"CUP_B_US_Pilot_Light"];
a3e_arr_CrashSiteWrecksCar = [
	"Land_Wreck_HMMWV_F"
	,"Land_Wreck_Hunter_F"
	,"Land_Wreck_Slammer_F"
];
a3e_arr_CrashSiteCrewCar = [
	"CUP_B_USMC_Crew"
	,"CUP_B_USMC_SpecOps_SD"];
// Weapons and ammo in crash site box
a3e_arr_CrashSiteWeapons = [];
a3e_arr_CrashSiteWeapons pushback ["CUP_sgun_M1014", 50, 2, 5, ["CUP_8Rnd_B_Beneli_74Slug","CUP_8Rnd_B_Beneli_74Pellets"], 6];
a3e_arr_CrashSiteWeapons pushback ["CUP_launch_M136", 30, 1, 2, ["CUP_M136_M"], 1];
a3e_arr_CrashSiteWeapons pushback ["CUP_arifle_M4A1_standard_black", 100, 3, 5, ["CUP_30Rnd_556x45_G36"], 6];
a3e_arr_CrashSiteWeapons pushback ["CUP_arifle_ACRC_wdl_68", 30, 3, 5, ["CUP_30Rnd_680x43_Stanag_Tracer_Red"], 10];
a3e_arr_CrashSiteWeapons pushback ["CUP_arifle_M4_MOE_BW", 10, 3, 5, ["CUP_10Rnd_50BW_Mag_M4_M"], 10];
a3e_arr_CrashSiteWeapons pushback ["CUP_glaunch_M32", 10, 1, 2, ["CUP_6Rnd_HE_M203"], 6];
a3e_arr_CrashSiteWeapons pushback ["CUP_hgun_FlareGun", 10, 1, 2, ["CUP_StarClusterGreen_265_M"], 6];
a3e_arr_CrashSiteWeapons pushback ["CUP_arifle_G36C_holo_snds", 75, 2, 4, ["CUP_30Rnd_556x45_G36"], 4];
a3e_arr_CrashSiteWeapons pushback ["CUP_lmg_M60E4", 20, 1, 2, ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M"], 5];
a3e_arr_CrashSiteWeapons pushback ["CUP_B_USMC_Sniper_M40A3", 10, 1, 2, ["CUP_5Rnd_762x51_M24"], 10];
a3e_arr_CrashSiteWeapons pushback ["CUP_srifle_M110_black", 10, 1, 2, ["CUP_20Rnd_762x51_B_M110"], 8];
a3e_arr_CrashSiteWeapons pushback ["CUP_lmg_Mk48", 10, 1, 2, ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M"], 6];
// Attachments and other items in crash site box
a3e_arr_CrashSiteItems = [];
a3e_arr_CrashSiteItems pushback ["CUP_muzzle_snds_M16", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["CUP_optic_HoloBlack", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["CUP_optic_RCO", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["CUP_optic_ZDDot", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["CUP_optic_ACOG", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["CUP_optic_LeupoldMk4", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["CUP_acc_ANPEQ_15_Black_Top", 10, 1, 3];
a3e_arr_CrashSiteItems pushback ["CUP_bipod_Harris_1A2_L", 10, 1, 3];