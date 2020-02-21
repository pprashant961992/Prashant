//
//	CSItem.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class CSItem : NSObject, NSCoding{

	var createdById : Int!
	var createdOn : String!
	var disabled : Bool!
	var enabledDisabledOn : String!
	var id : Int!
	var modifiedById : Int!
	var modifiedOn : String!
	var productId : Int!
	var productName : String!
	var quantity : Int!
	var reason : String!
	var requestedById : Int!
	var requestedByName : AnyObject!
	var requestedDate : String!
	var status : Int!
	var statusName : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		createdById = dictionary["createdById"] as? Int
		createdOn = dictionary["createdOn"] as? String
		disabled = dictionary["disabled"] as? Bool
		enabledDisabledOn = dictionary["enabledDisabledOn"] as? String
		id = dictionary["id"] as? Int
		modifiedById = dictionary["modifiedById"] as? Int
		modifiedOn = dictionary["modifiedOn"] as? String
		productId = dictionary["productId"] as? Int
		productName = dictionary["productName"] as? String
		quantity = dictionary["quantity"] as? Int
		reason = dictionary["reason"] as? String
		requestedById = dictionary["requestedById"] as? Int
		requestedByName = dictionary["requestedByName"] as? AnyObject
		requestedDate = dictionary["requestedDate"] as? String
		status = dictionary["status"] as? Int
		statusName = dictionary["statusName"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if createdById != nil{
			dictionary["createdById"] = createdById
		}
		if createdOn != nil{
			dictionary["createdOn"] = createdOn
		}
		if disabled != nil{
			dictionary["disabled"] = disabled
		}
		if enabledDisabledOn != nil{
			dictionary["enabledDisabledOn"] = enabledDisabledOn
		}
		if id != nil{
			dictionary["id"] = id
		}
		if modifiedById != nil{
			dictionary["modifiedById"] = modifiedById
		}
		if modifiedOn != nil{
			dictionary["modifiedOn"] = modifiedOn
		}
		if productId != nil{
			dictionary["productId"] = productId
		}
		if productName != nil{
			dictionary["productName"] = productName
		}
		if quantity != nil{
			dictionary["quantity"] = quantity
		}
		if reason != nil{
			dictionary["reason"] = reason
		}
		if requestedById != nil{
			dictionary["requestedById"] = requestedById
		}
		if requestedByName != nil{
			dictionary["requestedByName"] = requestedByName
		}
		if requestedDate != nil{
			dictionary["requestedDate"] = requestedDate
		}
		if status != nil{
			dictionary["status"] = status
		}
		if statusName != nil{
			dictionary["statusName"] = statusName
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         createdById = aDecoder.decodeObject(forKey: "createdById") as? Int
         createdOn = aDecoder.decodeObject(forKey: "createdOn") as? String
         disabled = aDecoder.decodeObject(forKey: "disabled") as? Bool
         enabledDisabledOn = aDecoder.decodeObject(forKey: "enabledDisabledOn") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         modifiedById = aDecoder.decodeObject(forKey: "modifiedById") as? Int
         modifiedOn = aDecoder.decodeObject(forKey: "modifiedOn") as? String
         productId = aDecoder.decodeObject(forKey: "productId") as? Int
         productName = aDecoder.decodeObject(forKey: "productName") as? String
         quantity = aDecoder.decodeObject(forKey: "quantity") as? Int
         reason = aDecoder.decodeObject(forKey: "reason") as? String
         requestedById = aDecoder.decodeObject(forKey: "requestedById") as? Int
         requestedByName = aDecoder.decodeObject(forKey: "requestedByName") as? AnyObject
         requestedDate = aDecoder.decodeObject(forKey: "requestedDate") as? String
         status = aDecoder.decodeObject(forKey: "status") as? Int
         statusName = aDecoder.decodeObject(forKey: "statusName") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if createdById != nil{
			aCoder.encode(createdById, forKey: "createdById")
		}
		if createdOn != nil{
			aCoder.encode(createdOn, forKey: "createdOn")
		}
		if disabled != nil{
			aCoder.encode(disabled, forKey: "disabled")
		}
		if enabledDisabledOn != nil{
			aCoder.encode(enabledDisabledOn, forKey: "enabledDisabledOn")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if modifiedById != nil{
			aCoder.encode(modifiedById, forKey: "modifiedById")
		}
		if modifiedOn != nil{
			aCoder.encode(modifiedOn, forKey: "modifiedOn")
		}
		if productId != nil{
			aCoder.encode(productId, forKey: "productId")
		}
		if productName != nil{
			aCoder.encode(productName, forKey: "productName")
		}
		if quantity != nil{
			aCoder.encode(quantity, forKey: "quantity")
		}
		if reason != nil{
			aCoder.encode(reason, forKey: "reason")
		}
		if requestedById != nil{
			aCoder.encode(requestedById, forKey: "requestedById")
		}
		if requestedByName != nil{
			aCoder.encode(requestedByName, forKey: "requestedByName")
		}
		if requestedDate != nil{
			aCoder.encode(requestedDate, forKey: "requestedDate")
		}
		if status != nil{
			aCoder.encode(status, forKey: "status")
		}
		if statusName != nil{
			aCoder.encode(statusName, forKey: "statusName")
		}

	}

}