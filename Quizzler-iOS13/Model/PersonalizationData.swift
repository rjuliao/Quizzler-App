//
//  PersonalizationData.swift
//  Quizzler-iOS13
//
//  Created by Raul Humberto Juliao Colina on 19/03/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

struct PersonalizationData {
    var accountId: String
    var datasetId: String

    init(_ accountId: String, _ datasetId: String) {
        self.accountId = accountId
        self.datasetId = datasetId
    }
}
