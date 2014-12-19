//
//  Playlist.h
//  UMediaPlayer
//
//  Created by rdqa on 2014/12/18.
//  Copyright (c) 2014年 umedia. All rights reserved.
//

#import <Realm/Realm.h>
#import "Track.h"

@interface Playlist : RLMObject
@property NSString *renderer;
@property RLMArray<Track> *tracks;
@property Track *nowPlayingTrack;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<Playlist>
RLM_ARRAY_TYPE(Playlist)


