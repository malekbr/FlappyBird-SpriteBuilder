#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    timeSinceObstacle += delta;
    
    if (timeSinceObstacle > 2.0f) {
        [self addObstacle];
        
        timeSinceObstacle = 0.0f;
    }
}


// put new methods here

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will be called each time the player touches the screen
    [character flap];
}

@end
