require 'excon'
require 'json'

module OverwatchStatsServices
  class MasterOverwatch

  	API_URL = 'https://owapi.net'

    def self.sync

      tag_field_name = User.find_by_id(1).custom_fields["user_field_#{(UserField.find_by name: 'BattleTag').id}"]

      users = User
              .custom_fields_for_ids(User.first.id..User.last.id, tag_field_name)
              .select{ |u, h| h[tag_field_name] =~ /^[a-z]+#[0-9]+$/i }
              .map{ |u| OpenStruct.new({ id: u[0], tag: u[1][tag_field_name].tr('#', '-') }) }

      conn = Excon.new(API_URL, persistent: true)

      users.each do |user|

        api_response = conn.get(path: "/api/v3/u/#{user.tag}/blob")

        data = JSON.parse(api_response.body, object_class: OpenStruct)

        model = User.find_by_id user.id

    	model.custom_fields['overwatch_level'] = data.us.stats.competitive.overall_stats.level + data.us.stats.competitive.overall_stats.prestige * 100
    	model.custom_fields['overwatch_comprank'] = data.us.stats.competitive.overall_stats.comprank
    	model.custom_fields['overwatch_most_played_hero'] = data.us.heroes.playtime.competitive.to_h.max_by{|k, v| v}.first.to_s
		
		# Defense achievements.
		model.custom_fields['overwatch_achievement_armor_up'] = data.us.achievements.defense.armor_up
		model.custom_fields['overwatch_achievement_raid_wipe'] = data.us.achievements.defense.raid_wipe
		model.custom_fields['overwatch_achievement_did_that_sting'] = data.us.achievements.defense.did_that_sting
		model.custom_fields['overwatch_achievement_triple_threat'] = data.us.achievements.defense.triple_threat
		model.custom_fields['overwatch_achievement_ice_blocked'] = data.us.achievements.defense.ice_blocked
		model.custom_fields['overwatch_achievement_smooth_as_silk'] = data.us.achievements.defense.smooth_as_silk
		model.custom_fields['overwatch_achievement_charge'] = data.us.achievements.defense.charge
		model.custom_fields['overwatch_achievement_simple_geometry'] = data.us.achievements.defense.simple_geometry
		model.custom_fields['overwatch_achievement_roadkill'] = data.us.achievements.defense.roadkill
		model.custom_fields['overwatch_achievement_mine_like_a_steel_trap'] = data.us.achievements.defense.mine_like_a_steel_trap
		model.custom_fields['overwatch_achievement_cold_snap'] = data.us.achievements.defense.cold_snap
		model.custom_fields['overwatch_achievement_the_dragon_is_sated'] = data.us.achievements.defense.the_dragon_is_sated
		
		# Offense achievements.
		model.custom_fields['overwatch_achievement_die_die_die_die'] = data.us.achievements.offense.die_die_die_die
		model.custom_fields['overwatch_achievement_special_delivery'] = data.us.achievements.offense.special_delivery
		model.custom_fields['overwatch_achievement_waste_not_want_not'] = data.us.achievements.offense.waste_not_want_not
		model.custom_fields['overwatch_achievement_total_recall'] = data.us.achievements.offense.total_recall
		model.custom_fields['overwatch_achievement_their_own_worst_enemy'] = data.us.achievements.offense.their_own_worst_enemy
		model.custom_fields['overwatch_achievement_slice_and_dice'] = data.us.achievements.offense.slice_and_dice
		model.custom_fields['overwatch_achievement_whoa_there'] = data.us.achievements.offense.whoa_there
		model.custom_fields['overwatch_achievement_death_from_above'] = data.us.achievements.offense.death_from_above
		model.custom_fields['overwatch_achievement_rocket_man'] = data.us.achievements.offense.rocket_man
		model.custom_fields['overwatch_achievement_clearing_the_area'] = data.us.achievements.offense.clearing_the_area
		model.custom_fields['overwatch_achievement_target_rich_environment'] = data.us.achievements.offense.target_rich_environment
		model.custom_fields['overwatch_achievement_its_high_noon'] = data.us.achievements.offense.its_high_noon
		model.custom_fields['overwatch_achievement_hack_the_planet'] = data.us.achievements.offense.planet_the_planet
		model.custom_fields['overwatch_achievement_power_outage'] = data.us.achievements.offense.power_outage
		
		# Tank achievements.
		model.custom_fields['overwatch_achievement_game_over'] = data.us.achievements.tank.game_over
		model.custom_fields['overwatch_achievement_mine_sweeper'] = data.us.achievements.tank.mine_sweeper
		model.custom_fields['overwatch_achievement_hog_wild'] = data.us.achievements.tank.hog_wild
		model.custom_fields['overwatch_achievement_the_power_of_attraction'] = data.us.achievements.tank.the_power_of_attraction
		model.custom_fields['overwatch_achievement_anger_management'] = data.us.achievements.tank.anger_management
		model.custom_fields['overwatch_achievement_giving_you_the_hook'] = data.us.achievements.tank.giving_you_the_hook
		model.custom_fields['overwatch_achievement_i_am_your_shield'] = data.us.achievements.tank.i_am_your_shield
		model.custom_fields['overwatch_achievement_storm_earth_and_fire'] = data.us.achievements.tank.storm_earth_and_fire
		model.custom_fields['overwatch_achievement_power_overwhelming'] = data.us.achievements.tank.power_overwhelming
		model.custom_fields['overwatch_achievement_shot_down'] = data.us.achievements.tank.shot_down
		
		# General achievements.
		model.custom_fields['overwatch_achievement_decorated'] = data.us.achievements.general.decorated
		model.custom_fields['overwatch_achievement_the_friend_zone'] = data.us.achievements.general.the_friend_zone
		model.custom_fields['overwatch_achievement_centenary'] = data.us.achievements.general.centenary
		model.custom_fields['overwatch_achievement_level_10'] = data.us.achievements.general.level_10
		model.custom_fields['overwatch_achievement_blackjack'] = data.us.achievements.general.blackjack
		model.custom_fields['overwatch_achievement_the_path_is_closed'] = data.us.achievements.general.the_path_is_closed
		model.custom_fields['overwatch_achievement_survival_expert'] = data.us.achievements.general.survival_expert
		model.custom_fields['overwatch_achievement_level_50'] = data.us.achievements.general.level_50
		model.custom_fields['overwatch_achievement_level_25'] = data.us.achievements.general.level_25
		model.custom_fields['overwatch_achievement_decked_out'] = data.us.achievements.general.decked_out
		model.custom_fields['overwatch_achievement_undying'] = data.us.achievements.general.undying
		
		# Map achievements.
		model.custom_fields['overwatch_achievement_lockdown'] = data.us.achievements.maps.lockdown
		model.custom_fields['overwatch_achievement_shutout'] = data.us.achievements.maps.shutout
		model.custom_fields['overwatch_achievement_escort_duty'] = data.us.achievements.maps.escort_duty
		model.custom_fields['overwatch_achievement_double_cap'] = data.us.achievements.maps.double_cap
		model.custom_fields['overwatch_achievement_world_traveler'] = data.us.achievements.maps.world_traveler
		model.custom_fields['overwatch_achievement_cant_touch_this'] = data.us.achievements.maps.cant_touch_this
		
		# Support achievements.
		model.custom_fields['overwatch_achievement_group_health_plan'] = data.us.achievements.support.group_health_plan
		model.custom_fields['overwatch_achievement_the_floor_is_lava'] = data.us.achievements.support.the_floor_is_lava
		model.custom_fields['overwatch_achievement_huge_rez'] = data.us.achievements.support.huge_rez
		model.custom_fields['overwatch_achievement_the_iris_embraces_you'] = data.us.achievements.support.the_iris_embraces_you
		model.custom_fields['overwatch_achievement_supersonic'] = data.us.achievements.support.supersonic
		model.custom_fields['overwatch_achievement_naptime'] = data.us.achievements.support.naptime
		model.custom_fields['overwatch_achievement_huge_success'] = data.us.achievements.support.huge_success
		model.custom_fields['overwatch_achievement_the_car_wash'] = data.us.achievements.support.the_car_wash
		model.custom_fields['overwatch_achievement_enabler'] = data.us.achievements.support.enabler
		model.custom_fields['overwatch_achievement_rapid_discord'] = data.us.achievements.support.rapid_discord
		
		# Special achievements.
		model.custom_fields['overwatch_achievement_held_the_door'] = data.us.achievements.special.held_the_door
		model.custom_fields['overwatch_achievement_not_a_scratch'] = data.us.achievements.special.not_a_scratch
		model.custom_fields['overwatch_achievement_four_they_were'] = data.us.achievements.special.four_they_were
		model.custom_fields['overwatch_achievement_survived_the_night'] = data.us.achievements.special.survived_the_night
		
    	model.save!

      end


    end
  end
end


