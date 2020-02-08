//
//  Sychronized.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 8/4/19.
//  Copyright © 2019 Shane Whitehead. All rights reserved.
//

import Foundation

func lock(on obj: AnyObject, blk: () -> Void) {
	objc_sync_enter(obj)
	blk()
	objc_sync_exit(obj)
}

func lock<T>(on obj: AnyObject, blk: () throws -> T) rethrows -> T {
	objc_sync_enter(obj)
	let value = try blk()
	objc_sync_exit(obj)
	return value
}
