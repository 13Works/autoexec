local scripts = {
    ["fps_manager.lua"] = true;
    ["prodigy-x.lua"] = true;
    ["eazvy-hub.lua"] = false;
}

local repo = "https://raw.githubusercontent.com/13Works/autoexec/main/"

for script_name, enabled in scripts do
    if enabled then
        loadstring(game:HttpGet(repo .. script_name))()
    end
end