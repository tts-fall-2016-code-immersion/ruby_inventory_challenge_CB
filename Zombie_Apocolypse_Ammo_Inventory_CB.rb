ammo_inv = {}
ammo_inv = [
  {"shotgun" => 25},
  {"rifle" => 45},
  {"pistol" => 30},
  {"grenade" => 2},
  {"knife" => 1}]

action_arr = ["check the inventory", "add some ammo", "add a gun", "register a lost weapon"]

def show_ammo
  show_ammo = ammo_inv.each do |gun|
    gun.each_pair do |gun, ammount|
      puts "We have #{ammount} rounds of #{gun} right now"
    end
  end
end

def update_ammo(ammo_inv)
  puts "Which gun did you find ammo for?"
    update_gun = gets.chomp
      puts "And how much did you find for it?"
        update_ammount = gets.chomp.to_i
          ammo_inv.each do |gun|
            gun.each_pair do |gun, ammount|
              puts "Great! Now we have #{ammount} rounds for the #{gun}"
            end
          end
        end

def adding_gun(ammo_inv)
  puts "Did you just find a gun? Thats awesome, what kind is it?"
    added_gun = gets.chomp
    puts "Nice, how much ammo do you have for it?"
      added_gun_ammo = gets.chomp.to_i
      puts "Great now we can add your #{added_gun} with #{added_gun_ammo} rounds to our inventory"
      end

def lost_gun(ammo_inv)
  puts "Did you say you are out of ammo? For which gun?"
    delete_gun = gets.chomp
      key = delete_gun
      puts "No need to carry it around then, just drop the #{delete_gun}"
        ammo_inv.delete(key)
        end


def zombie_apocolypse_action_loop
    puts "What can I help with partner? You can check the inventory, add some ammo, add a gun, or register a lost weapon. What will it be?"
    response = gets.chomp
    if response == "check the inventory"
      show_ammo
    elsif response == "add some ammo"
      update_ammo(ammo_inv)
    elsif response == "add a gun"
      adding_gun(ammo_inv)
    elsif response == "register a lost weapon"
      lost_gun(ammo_inv)
    else
      puts "You mind repeating that? I dont think I heard you right."
    end
  end

zombie_apocolypse_action_loop
