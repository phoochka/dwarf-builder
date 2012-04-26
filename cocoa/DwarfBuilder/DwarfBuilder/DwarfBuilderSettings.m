
#import "DwarfBuilderSettings.h"

@implementation DwarfBuilderSettings

@synthesize properties;

@synthesize enableSound, extendedOST, compressSaves, 
    pauseOnLoad, pauseOnSave, autoBackupSaves;
@synthesize volume, keybindings, autosave;
@synthesize cFPSCap, gFPSCap;

@synthesize fullscreen, showIntro, showFPS,
    showDepth, creatureGraphics, useFont;
@synthesize windowWidth, windowHeight;
@synthesize showIdlers, tileset, font;

@synthesize skillRust, embarkWarning, grazingAnimals,
    pauseOnCaveIns, extraShellItems, pauseOnWarmDampStone, 
    temperature, aquifers, caveIns, invaders, weather;
@synthesize dwarfCap, childHardCap, childPercentageCap,
    embarkWidth, embarkHeight;

-(id)init {
    self = [super init];
    
    if (self) {
        [self setProperties:[[NSArray alloc] initWithObjects:@"enableSound", @"extendedOST", @"compressSaves", 
                             @"pauseOnLoad", @"pauseOnSave", @"autoBackupSaves", @"volume", @"keybindings", 
                             @"autosave", @"cFPSCap", @"gFPSCap", @"fullscreen", @"showIntro", @"showFPS", 
                             @"showDepth", @"creatureGraphics", @"useFont",@"windowWidth", @"windowHeight", 
                             @"showIdlers", @"tileset", @"skillRust", @"embarkWarning", @"grazingAnimals",
                             @"pauseOnCaveIns", @"extraShellItems", @"pauseOnWarmDampStone", @"invaders",
                             @"temperature", @"font", @"aquifers", @"caveIns", @"weather", @"dwarfCap", 
                             @"childHardCap", @"childPercentageCap", @"embarkWidth", @"embarkHeight", nil]];
        [self setEnableSound:false];
        [self setExtendedOST:false];
        [self setCompressSaves:true];
        [self setPauseOnLoad:true];
        [self setPauseOnSave:true];
        [self setAutoBackupSaves:false];
        [self setVolume:0];
        [self setKeybindings:kbLaptop];
        [self setAutosave:asSeasonal];
        [self setCFPSCap:@"100"];
        [self setGFPSCap:@"50"];
        [self setFullscreen:false];
        [self setShowIntro:false];
        [self setShowFPS:true];
        [self setShowDepth:true];
        [self setCreatureGraphics:true];
        [self setUseFont:false];
        [self setWindowWidth:@"1280"];
        [self setWindowHeight:@"600"];
        [self setShowIdlers:siTop];
        [self setTileset:tsIronhand];
        [self setFont:fIronhand];
        [self setSkillRust:false];
        [self setEmbarkWarning:true];
        [self setGrazingAnimals:false];
        [self setPauseOnCaveIns:true];
        [self setExtraShellItems:true];
        [self setPauseOnWarmDampStone:true];
        [self setTemperature:true];
        [self setAquifers:false];
        [self setCaveIns:true];
        [self setInvaders:true];
        [self setWeather:true];
        [self setDwarfCap:@"100"];
        [self setChildHardCap:@"15"];
        [self setChildPercentageCap:@"20"];
        [self setEmbarkWidth:@"3"];
        [self setEmbarkHeight:@"3"];
    }
    
    return self;
}

-(void)writeSettingsToFile:(NSString *)filename {
//    NSDictionary *dict = [self dictionaryWithValuesForKeys:[self properties]];
//    [dict writeToFile:filename atomically:true];
//    NSLog(@"%@", dict);
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"one", @"two", @"three", @"four", @"five", @"six", nil];
    [dict writeToFile:filename atomically:true];
}

-(void)readSettingsFromFile:(NSString *)filename {
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:filename];
    [self setValuesForKeysWithDictionary:dict];
}

@end
