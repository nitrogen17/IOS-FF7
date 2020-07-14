//
//  TableData.swift
//  FinalFantasy
//
//  Created by Nitrogen on 6/6/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

struct TableData {
    var name: String
    var koreanName: String
    var alterName: String
    var description: String
    var imageName: String
    var background: String
    
    init(_ name: String = "", _ nickname: String = "", _ alterName: String = "", _ description: String = "", _ imageName: String = "", _ background: String = "") {
        self.name = name
        self.koreanName = nickname
        self.alterName = alterName
        self.description = description
        self.imageName = imageName
        self.background = background
    }
}
