//
//  PIXModes.swift
//  Pixels
//
//  Created by Hexagons on 2018-08-23.
//  Copyright © 2018 Hexagons. All rights reserved.
//

import MetalPerformanceShaders

extension PIX {
    
    public enum FillMode: String, Codable {
        case fill
        case aspectFit
        case aspectFill
        var index: Int {
            switch self {
            case .fill: return 0
            case .aspectFit: return 1
            case .aspectFill: return 2
            }
        }
    }
    
    public enum BlendingMode: String, Codable {
        case over
        case under
        case add
        case multiply
        case difference
        case subtract
        case maximum
        case minimum
        var index: Int {
            switch self {
            case .over: return 0
            case .under: return 1
            case .add: return 2
            case .multiply: return 3
            case .difference: return 4
            case .subtract: return 5
            case .maximum: return 6
            case .minimum: return 7
            }
        }
    }
    
    public enum InterpolateMode: String, Codable {
        case nearest
        case linear
        var mtl: MTLSamplerMinMagFilter {
            switch self {
            case .nearest: return .nearest
            case .linear: return .linear
            }
        }
    }
    
    public enum ExtendMode: String, Codable {
        case hold
        case zero
        case `repeat`
        case mirror
        var mtl: MTLSamplerAddressMode {
            switch self {
            case .hold: return .clampToEdge
            case .zero: return .clampToZero
            case .repeat: return .repeat
            case .mirror: return .mirrorRepeat
            }
        }
        var mps: MPSImageEdgeMode {
            switch self {
            case .zero: return .zero
            default: return .clamp
            }
        }
        var index: Int {
            switch self {
            case .hold: return 0
            case .zero: return 1
            case .repeat: return 2
            case .mirror: return 3
            }
        }
    }
    
    public enum SampleQualityMode: Int, Codable {
        case low = 4
        case mid = 8
        case high = 16
        case extreme = 32
        case insane = 64
        case epic = 128
    }
    
}
