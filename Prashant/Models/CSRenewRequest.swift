//
//	CSRenewRequest.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class CSRenewRequest : NSObject, NSCoding{

	var accessToken : String!
	var refreshToken : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		accessToken = dictionary["access_token"] as? String
		refreshToken = dictionary["refresh_token"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if accessToken != nil{
			dictionary["access_token"] = accessToken
		}
		if refreshToken != nil{
			dictionary["refresh_token"] = refreshToken
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         accessToken = aDecoder.decodeObject(forKey: "access_token") as? String
         refreshToken = aDecoder.decodeObject(forKey: "refresh_token") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if accessToken != nil{
			aCoder.encode(accessToken, forKey: "access_token")
		}
		if refreshToken != nil{
			aCoder.encode(refreshToken, forKey: "refresh_token")
		}

	}

}