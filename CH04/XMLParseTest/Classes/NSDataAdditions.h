
#import <Foundation/Foundation.h>

@interface NSData (NSDataAdditions)

+ (NSData *) dataWithUncompressedContentsOfFile:(NSString *)aFile;
	
	
// ================================================================================================
//  base64.h
//  ViewTransitions
//
// ================================================================================================
+ (NSData *) dataWithBase64EncodedString:(NSString *) string;
- (id) initWithBase64EncodedString:(NSString *) string;

- (NSString *) base64Encoding;
- (NSString *) base64EncodingWithLineLength:(unsigned int) lineLength;



// ================================================================================================
//  NSData+gzip.h
//  Drip
//
- (NSData *)gzipDeflate;
- (NSData *)gzipInflate;


@end