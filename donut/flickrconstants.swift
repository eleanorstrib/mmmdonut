//
//  flickrconstants.swift
//  donut
//
//  Created by Eleanor Stribling on 2/16/16.
//  Copyright © 2016 eleanorstrib. All rights reserved.
//

import Foundation

struct Flickrconstants {
    struct Base {
        static let FlickrBaseUrl = "https://api.flickr.com/services/rest"
    }
    
    struct ParameterKeys {
        static let Method = "method"
        static let APIKey = "api_key"
        static let GalleryID = "gallery_id"
        static let Extras = "extras"
        static let Format = "format"
        static let NoJSONCallback = "nojsoncallback"
    }
    
    struct ParameterValues {
        static let APIKey = FLICKR_API_KEY
        static let ResponseFormat = "json"
        static let DisableJSONCallback =  "1"
        static let GalleryPhotosMethod = "flickr.galleries.getPhotos"
        static let GalleryID = "72157663354529069"
        static let MediaUrl = "url_m"
    
    }

}
