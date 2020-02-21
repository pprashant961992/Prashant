//
//	CSSponsor.swift
//	

import Foundation


class CSSponsor : NSObject, NSCoding{

	var acceptedTos : Bool!
	var bio : String!
	var firstName : String!
	var id : String!
	var instagramUsername : String!
	var lastName : AnyObject!
	var links : CSLink!
	var location : String!
	var name : String!
	var portfolioUrl : String!
	var profileImage : CSProfileImage!
	var totalCollections : Int!
	var totalLikes : Int!
	var totalPhotos : Int!
	var twitterUsername : String!
	var updatedAt : String!
	var username : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		acceptedTos = dictionary["accepted_tos"] as? Bool
		bio = dictionary["bio"] as? String
		firstName = dictionary["first_name"] as? String
		id = dictionary["id"] as? String
		instagramUsername = dictionary["instagram_username"] as? String
		lastName = dictionary["last_name"] as? AnyObject
		if let linksData = dictionary["links"] as? [String:Any]{
			links = CSLink(fromDictionary: linksData)
		}
		location = dictionary["location"] as? String
		name = dictionary["name"] as? String
		portfolioUrl = dictionary["portfolio_url"] as? String
		if let profileImageData = dictionary["profile_image"] as? [String:Any]{
			profileImage = CSProfileImage(fromDictionary: profileImageData)
		}
		totalCollections = dictionary["total_collections"] as? Int
		totalLikes = dictionary["total_likes"] as? Int
		totalPhotos = dictionary["total_photos"] as? Int
		twitterUsername = dictionary["twitter_username"] as? String
		updatedAt = dictionary["updated_at"] as? String
		username = dictionary["username"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if acceptedTos != nil{
			dictionary["accepted_tos"] = acceptedTos
		}
		if bio != nil{
			dictionary["bio"] = bio
		}
		if firstName != nil{
			dictionary["first_name"] = firstName
		}
		if id != nil{
			dictionary["id"] = id
		}
		if instagramUsername != nil{
			dictionary["instagram_username"] = instagramUsername
		}
		if lastName != nil{
			dictionary["last_name"] = lastName
		}
		if links != nil{
			dictionary["links"] = links.toDictionary()
		}
		if location != nil{
			dictionary["location"] = location
		}
		if name != nil{
			dictionary["name"] = name
		}
		if portfolioUrl != nil{
			dictionary["portfolio_url"] = portfolioUrl
		}
		if profileImage != nil{
			dictionary["profile_image"] = profileImage.toDictionary()
		}
		if totalCollections != nil{
			dictionary["total_collections"] = totalCollections
		}
		if totalLikes != nil{
			dictionary["total_likes"] = totalLikes
		}
		if totalPhotos != nil{
			dictionary["total_photos"] = totalPhotos
		}
		if twitterUsername != nil{
			dictionary["twitter_username"] = twitterUsername
		}
		if updatedAt != nil{
			dictionary["updated_at"] = updatedAt
		}
		if username != nil{
			dictionary["username"] = username
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         acceptedTos = aDecoder.decodeObject(forKey: "accepted_tos") as? Bool
         bio = aDecoder.decodeObject(forKey: "bio") as? String
         firstName = aDecoder.decodeObject(forKey: "first_name") as? String
         id = aDecoder.decodeObject(forKey: "id") as? String
         instagramUsername = aDecoder.decodeObject(forKey: "instagram_username") as? String
         lastName = aDecoder.decodeObject(forKey: "last_name") as? AnyObject
         links = aDecoder.decodeObject(forKey: "links") as? CSLink
         location = aDecoder.decodeObject(forKey: "location") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
         portfolioUrl = aDecoder.decodeObject(forKey: "portfolio_url") as? String
         profileImage = aDecoder.decodeObject(forKey: "profile_image") as? CSProfileImage
         totalCollections = aDecoder.decodeObject(forKey: "total_collections") as? Int
         totalLikes = aDecoder.decodeObject(forKey: "total_likes") as? Int
         totalPhotos = aDecoder.decodeObject(forKey: "total_photos") as? Int
         twitterUsername = aDecoder.decodeObject(forKey: "twitter_username") as? String
         updatedAt = aDecoder.decodeObject(forKey: "updated_at") as? String
         username = aDecoder.decodeObject(forKey: "username") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if acceptedTos != nil{
			aCoder.encode(acceptedTos, forKey: "accepted_tos")
		}
		if bio != nil{
			aCoder.encode(bio, forKey: "bio")
		}
		if firstName != nil{
			aCoder.encode(firstName, forKey: "first_name")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if instagramUsername != nil{
			aCoder.encode(instagramUsername, forKey: "instagram_username")
		}
		if lastName != nil{
			aCoder.encode(lastName, forKey: "last_name")
		}
		if links != nil{
			aCoder.encode(links, forKey: "links")
		}
		if location != nil{
			aCoder.encode(location, forKey: "location")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if portfolioUrl != nil{
			aCoder.encode(portfolioUrl, forKey: "portfolio_url")
		}
		if profileImage != nil{
			aCoder.encode(profileImage, forKey: "profile_image")
		}
		if totalCollections != nil{
			aCoder.encode(totalCollections, forKey: "total_collections")
		}
		if totalLikes != nil{
			aCoder.encode(totalLikes, forKey: "total_likes")
		}
		if totalPhotos != nil{
			aCoder.encode(totalPhotos, forKey: "total_photos")
		}
		if twitterUsername != nil{
			aCoder.encode(twitterUsername, forKey: "twitter_username")
		}
		if updatedAt != nil{
			aCoder.encode(updatedAt, forKey: "updated_at")
		}
		if username != nil{
			aCoder.encode(username, forKey: "username")
		}

	}

}
