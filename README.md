flashRPG
========

I’m building a text-based RPG game that helps the player learn languages by answering flashcard questions to move through quests. I’ll keep it simple for the users sake and because of my own limited abilities.

Gameplay Details:
	⁃	User goes on quests
	⁃	Quests are between 5-10 levels long
	⁃	Each level contains a flashcard question
	⁃	Correct answers give bonuses, incorrect answers give penalties
	⁃	Users have health
	⁃	Complete a quest with health > 0 to pass onto the next quest


The code structure (as of now) is as follows:

Each level is an RPGTile and contains a:
	1:	question
	2:	correct answer
	3:	incorrect answers x3
	4:	bonus (for correct answer)
	5:	penalty (for incorrect answers)

When the game is started the viewController’s viewDidLoad method runs the tile generating method [factory tiles], which has the factory method create a set of tiles for the level.

Right now the tile info is hard coded into the factory class, so my goal for version 0.2 is to get all of the tile data to be generated dynamically each time the factory method is run, so each quest is different.

To generate the questions, the program also needs to read a .xml data sheet which I still need to finish formatting the data.

Classes I am considering deleting in future versions.
	⁃	RPGWeapon
	⁃	RPGArmor
	⁃	RPGBoss
	⁃	RPGQuestionFactory (maybe questions&answers should be generated in the RPGFactory along with everything else?)



