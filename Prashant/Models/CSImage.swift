//
//	CSImage.swift
//

import Foundation


class CSImage : NSObject, NSCoding{

	var altDescription : String!
	var categories : [AnyObject]!
	var color : String!
	var createdAt : String!
	var currentUserCollections : [AnyObject]!
	var descriptionField : AnyObject!
	var height : Int!
	var id : String!
	var likedByUser : Bool!
	var likes : Int!
	var links : CSLink!
	var promotedAt : AnyObject!
	var sponsorship : CSSponsorship!
	var updatedAt : String!
	var urls : CSUrl!
	var user : CSSponsor!
	var width : Int!

    override init() {
        
    }

	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		altDescription = dictionary["alt_description"] as? String
		categories = dictionary["categories"] as? [AnyObject]
		color = dictionary["color"] as? String
		createdAt = dictionary["created_at"] as? String
		currentUserCollections = dictionary["current_user_collections"] as? [AnyObject]
		descriptionField = dictionary["description"] as? AnyObject
		height = dictionary["height"] as? Int
		id = dictionary["id"] as? String
		likedByUser = dictionary["liked_by_user"] as? Bool
		likes = dictionary["likes"] as? Int
		if let linksData = dictionary["links"] as? [String:Any]{
			links = CSLink(fromDictionary: linksData)
		}
		promotedAt = dictionary["promoted_at"] as? AnyObject
		if let sponsorshipData = dictionary["sponsorship"] as? [String:Any]{
			sponsorship = CSSponsorship(fromDictionary: sponsorshipData)
		}
		updatedAt = dictionary["updated_at"] as? String
		if let urlsData = dictionary["urls"] as? [String:Any]{
			urls = CSUrl(fromDictionary: urlsData)
		}
		if let userData = dictionary["user"] as? [String:Any]{
			user = CSSponsor(fromDictionary: userData)
		}
		width = dictionary["width"] as? Int
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if altDescription != nil{
			dictionary["alt_description"] = altDescription
		}
		if categories != nil{
			dictionary["categories"] = categories
		}
		if color != nil{
			dictionary["color"] = color
		}
		if createdAt != nil{
			dictionary["created_at"] = createdAt
		}
		if currentUserCollections != nil{
			dictionary["current_user_collections"] = currentUserCollections
		}
		if descriptionField != nil{
			dictionary["description"] = descriptionField
		}
		if height != nil{
			dictionary["height"] = height
		}
		if id != nil{
			dictionary["id"] = id
		}
		if likedByUser != nil{
			dictionary["liked_by_user"] = likedByUser
		}
		if likes != nil{
			dictionary["likes"] = likes
		}
		if links != nil{
			dictionary["links"] = links.toDictionary()
		}
		if promotedAt != nil{
			dictionary["promoted_at"] = promotedAt
		}
		if sponsorship != nil{
			dictionary["sponsorship"] = sponsorship.toDictionary()
		}
		if updatedAt != nil{
			dictionary["updated_at"] = updatedAt
		}
		if urls != nil{
			dictionary["urls"] = urls.toDictionary()
		}
		if user != nil{
			dictionary["user"] = user.toDictionary()
		}
		if width != nil{
			dictionary["width"] = width
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         altDescription = aDecoder.decodeObject(forKey: "alt_description") as? String
         categories = aDecoder.decodeObject(forKey: "categories") as? [AnyObject]
         color = aDecoder.decodeObject(forKey: "color") as? String
         createdAt = aDecoder.decodeObject(forKey: "created_at") as? String
         currentUserCollections = aDecoder.decodeObject(forKey: "current_user_collections") as? [AnyObject]
         descriptionField = aDecoder.decodeObject(forKey: "description") as? AnyObject
         height = aDecoder.decodeObject(forKey: "height") as? Int
         id = aDecoder.decodeObject(forKey: "id") as? String
         likedByUser = aDecoder.decodeObject(forKey: "liked_by_user") as? Bool
         likes = aDecoder.decodeObject(forKey: "likes") as? Int
         links = aDecoder.decodeObject(forKey: "links") as? CSLink
         promotedAt = aDecoder.decodeObject(forKey: "promoted_at") as? AnyObject
         sponsorship = aDecoder.decodeObject(forKey: "sponsorship") as? CSSponsorship
         updatedAt = aDecoder.decodeObject(forKey: "updated_at") as? String
         urls = aDecoder.decodeObject(forKey: "urls") as? CSUrl
         user = aDecoder.decodeObject(forKey: "user") as? CSSponsor
         width = aDecoder.decodeObject(forKey: "width") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if altDescription != nil{
			aCoder.encode(altDescription, forKey: "alt_description")
		}
		if categories != nil{
			aCoder.encode(categories, forKey: "categories")
		}
		if color != nil{
			aCoder.encode(color, forKey: "color")
		}
		if createdAt != nil{
			aCoder.encode(createdAt, forKey: "created_at")
		}
		if currentUserCollections != nil{
			aCoder.encode(currentUserCollections, forKey: "current_user_collections")
		}
		if descriptionField != nil{
			aCoder.encode(descriptionField, forKey: "description")
		}
		if height != nil{
			aCoder.encode(height, forKey: "height")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if likedByUser != nil{
			aCoder.encode(likedByUser, forKey: "liked_by_user")
		}
		if likes != nil{
			aCoder.encode(likes, forKey: "likes")
		}
		if links != nil{
			aCoder.encode(links, forKey: "links")
		}
		if promotedAt != nil{
			aCoder.encode(promotedAt, forKey: "promoted_at")
		}
		if sponsorship != nil{
			aCoder.encode(sponsorship, forKey: "sponsorship")
		}
		if updatedAt != nil{
			aCoder.encode(updatedAt, forKey: "updated_at")
		}
		if urls != nil{
			aCoder.encode(urls, forKey: "urls")
		}
		if user != nil{
			aCoder.encode(user, forKey: "user")
		}
		if width != nil{
			aCoder.encode(width, forKey: "width")
		}

	}

}
