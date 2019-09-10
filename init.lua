-- OzzyTMBM (Ozzy's Triple Monitor Brightness Manager)
local OzzyTMBM={}
OzzyTMBM.__index = OzzyTMBM

-- Metadata
OzzyTMBM.name = "OzzyTMBM"
OzzyTMBM.version = "1.0"
OzzyTMBM.author = "Özgün Çağrı AYDIN"
OzzyTMBM.homepage = "https://ozguncagri.com"
OzzyTMBM.license = "MIT - https://opensource.org/licenses/MIT"

-- 3 modification binder wrapper
OzzyTMBM.mod3Binder = function(key, operation)
	hs.hotkey.bind({"cmd", "alt", "ctrl"}, key, operation)
end

-- 4 modification binder wrapper
OzzyTMBM.mod4Binder = function(key, operation)
	hs.hotkey.bind({"shift", "cmd", "alt", "ctrl"}, key, operation)
end

OzzyTMBM.manageAllMonitors = function()
	-- Decrease brightness of all external displays by 10
	OzzyTMBM.mod3Binder("H", function()
		hs.execute("/usr/local/bin/ddcctl -d 1 -b 10-")
		hs.execute("/usr/local/bin/ddcctl -d 2 -b 10-")
	end)

	-- Increase brightness of all external displays by 10
	OzzyTMBM.mod3Binder("Y", function()
		hs.execute("/usr/local/bin/ddcctl -d 1 -b 10+")
		hs.execute("/usr/local/bin/ddcctl -d 2 -b 10+")
	end)

	-- Set brightness of all external displays to minimum (0)
	OzzyTMBM.mod4Binder("H", function()
		hs.execute("/usr/local/bin/ddcctl -d 1 -b 0")
		hs.execute("/usr/local/bin/ddcctl -d 2 -b 0")
	end)

	-- Set brightness of all external displays to maximum (100)
	OzzyTMBM.mod4Binder("Y", function()
		hs.execute("/usr/local/bin/ddcctl -d 1 -b 100")
		hs.execute("/usr/local/bin/ddcctl -d 2 -b 100")
	end)
end

OzzyTMBM.manageFirstMonitor = function()
	-- Decrease brightness of first external display by 10
	OzzyTMBM.mod3Binder("J", function()
		hs.execute("/usr/local/bin/ddcctl -d 1 -b 10-")
	end)

	-- Increase brightness of first external display by 10
	OzzyTMBM.mod3Binder("U", function()
		hs.execute("/usr/local/bin/ddcctl -d 1 -b 10+")
	end)

	-- Set brightness of first external display to minimum (0)
	OzzyTMBM.mod4Binder("J", function()
		hs.execute("/usr/local/bin/ddcctl -d 1 -b 0")
	end)

	-- Set brightness of first external display to maximum (100)
	OzzyTMBM.mod4Binder("U", function()
		hs.execute("/usr/local/bin/ddcctl -d 1 -b 100")
	end)
end

OzzyTMBM.manageSecondMonitor = function()
	-- Decrease brightness of second external display by 10
	OzzyTMBM.mod3Binder("G", function()
		hs.execute("/usr/local/bin/ddcctl -d 2 -b 10-")
	end)

	-- Increase brightness of second external display by 10
	OzzyTMBM.mod3Binder("T", function()
		hs.execute("/usr/local/bin/ddcctl -d 2 -b 10+")
	end)

	-- Set brightness of second external display to minimum (0)
	OzzyTMBM.mod4Binder("G", function()
		hs.execute("/usr/local/bin/ddcctl -d 2 -b 0")
	end)

	-- Set brightness of second external display to maximum (100)
	OzzyTMBM.mod4Binder("T", function()
		hs.execute("/usr/local/bin/ddcctl -d 2 -b 100")
	end)
end

function OzzyTMBM:init()
	-- Activate all hotkeys
	OzzyTMBM.manageAllMonitors()
	OzzyTMBM.manageFirstMonitor()
	OzzyTMBM.manageSecondMonitor()
end

return OzzyTMBM