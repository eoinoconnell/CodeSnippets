// Mantle
// Quick Mantle Implementation
//
// IDECodeSnippetCompletionPrefix: mantle
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 9724A8DB-D56E-4386-8164-8B0825690B8A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetPlatformFamily: iphoneos
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
            
             };
}

+ (NSValueTransformer *)<#property#>JSONTransformer {
    return [NSValueTransformer valueTransformerForName:<#transformerName#>];
}

+ (id) <#objectName#>FromJSON:(NSDictionary *)json{
    
    NSError *error;
    <#class#> *<#objectName#> = [MTLJSONAdapter modelOfClass:[self class] fromJSONDictionary:json error:&error];
    
    if(error != nil) {
        NSLog(@"Error parsing JSON: %@", error);
        return nil;
    }
    
    return <#objectName#>;
}

+ (NSArray *)<#objectName#>sFromArray:(NSArray *)jsonArray{
    
    NSMutableArray *output = [[NSMutableArray alloc] initWithCapacity:[jsonArray count]];
    
    [jsonArray enumerateObjectsUsingBlock:^(NSDictionary *itemJson, NSUInteger idx, BOOL *stop) {
        [output addObject:[self <#objectName#>FromJSON:itemJson]];
    }];
    return [output copy];
}