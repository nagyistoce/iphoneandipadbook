//
//  main.m
//  Strings
//
//  Created by Henry Yu on 09-01-29.
//  Copyright 2009 sevenuc.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TBXML.h"

void parseTest(){
	NSString *aString= @"<PeopleList>" 
	"<People>"
	"<Id>0001</Id>"
	"<Gender>male</Gender>"
	"<FirstName>Henry</FirstName>"
	"<MiddleName></MiddleName>"
	"<LastName>Yu</LastName>"
	"<Company>Sevensoft</Company>"
	"<Country>China</Country>"
	"<City>Chengdu</City>"                                      
	"<Title>CEO & TD</Title>"
	"<Description></Description>"                       
	"<Mobile></Mobile>"
	"<Email></Email>"                       
	"</People>"
	"<People>"
	"<Id>0002</Id>"
	"<Gender>male</Gender>"
	"<FirstName>Ali</FirstName>"
	"<MiddleName></MiddleName>"
	"<LastName>Ahamed</LastName>"
	"<Company>Sevensoft</Company>"
	"<Country>India</Country>"
	"<City>Chengdu</City>"                                      
	"<Title>Senior VP</Title>"
	"<Description></Description>"                       
	"<Mobile></Mobile>"
	"<Email></Email>"                       
	"</People>"
	"</PeopleList>";   
	
	NSData *data = [aString dataUsingEncoding:NSASCIIStringEncoding];
	// Create a TBXML instance that we can use to parse the XML data
	TBXML *tbXML = [[TBXML alloc] initWithXMLData:data];	
	// Parse the XML data
	if(tbXML.rootXMLElement){		
		TBXMLElement * xmlElement = tbXML.rootXMLElement->firstChild;		
		while (xmlElement) {				
			TBXMLElement * element = xmlElement->firstChild;			
			
			NSMutableDictionary *dict = [[[NSMutableDictionary alloc] init] autorelease];
			while (element) {					
				NSString *name = [NSString stringWithCString:element->name encoding:NSUTF8StringEncoding];
				NSString *value = [NSString stringWithCString:element->text encoding:NSUTF8StringEncoding];
				NSLog(@"%@==>%@",name,value);
				//if([name isEqualToString:@"Id"]){
					//companyId = name;
					[dict setObject:value forKey:name];
				//}
				element = element->nextSibling;
			}			
			
			NSLog(@"dict==>%@",dict);
			
			//do some work here.
			
			xmlElement = xmlElement->nextSibling;
		}		
	}	
	
}


int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
    parseTest();	
	
    [pool release];
    return 0;
}
