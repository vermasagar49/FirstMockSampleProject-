// MARK: - Mocks generated from file: FirstMockSampleProject/FileName1.swift at 2021-06-05 07:33:08 +0000

//
//  FileName1.swift
//  AnotherSample
//
//  Created by Sagar Verma on 02/06/21.
//

import Cuckoo
@testable import FirstMockSampleProject

import Foundation


 class MockFileName1: FileName1, Cuckoo.ClassMock {
    
     typealias MocksType = FileName1
    
     typealias Stubbing = __StubbingProxy_FileName1
     typealias Verification = __VerificationProxy_FileName1

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: FileName1?

     func enableDefaultImplementation(_ stub: FileName1) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func getData() -> String {
        
    return cuckoo_manager.call("getData() -> String",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.getData()
                ,
            defaultCall: __defaultImplStub!.getData())
        
    }
    

	 struct __StubbingProxy_FileName1: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getData() -> Cuckoo.ClassStubFunction<(), String> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockFileName1.self, method: "getData() -> String", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_FileName1: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getData() -> Cuckoo.__DoNotUse<(), String> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getData() -> String", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class FileName1Stub: FileName1 {
    

    

    
     override func getData() -> String  {
        return DefaultValueRegistry.defaultValue(for: (String).self)
    }
    
}

