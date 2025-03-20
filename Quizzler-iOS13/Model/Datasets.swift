//
//  Datasets.swift
//  Quizzler-iOS13
//
//  Created by Raul Humberto Juliao Colina on 19/03/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

struct Datasets {
    private let datasets = [PersonalizationData( "sundoginteractive",  "rj_prft_demo"), PersonalizationData( "sundoginteractive",  "perficient_demo")]
    
    func getAccount(datasetNo: Int) -> String {
        return self.datasets[datasetNo].accountId
    }
    
    func getDatasetId(datasetNo: Int) -> String {
        return self.datasets[datasetNo].datasetId
    }
}
