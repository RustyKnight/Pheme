//
//  Pheme.swift
//  Pheme
//
//  Created by Shane Whitehead on 8/2/20.
//  Copyright © 2020 Shane Whitehead. All rights reserved.
//

import Foundation

public class Buzz {
	public let dateTime: Date
	public let message: String
	public let error: Swift.Error?
	
	public let userObject: Any?
	public let userInfo: [AnyHashable: Any]?
	
	public init(message: String, error: Swift.Error? = nil, userObject: Any? = nil, userInfo: [AnyHashable: Any]? = nil) {
		dateTime = Date()
		self.message = message
		self.error = error
		self.userInfo = userInfo
		self.userObject = userObject
	}
}

public class Pheme {
	public static let shared = Pheme()
	public static let posted = Notification.Name(rawValue: "Pheme.messagePosted")
	
	var gossip: [Buzz] = []

	public func post(_ message: String, withError error: Swift.Error? = nil, userObject: Any? = nil, userInfo: [AnyHashable: Any]? = nil) {
		
	}
	
	public func lastMessage(where this: (Buzz) -> Bool) -> Buzz? {
		return gossip.sorted { $0.dateTime < $1.dateTime }.last(where: this)
	}
	
	public func buzz(where this: (Buzz) -> Bool) -> [Buzz] {
		return gossip.filter(this).sorted { $0.dateTime < $1.dateTime }
	}
}
