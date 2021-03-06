//
//  PIXOutput.swift
//  Pixels
//
//  Created by Hexagons on 2018-07-26.
//  Copyright © 2018 Hexagons. All rights reserved.
//

import CoreGraphics

public class PIXOutput: PIX, PIXInIO, PIXInSingle {
    
    var pixInList: [PIX & PIXOut] = []
    var connectedIn: Bool { return !pixInList.isEmpty }
    
    public var inPix: (PIX & PIXOut)? { didSet { setNeedsConnect() } }
    
    override init() {
        super.init()
        pixInList = []
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("PIXOutput Decoder Initializer is not supported.") // CHECK
    }
    
}
