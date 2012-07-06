// RUN: %clang_cc1 -triple x86_64-apple-darwin9 -fobjc-fragile-abi -emit-llvm -fblocks -o %t %s

// rdar: // 8064140

@interface IDEWorkspaceDocument 
{
  id _defaultEditorStateTree;
}
- (void)enumerateKeysAndObjectsUsingBlock:(void (^)(id key, id obj, unsigned char *stop))block ;
@end



int foo();
extern void DVT (volatile const void * object, volatile const void * selector, const char * functionName); 
@implementation IDEWorkspaceDocument

- (void)stateSavingDefaultEditorStatesForURLs {
 [_defaultEditorStateTree enumerateKeysAndObjectsUsingBlock:^(id identifier, id urlsToEditorStates, unsigned char *stop) {
  do{ 
if (foo() ) 
  DVT(&self,&_cmd,__PRETTY_FUNCTION__);

}while(0); 

  do{ 
       DVT(&self,&_cmd,__PRETTY_FUNCTION__);
    }while(0); 


 }];

}

- (void)enumerateKeysAndObjectsUsingBlock:(void (^)(id key, id obj, unsigned char *stop))block {}

@end