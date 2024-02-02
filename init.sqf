// init.sqf
if (isServer) {
    // Retrieve the selected time of day
    private _timeOfDay = paramsArray select 0;
    // Calculate hours and minutes for the setDate command
    private _hours = [0, 6, 12, 18] select _timeOfDay;
    // Set the date and time; adjust the date as needed
    // Format for setDate is [year, month, day, hour, minute]
    setDate [2021, 1, 1, _hours, 0]; // Example date: adjust as needed

    // Retrieve and apply the weather setting
    private _weatherSetting = paramsArray select 1;
    _weatherSetting = _weatherSetting / 100; // Convert to a scale of 0 to 1
    setOvercast _weatherSetting;
    setRain (_weatherSetting / 2); // Example: adjust rain as a function of overcast

    // Optional: Adjust fog based on weather setting
    // This is just an example; adjust the formula as needed for your scenario
    private _fogSetting = _weatherSetting / 4; // Less fog than rain/overcast
    setFog _fogSetting;
}
