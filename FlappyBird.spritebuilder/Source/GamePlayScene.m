#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
}

-(void)update:(CCTime)delta
{
    // put update code here
}


// put new methods here

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will be called each time the player touches the screen
    [character flap];
}

@end
