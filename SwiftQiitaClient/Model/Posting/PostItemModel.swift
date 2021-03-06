//
//  PostItemModel.swift
//  SwiftQiitaClient
//
//  Created by Takahiro Nishinobu on 2015/11/29.
//  Copyright © 2015年 hachinobu. All rights reserved.
//

import Foundation
import ObjectMapper

struct PostItemModel: Mappable {
    
    var id: String?
    var isPrivate: Bool?
    var title: String?
    var body: String?
    var renderedBody: String?
    var url: String?
    var tags: [TaggingModel]?
    var user: UserModel?
    var coEditing: Bool?
    var createdAt: String?
    var updatedAt: String?
    
    init?(_ map: Map) {}
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        isPrivate <- map["private"]
        title <- map["title"]
        body <- map["body"]
        renderedBody <- map["rendered_body"]
        url <- map["url"]
        tags <- map["tags"]
        user <- map["user"]
        coEditing <- map["coediting"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
    }
    
}