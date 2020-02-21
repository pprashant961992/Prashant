//
//	CSUrl.swift
//	

import Foundation


class CSUrl : NSObject, NSCoding{

	var full : String!
	var raw : String!
	var regular : String!
	var small : String!
	var thumb : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		full = dictionary["full"] as? String
		raw = dictionary["raw"] as? String
		regular = dictionary["regular"] as? String
		small = dictionary["small"] as? String
		thumb = dictionary["thumb"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if full != nil{
			dictionary["full"] = full
		}
		if raw != nil{
			dictionary["raw"] = raw
		}
		if regular != nil{
			dictionary["regular"] = regular
		}
		if small != nil{
			dictionary["small"] = small
		}
		if thumb != nil{
			dictionary["thumb"] = thumb
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         full = aDecoder.decodeObject(forKey: "full") as? String
         raw = aDecoder.decodeObject(forKey: "raw") as? String
         regular = aDecoder.decodeObject(forKey: "regular") as? String
         small = aDecoder.decodeObject(forKey: "small") as? String
         thumb = aDecoder.decodeObject(forKey: "thumb") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if full != nil{
			aCoder.encode(full, forKey: "full")
		}
		if raw != nil{
			aCoder.encode(raw, forKey: "raw")
		}
		if regular != nil{
			aCoder.encode(regular, forKey: "regular")
		}
		if small != nil{
			aCoder.encode(small, forKey: "small")
		}
		if thumb != nil{
			aCoder.encode(thumb, forKey: "thumb")
		}

	}

}
