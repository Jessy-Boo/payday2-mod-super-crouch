if RequiredScript ~= "lib/units/beings/player/playerdamage" then return end

local orig_damage_bullet = PlayerDamage.damage_bullet

function PlayerDamage:damage_bullet(attack_data, ...)
	if self._unit and self._unit:movement() and self._unit:movement():crouching() then
		return
	end
	return orig_damage_bullet(self, attack_data, ...)
end
