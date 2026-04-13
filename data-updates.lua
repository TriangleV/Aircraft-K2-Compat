log("ttt_ssss")
if mods["Krastorio2"] then
	table.insert(data.raw["equipment-grid"]["gunship-equipment-grid"].equipment_categories, "kr-vehicle")
	table.insert(data.raw["equipment-grid"]["gunship-equipment-grid"].equipment_categories, "kr-vehicle-motor")
	table.insert(data.raw["equipment-grid"]["gunship-equipment-grid"].equipment_categories, "kr-vehicle-roboport")
	table.insert(data.raw["equipment-grid"]["jet-equipment-grid"].equipment_categories, "kr-vehicle")
	table.insert(data.raw["equipment-grid"]["jet-equipment-grid"].equipment_categories, "kr-vehicle-motor")
	table.insert(data.raw["equipment-grid"]["jet-equipment-grid"].equipment_categories, "kr-vehicle-roboport")
	table.insert(data.raw["equipment-grid"]["flying-fortress-equipment-grid"].equipment_categories, "kr-vehicle")
	table.insert(data.raw["equipment-grid"]["flying-fortress-equipment-grid"].equipment_categories, "kr-vehicle-motor")
	table.insert(data.raw["equipment-grid"]["flying-fortress-equipment-grid"].equipment_categories, "kr-vehicle-roboport")
	log("ttt_k2 inside")
	if mods["aai-industry"] then
		log("ttt_aai industry inside")
		log(serpent.block(data.raw["car"]["gunship"].energy_source))
		log(serpent.block(data.raw["car"]["gunship"].energy_source.fuel_categories))
		data.raw["car"]["gunship"].energy_source.fuel_categories = { "kr-vehicle-fuel" , "processed-chemical"}
		data.raw["car"]["cargo-plane"].energy_source.fuel_categories = { "kr-vehicle-fuel" , "processed-chemical"}
		data.raw["car"]["jet"].energy_source.fuel_categories =  { "kr-vehicle-fuel", "processed-chemical" }
		data.raw["car"]["flying-fortress"].energy_source.fuel_categories = {"kr-vehicle-fuel", "processed-chemical" }
	else
		data.raw["car"]["gunship"].energy_source.fuel_categories = { "kr-vehicle-fuel" }
		data.raw["car"]["cargo-plane"].energy_source.fuel_categories = { "kr-vehicle-fuel" }
		data.raw["car"]["jet"].energy_source.fuel_categories =  { "kr-vehicle-fuel" }
		data.raw["car"]["flying-fortress"].energy_source.fuel_categories = {"kr-vehicle-fuel" }
	end
end
