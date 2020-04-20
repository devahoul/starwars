
-- add the new tat level to the missionlist
local newEntry = { mapluafile = "Naboo1", showstr = "Z Naboo 1",  side_a = 1, dnldable = 1, }

-- append it to the sp missionlist table
local n = getn(sp_missionselect_listbox_contents)   
sp_missionselect_listbox_contents[n+1] = newEntry

-- append it to the mp missionlist table
n = getn(mp_missionselect_listbox_contents) 
mp_missionselect_listbox_contents[n+1] = newEntry


-- associate this mission name with the current downloadable content directory
-- you should list all missions in mission.lvl here.
-- first arg: mapluafile from above
-- second arg: mission script name
-- third arg: level memory modifier.  the arg to LuaScript.cpp: DEFAULT_MODEL_MEMORY_PLUS(x)
AddDownloadableContent("Naboo1","Naboo1c",4)
AddDownloadableContent("Naboo1","Naboo1a",4)

-- all done
newEntry = nil
n = nil

