// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	level.models[0] = ("body_mp_sas_urban_assault");
	level.models[1] = ("body_mp_sas_urban_support");
	level.models[2] = ("body_mp_sas_urban_specops");
	level.models[3] = ("body_mp_sas_urban_recon");
	level.models[4] = ("body_mp_sas_urban_sniper");

	self setModel(level.models[randomIntRange(0, 5)]);
	self setViewmodel("viewhands_black_kit");
	self.voice = "british";
}

precache()
{
	precacheModel("body_mp_sas_urban_sniper");
	precacheModel("viewhands_black_kit");
}
