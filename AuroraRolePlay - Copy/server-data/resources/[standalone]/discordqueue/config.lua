config = {}

config.require_discord = true -- the player must have discord running
config.require_steam = false -- the player must have steam running

config.discord = {
	server_id = '1113585978301497396',
	bot_token = 'OTE5MzA0MTM0MTcwMTE2MTA2.Gsu5M2.qCj-fUGYEY0NUBOoyHTqNOIGcfbbshB6BsdCVY',
	log_webhook = 'https://canary.discord.com/api/webhooks/1113869500245364777/ORema3GoBvIaPBVyJuYVqNM8F3YgztRuYpzwZaEabH3Cjn99_5XHaYw5p7DILIoPapgD', -- false to disable
}

config.whitelist_enabled = false
config.whitelist_id = '697129813655420929' -- role id the player must have to join

config.reserved_spaces = {
	'1113831997572403210' --staff
}

config.join_delay = 15000 -- stops players joining as soon as the server starts to let other resources finish starting

config.crash_protection = true -- hold a players spot for 5 minutes after they disconnect to allow them to reconnect without losing their spot (uses GTAV license)

config.flood_gates = false -- allow players to skip the queue when the server isn't full

config.slow_join = true -- limit to 1 player joining at a time

config.roles = {
	["ADMIN"] = {
		id = '1113831997572403210', -- role id the player must have
		name = '⚠️ Admin Queue', -- name displayed to the user when connecting to the server
		kickPlayer = true, -- Kicks the last player that joined the server if server is full
	},
	["POLICE"] = {
		id = '1113832007898779708', -- role id the player must have
		name = '🚓 Police Queue', -- name displayed to the user when connecting to the server
		kickPlayer = false, -- Kicks the last player that joined the server if server is full
	},
	["EMS"] = {
		id = '1113832008796356708', -- role id the player must have
		name = '🚑 EMS Queue', -- name displayed to the user when connecting to the server
		kickPlayer = false, -- Kicks the last player that joined the server if server is full
	},
	["DOJ"] = {
		id = '1113832006988595292', -- role id the player must have
		name = '👨‍⚖️ DOJ Queue', -- name displayed to the user when connecting to the server
		kickPlayer = false, -- Kicks the last player that joined the server if server is full
	},
	["DOJ2"] = {
		id = '1113832005696765996', -- role id the player must have
		name = '🚑 DOJ Queue', -- name displayed to the user when connecting to the server
		kickPlayer = false, -- Kicks the last player that joined the server if server is full
	},
	["Booster"] = {
		id = '1113587118523031623', -- role id the player must have
		name = 'Booster Queue', -- name displayed to the user when connecting to the server
		kickPlayer = false, -- Kicks the last player that joined the server if server is full
	},
	["tier1"] = {
		id = '1113832001611513916', -- role id the player must have
		name = 'Donator Queue', -- name displayed to the user when connecting to the server
		kickPlayer = false, -- Kicks the last player that joined the server if server is full
	},
	["tier2"] = {
		id = '1113832000558727209', -- role id the player must have
		name = 'Donator Queue', -- name displayed to the user when connecting to the server
		kickPlayer = false, -- Kicks the last player that joined the server if server is full
	},
	["tier3"] = {
		id = '1113832001611513916', -- role id the player must have
		name = 'Donator Queue', -- name displayed to the user when connecting to the server
		kickPlayer = false, -- Kicks the last player that joined the server if server is full
	},
}

config.lang = {}
config.lang['header'] = "Which queue would you like to join?"
config.lang['body'] = "The below queue options are determined by your Discord roles. Contact support if this information is incorrect."
config.lang['no_whitelist'] = "⚠️ You are not whitelisted on this server."
config.lang['no_steam'] = "⚠️ You must be running Steam to join this server."
config.lang['no_discord'] = "⚠️ You must have Discord open to join this server."
config.lang['no_guild'] = "⚠️ User not found in discord!"
config.lang['found_discord'] = "✅ Found Discord user (%s)\n⌛ Fetching your roles..."
config.lang['no_roles'] = "⚠️ Failed to get your roles, contact the server owner."
config.lang['connecting'] = "✅ Connecting to server..."
config.lang['join'] = "Join"
config.lang['joining'] = "✅ Joining queue..."
config.lang['cancel'] = "Cancel"
config.lang['cancelling'] = "Cancelling..."
config.lang['waiting'] = "⌛ Waiting for the server to start..."
config.lang['join_force'] = "You were removed from the server so an admin can join."
config.lang['looking'] = "⌛ Looking for you in discord..."
config.lang['position'] = "You are position #%s out of %s in the queue (%s)"
config.lang['discord_messages'] = {
	connected = "**%s** is connecting to the server.",
	nosteam = "**%s** is trying to connect without Steam.",
	nodiscord = "**%s** is trying to connect without Discord.",
	nomember = "**%s** is trying to connect without being a member of the Discord server.",
	noroles = "**%s** is trying to connect but an error stopped us getting their roles. Check console.",
	nowhitelist = "**%s** is trying to connect but they are not whitelisted.",
	removed = "**%s** was removed from the server / queue",
	joining = "**%s** is joining the server.",
	reserved = "**%s** is joining the server (Reserved Space).",
	queue = "**%s** is joining the queue (%s).",
	skipping = "**%s** is skipping the queue (Server not full).",
}