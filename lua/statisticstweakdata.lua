_G.SecondaryPrimaryWeapon = _G.SecondaryPrimaryWeapon or {}

local _f_init = StatisticsTweakData.statistics_table

function StatisticsTweakData:statistics_table()
	local level_list, job_list, mask_list, weapon_list, melee_list, grenade_list, enemy_list, armor_list, character_list, deployable_list = _f_init(self)
	local _list = SecondaryPrimaryWeapon.List or {}
	for weapon_id, v in pairs(_list) do
		weapon_id = tostring(weapon_id)
		if v and v[1] == true then
			table.insert(weapon_list, weapon_id .. "_duplicate")
		end
	end
	return level_list, job_list, mask_list, weapon_list, melee_list, grenade_list, enemy_list, armor_list, character_list, deployable_list
end