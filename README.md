# Fruity-Shooty
This is an incredibly simple game that I developed to practice programming for myself. It utilizes GMS (Game Maker Studio) to execute the program. 

In the game, the user is a single spaceship tasked with shooting flying debris in the form of various fruits. These fruit debris will spawn in randomly, flying in from random locations off-screen, and will remain flying until the player either 1) destroys it, 2) wins the game, or 3) loses the game. This is done by wrapping the game window, so entities can continue moving in any arbitrary direction forever with no inhibition due to frictional force. The player entity is also wrapped in the game window, so it will not fly off screen and no longer be visible. 

There are three sizes of fruit in this game: small, medium, and large. If a medium or large fruit is destroyed, a subsequently smaller variant of the debris is released. (medium releases small variants, and large releases medium variants). These smaller variants can range from 1 to 3 entities based on a programmed random-number generator. 

The goal of this game is to destroy enough debris to score 1000 points. Destroying each bit of debris adds 10 points towards your total, regardless of the size of the debris. The fruit debris entities are dangerous, and will destroy your ship if a single one touches it. If your ship is destroyed three times, and you have not scored 1000 points, it will be game over, and you will lose. 

I designed everything in the game excluding the background, which was something I found on google images and trimmed to fit my game window more appropriately. If there are any questions about my game, please don't hesitate to ask. 
