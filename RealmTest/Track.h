//
//  Track.h
//  UMediaPlayer
//
//  Created by rdqa on 2014/12/18.
//  Copyright (c) 2014年 umedia. All rights reserved.
//
#import <Realm/Realm.h>

@interface Track : RLMObject
@property NSString *name;
@property NSString *audioResourceURI;
@property NSString *albumArtURI;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<Track>
RLM_ARRAY_TYPE(Track)



