// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	level.models[0] = ("body_mp_usmc_specops");
	level.models[1] = ("body_mp_usmc_sniper");
	level.models[2] = ("body_mp_usmc_recon");
	level.models[3] = ("body_mp_usmc_assault");
	level.models[4] = ("body_mp_usmc_support");

	level.heads[0] = ("head_mp_usmc_nomex");
	level.heads[1] = ("head_mp_usmc_tactical_baseball_cap");
	level.heads[2] = ("head_mp_usmc_tactical_mich_stripes_nomex");
	level.heads[3] = ("head_mp_usmc_shaved_head");

	self setModel(level.models[randomIntRange(0, 5)]);
	self attach(level.heads[randomIntRange(0, 4)], "", true);
	self setViewmodel("viewmodel_base_viewhands");
	self.voice = "american";
}

precache()
{
	precacheModel("body_mp_usmc_sniper");
	precacheModel("head_mp_usmc_tactical_baseball_cap");
	precacheModel("viewmodel_base_viewhands");
}
