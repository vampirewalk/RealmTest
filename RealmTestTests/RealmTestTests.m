//
//  RealmTestTests.m
//  RealmTestTests
//
//  Created by rdqa on 2014/12/19.
//  Copyright (c) 2014年 umedia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <Realm.h>
#import "Playlist.h"
#import "Track.h"

@interface RealmTestTests : XCTestCase

@end

@implementation RealmTestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
//    XCTAssert(YES, @"Pass");
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *documentsDirectory = [paths objectAtIndex:0];
//    RLMRealm *testRealm = [RLMRealm realmWithPath:[documentsDirectory stringByAppendingString:@"/test.realm"]];
    RLMRealm *realm = [RLMRealm inMemoryRealmWithIdentifier:@"test.realm"];
    
    Playlist *playlist = [[Playlist alloc] init];
    playlist.renderer = @"HD-130";
    
    Track *track1 = [[Track alloc] init];
    track1.name = @"半獸人";
    track1.audioResourceURI = @"http://192.168.0.100:32469/object/189ecbc6874e9c3d99c0/file.mp3";
    track1.albumArtURI = @"http://192.168.0.100:32469/proxy/636804862ce876a9f1da/albumart.jpg";
    
    Track *track2 = [[Track alloc] init];
    track2.name = @"夜的第七章";
    track2.audioResourceURI = @"http://192.168.0.100:32469/object/1ad5a0feb8fb07944c32/file.mp3";
    track2.albumArtURI = @"http://192.168.0.100:32469/proxy/636804862ce876a9f1da/albumart.jpg";
    
    Track *track3 = [[Track alloc] init];
    track3.name = @"擱淺";
    track3.audioResourceURI = @"http://192.168.0.100:32469/object/f7c220e7b7edb6d392ca/file.mp3";
    track3.albumArtURI = @"http://192.168.0.100:32469/proxy/636804862ce876a9f1da/albumart.jpg";
    [realm beginWriteTransaction];
    [realm addObject:track1];
    [realm commitWriteTransaction];
    [playlist.tracks addObject:track1];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
