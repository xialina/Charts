//
//  ScatterChartData.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation
import CoreGraphics

open class ScatterChartData: BarLineScatterCandleBubbleChartData
{
    public override init()
    {
        super.init()
    }
    
    public override init(dataSets: [IChartDataSet]?)
    {
        super.init(dataSets: dataSets)
    }
    
    /// - returns: The maximum shape-size across all DataSets.
    @objc open func getGreatestShapeSize() -> CGFloat
    {
        let sets = _dataSets as? [IScatterChartDataSet]
        assert(sets != nil, "ScatterChartData: Found a DataSet which is not a ScatterChartDataSet")

        let max = sets?.max {
            $0.scatterShapeSize < $1.scatterShapeSize
        }
        return max?.scatterShapeSize ?? 0
    }
}
