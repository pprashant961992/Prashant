//
//	CSProfileImage.swift
//

import Foundation


class CSProfileImage : NSObject, NSCoding{

	var large : String!
	var medium : String!
	var small : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		large = dictionary["large"] as? String
		medium = dictionary["medium"] as? String
		small = dictionary["small"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if large != nil{
			dictionary["large"] = large
		}
		if medium != nil{
			dictionary["medium"] = medium
		}
		if small != nil{
			dictionary["small"] = small
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         large = aDecoder.decodeObject(forKey: "large") as? String
         medium = aDecoder.decodeObject(forKey: "medium") as? String
         small = aDecoder.decodeObject(forKey: "small") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if large != nil{
			aCoder.encode(large, forKey: "large")
		}
		if medium != nil{
			aCoder.encode(medium, forKey: "medium")
		}
		if small != nil{
			aCoder.encode(small, forKey: "small")
		}

	}

}
