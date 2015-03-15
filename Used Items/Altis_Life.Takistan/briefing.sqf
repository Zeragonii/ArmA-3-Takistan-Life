waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["policerules","UN Handbook"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Terror Guidelines"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					The official change log can be found on the BIS forums (search Takistan Life RPG)
				"
		]
	];
	
		player createDiaryRecord ["serverrules",
		[
			"Civilian Rules", 
				"
				Civilians are the citizens of Takistan. Their main goal is to rebuild their country. Civilians can choose to lead a life of crime, or an honest life. The choice is yours.<br/>
				1. Civilians must holster pistols in towns.<br/>
				2. Civilians must keep licensed rifles in their cars unless at a hunting area.<br/>
				3. Civilians must follow Police instruction.<br/>
				4. Civilians must role-play in kidnapping situations. (doesn't mean you have to comply with your kidnapper.<br/>
				5. If a cop restrains you DO NOT get out of the vehicle just to buy time.<br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"General Guidelines", 
				"
				Welcome to our Takistan Life server!<br/>
				All rules may be enforced by admins.<br/>
				The administrators also have the right to punish players not breaking any of these rules but disturb in any other way. On playing at our servers you agree with them. These rules can change without any notification. Make sure you check it from time to time.<br/>
				1. Be respectful towards everybody unless you are roleplaying.<br/>
				2. Exploiting is bannable.<br/>
				3. Unarmed civilian can’t be killing on sight (KOS)<br/>
				4. Random death matching (RDM) is not allowed under any circumstance<br/>
				5. Vehicle death matching (VDM) (Vehicles can be used as weapons, just not randomly.)<br/>
				6. Airborne vehicle death matching (AVDM) (Same thing as VDM applies)<br/>
				7. Corruption on blufor is strictly against server rules <br/>
				8. Meta-gaming in any form will see anyone involved banned.<br/>
				9. Once a criminal have been dealt with the NEW LIFE rule will prevent you from re-arresting or attacking that person.<br/>
				10. If you wish to communicate with other players please use our TeamSpeak server rather than using Side Chat - VON, unless contracting a PMC use your mobile phone.<br/>
				11. No Spamming VON and chat<br/>
				12. If you have a problem with another player take it to teamspeak do not spam VON or Chat.<br/><br/>
				"
		]
	];
		
// Police Section
	player createDiaryRecord ["policerules",
		[
			"The UN Handbook",
				"
				The United Nations job is to create a secure country for the civilian population. Deal with any illegal activities from the Civilian population and the Takistan Liberation Army. Ensure peace and order. (Follow the overall rules)<br/>
				UN Soldiers Must Always Be On Teamspeak, the ip is: 85.236.100.124:10037<br/>
				It is the UN duty to protect civilians.<br/>
				Any weapons found lying on the floor must be seized.<br/><br/>
				
				Killing and Arresting Rules:<br/>
				To arrest you must take the suspect to any UN HQ(Spawn-points)<br/>
				1. UN can only ever kill civilians in self-defence.<br/>
				2. UN is required to try and arrest criminals not kill them.<br/>
				3. UN is to use the ticket system for arrests.<br/><br/>
				4. UN is to interrogate the suspects for information, if you do this as RP don't send the suspect to jail after, they served their time.
				
				Search Rules:<br/>
				1. UN can only search civilians if they have probable cause and believe the civilian has committed a crime.<br/>
				2. UN can search every civilian that passes through a checkpoint.<br/>
				3. Civilians that avoid checkpoints can be searched due to suspicious activity.<br/>
				4. Civilians that dodge checkpoints can be questioned, searched and arrested for evading the police.<br/>
				5. Do not disarm civilians without checking their licenses first.<br/><br/>
				
				Checkpoints rules:<br/>
				1. Checkpoints are there to control the entry and exit to the Opfor lands.<br/>
				2. Do not fire upon any civilians that avoid the checkpoint.<br/>
				3. Wait for civilians to put there hands up instead of stunning them.<br/>
				4. Civilians who loiter at checkpoints or aggravate police may be arrest.<br/><br/>
				
				Hostage situation rules:<br/>
				1. This one's simple, do NOT kill the hostages (do not even attempt to fire if it threatens their life).<br/>
				2. Try to negotiate with the captor, do not just kill him, this would break the above rule of endangering the hostage.<br/>
				3. Try to Role-play it out as much as possible, if you get captured, you can no longer communicate via group chat or teamspeak.<br/>
				4. Do not meta-game by heading straight to the location of another captured soldier, your character doesn't know they are being held captive.<br/><br/>
				
				Drug and gang enforcement rules:<br/>
				1. UN must have at least 3 officers to raid a gang area.<br/>
				2. UN soldiers may not camp the gang areas.<br/>
				3. UN soldiers can pay civilians for information.<br/>
				4. UN must have 3 officers to ambush the drug sellers.<br/>
				5. If a civilian has a drug processing license you may not arrest them because of it.<br/>
				6. UN soldiers should always arrest criminals only killing them if they pose extreme danger to them or anyone around them.<br/><br/>
				
				Ticketing Rules:<br/>
				
				• Trespassing on UN Property > $125 Ticket<br/>
				• Speeding > $1000 Ticket<br/>
				• Possession of an illegal handgun = $5,000 Ticket and weapon removal<br/>
				• Possession of an illegal rifle = $10,000 Ticket and weapon removal<br/>
				• Possession of an illegal LMG = $30,000 Ticket and weapon removal<br/>
				• Possession of illegal ordnance = $55,000 Ticket and weapon removal<br/>
				• Possession of a legal firearm without a valid license = $20,000 Ticket & weapon removal<br/>
				• Weapon trafficking = $40,000 Ticket and weapon removal<br/>
				• Reckless driving = $15,000 Ticket = Vehicle Impound = Arrest<br/>
				• Not using headlights at night = $1,000 Ticket at officers discretion = Vehicle impound<br/>
				• Illegal parking = Vehicle impound<br/>
				• Public disturbance = Removal from area = $5,000 Ticket = Arrest<br/>
				• Obstruction of justice = $20,000 Ticket = Arrest<br/>
				• Use of lock pick = Ticket of bounty = Arrest<br/>
				• Trespassing = $20,000 Ticket = Arrest<br/>
				• Rebel clothing on a civilians = $35,000 ticket and confiscation = Arrest<br/>
				• Rebel vehicles = Destroyed<br/>
				• Any drug with intent to supply = arrest<br/>
				• Possession of Marijuana = $20,000 ticket and confiscation<br/>
				• Possession of Cocaine = $60,000 ticket and confiscation<br/>
				• Possession of LSD = $60,000 ticket and confiscation<br/>
				• Possession of Heroin - $60,000 ticket and confiscation<br/><br/>
				
				Speeding:<br/>
				1. Inside towns and checkpoints 60 km/h<br/>
				2. Outside of towns 110 km/h<br/><br/>
				
				Rules of engagement:<br/>
				1. When in a vehicle and you come into a fire fight try not to run people over, give a fair fight.<br/>
				2. If engaged you are permitted to shoot back, but try and arrest the suspect.<br/>
				3. When you attempt to stop a car, and it doesn't comply do not shoot at it immediately chase it down and arrest them.<br/><br/>
				"
		]
	];
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Terrorist Guidelines",
				"
				you've made the choice to become a terrorist in the eyes of the UN, make the UN's life as hard as possible.<br/>
				Watch your back and be prepared to be hunted! (Follow the overall rules).<br/><br/>
				"
		]
	];
	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Y: Open Player Menu<br/>
				U: Lock and unlock cars<br/>
				F: Cop Siren (if cop)<br/>
				T: Vehicle Trunk<br/>
				Left Shift + R: Restrain (Cop Only)<br/>
				Left Shift + G: Knock out / stun (Civ Only, used for robbing them)<br/>
				Left Windows: Main Interaction key which is used for picking up items/money, gathering, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Left Shift + L: Activates cop siren lights (as a cop).<br/>
				Left Shift + H: Holster's your pistol<br/>
				Left Shift + SPACE: Jump (Whilst Sprinting, be careful!)<br/>
				"
		]
	];