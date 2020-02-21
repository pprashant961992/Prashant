//
//	CSSponsorship.swift
//

import Foundation


class CSSponsorship : NSObject, NSCoding{

	var impressionUrls : [String]!
	var sponsor : CSSponsor!
	var tagline : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		impressionUrls = dictionary["impression_urls"] as? [String]
		if let sponsorData = dictionary["sponsor"] as? [String:Any]{
			sponsor = CSSponsor(fromDictionary: sponsorData)
		}
		tagline = dictionary["tagline"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if impressionUrls != nil{
			dictionary["impression_urls"] = impressionUrls
		}
		if sponsor != nil{
			dictionary["sponsor"] = sponsor.toDictionary()
		}
		if tagline != nil{
			dictionary["tagline"] = tagline
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         impressionUrls = aDecoder.decodeObject(forKey: "impression_urls") as? [String]
         sponsor = aDecoder.decodeObject(forKey: "sponsor") as? CSSponsor
         tagline = aDecoder.decodeObject(forKey: "tagline") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if impressionUrls != nil{
			aCoder.encode(impressionUrls, forKey: "impression_urls")
		}
		if sponsor != nil{
			aCoder.encode(sponsor, forKey: "sponsor")
		}
		if tagline != nil{
			aCoder.encode(tagline, forKey: "tagline")
		}

	}

}
