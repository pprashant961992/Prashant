//
//	CSLink.swift
//	

import Foundation


class CSLink : NSObject, NSCoding{

	var download : String!
	var downloadLocation : String!
	var html : String!
	var followers : String!
	var following : String!
	var likes : String!
	var photos : String!
	var portfolio : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		download = dictionary["download"] as? String
		downloadLocation = dictionary["download_location"] as? String
		html = dictionary["html"] as? String
		followers = dictionary["followers"] as? String
		following = dictionary["following"] as? String
		likes = dictionary["likes"] as? String
		photos = dictionary["photos"] as? String
		portfolio = dictionary["portfolio"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if download != nil{
			dictionary["download"] = download
		}
		if downloadLocation != nil{
			dictionary["download_location"] = downloadLocation
		}
		if html != nil{
			dictionary["html"] = html
		}
		if followers != nil{
			dictionary["followers"] = followers
		}
		if following != nil{
			dictionary["following"] = following
		}
		if likes != nil{
			dictionary["likes"] = likes
		}
		if photos != nil{
			dictionary["photos"] = photos
		}
		if portfolio != nil{
			dictionary["portfolio"] = portfolio
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         download = aDecoder.decodeObject(forKey: "download") as? String
         downloadLocation = aDecoder.decodeObject(forKey: "download_location") as? String
         html = aDecoder.decodeObject(forKey: "html") as? String
         followers = aDecoder.decodeObject(forKey: "followers") as? String
         following = aDecoder.decodeObject(forKey: "following") as? String
         likes = aDecoder.decodeObject(forKey: "likes") as? String
         photos = aDecoder.decodeObject(forKey: "photos") as? String
         portfolio = aDecoder.decodeObject(forKey: "portfolio") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if download != nil{
			aCoder.encode(download, forKey: "download")
		}
		if downloadLocation != nil{
			aCoder.encode(downloadLocation, forKey: "download_location")
		}
		if html != nil{
			aCoder.encode(html, forKey: "html")
		}
		if followers != nil{
			aCoder.encode(followers, forKey: "followers")
		}
		if following != nil{
			aCoder.encode(following, forKey: "following")
		}
		if likes != nil{
			aCoder.encode(likes, forKey: "likes")
		}
		if photos != nil{
			aCoder.encode(photos, forKey: "photos")
		}
		if portfolio != nil{
			aCoder.encode(portfolio, forKey: "portfolio")
		}

	}

}
