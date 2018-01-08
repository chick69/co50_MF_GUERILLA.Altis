// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: staticVehicleSpawning.sqf
//	@file Author: [404] Costlyy, AgentRev
//	@file Created: 20/12/2012 21:00
//	@file Description: Random static helis
//	@file Args:

if (!isServer) exitWith {};

private ["_count", "_position", "_markerName", "_marker", "_newPos", "_i", "_doSpawnWreck"];
_count = 0;

{
	_marker = _x;

	if (["IDAP_", _marker] call fn_startsWith) then
	{
		_position = markerPos _marker;
		[0, _position] call staticVehicleCreation;

	};
} forEach allMapMarkers;

diag_log format["WASTELAND SERVER - %1 Static IDAP Spawned",_count];

