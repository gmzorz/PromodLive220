// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{

	level.models[0] = ("body_mp_opforce_sniper_urban");
	level.models[1] = ("body_mp_opforce_assault");
	level.models[2] = ("body_mp_opforce_support");
	level.models[3] = ("body_mp_opforce_eningeer");
	level.models[4] = ("body_mp_opforce_cqb");

	level.heads[0] = ("head_mp_opforce_justin");
	level.heads[1] = ("head_mp_opforce_headwrap");
	level.heads[2] = ("head_mp_opforce_3hole_mask");
	level.heads[3] = ("head_mp_opforce_gasmask");
	level.heads[4] = ("head_mp_opforce_gasmask");

	self setModel(level.models[randomIntRange(0, 5)]);
	self attach(level.heads[randomIntRange(0, 5)], "", true);
	self setViewmodel("viewhands_op_force");
	self.voice = "russian";
}

precache()
{
	precacheModel("body_mp_opforce_sniper_urban");
	precacheModel("head_mp_opforce_justin");
	precacheModel("viewhands_op_force");
}
