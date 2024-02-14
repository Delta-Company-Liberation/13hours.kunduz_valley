// Include the file where the lists are defined
[] execVM "arsenal_presets\custom.sqf"; 

// Wait until the Arsenal boxes are created and assigned to the variables "bcars", "bcars_1", and "bcars_2"
waitUntil { 
    !(isNull (missionNamespace getVariable ["bcars", objNull])) &&
    !(isNull (missionNamespace getVariable ["bcars_1", objNull])) &&
    !(isNull (missionNamespace getVariable ["bcars_2", objNull])) 
};

// Get the Arsenal box objects
_arsenalBox = missionNamespace getVariable "bcars";
_arsenalBox1 = missionNamespace getVariable "bcars_1";
_arsenalBox2 = missionNamespace getVariable "bcars_2";

// Initialize the Arsenal boxes
[_arsenalBox, false] call ace_arsenal_fnc_initBox;
[_arsenalBox1, false] call ace_arsenal_fnc_initBox;
[_arsenalBox2, false] call ace_arsenal_fnc_initBox;

// Wait until the variables are defined
waitUntil { 
    !(isNil "BC_WEAPONS") && 
    !(isNil "BC_MAGAZINES") && 
    !(isNil "BC_ITEMS") && 
    !(isNil "BC_BACKPACKS") 
};

// Combine the items from the lists into a single array
_itemsToAdd = BC_WEAPONS + BC_MAGAZINES + BC_ITEMS + BC_BACKPACKS;

// Add items to the Arsenal boxes
[_arsenalBox, _itemsToAdd] call ace_arsenal_fnc_addVirtualItems;
[_arsenalBox1, _itemsToAdd] call ace_arsenal_fnc_addVirtualItems;
[_arsenalBox2, _itemsToAdd] call ace_arsenal_fnc_addVirtualItems;

diag_log "Debug Script: Starting Initialization for all Arsenal boxes";
hint "Starting Initialization for all Arsenal boxes";