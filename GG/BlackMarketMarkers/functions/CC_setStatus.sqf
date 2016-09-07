/*
*  Ported From Wasteland
*  Author: ContractCoders.net
*  This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
*  To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
*/

_setStatus =
{
    params["_index", "_statusDesc", "_friendly","_markerName"];

    if(_status select _index == _statusDesc) exitWith {};
 
    _markerNameZone = format ["BlackMarketZone_%1", _markerName];
    _markerNameDescription = format ["BlackMarketDesc_%1", _markerName];
    
    switch (_statusDesc) do {
        case "EMPTY": {
            _markerNameZone setmarkerColorLocal CC_col_empty;
            _markerNameDescription setmarkerColorLocal CC_col_empty;
            _markerNameDescription setMarkerTextLocal CC_name_empty;
        };
        case "ENEMY": {
            _markerNameZone setmarkerColorLocal CC_col_enemy;
            _markerNameDescription setmarkerColorLocal CC_col_enemy;
            _markerNameDescription setMarkerTextLocal CC_name_enemy;
        };
        case "FRIENDLY": {
            _markerNameZone setmarkerColorLocal CC_col_friendly;
            _markerNameDescription setmarkerColorLocal CC_col_friendly;
            _markerNameDescription setMarkerTextLocal CC_name_friendly;
        };
        case "MIXED": {
            _markerNameZone setmarkerColorLocal CC_col_mixed;
            _markerNameDescription setmarkerColorLocal CC_col_mixed;
            _markerNameDescription setMarkerTextLocal CC_name_mixed;
        };
    };
 
    if(_friendly && (_statusDesc in ["ENEMY", "MIXED"])) then {
        if (CC_blackMarketIntruderWarning) then {
            ["InfoTitleAndText", ["WARNING", CC_blackMarketIntruderWarningMessage]] call ExileClient_gui_toaster_addTemplateToast;
        };
    };
 
    _status set [_index, _statusDesc];
};