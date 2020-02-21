//
//	CSPurchaseRequestResponse.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class CSPurchaseRequestResponse : NSObject, NSCoding{

	var items : [CSItem]!
	var pageNo : Int!
	var size : Int!
	var totalRecords : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		items = [CSItem]()
		if let itemsArray = dictionary["items"] as? [[String:Any]]{
			for dic in itemsArray{
				let value = CSItem(fromDictionary: dic)
				items.append(value)
			}
		}
		pageNo = dictionary["pageNo"] as? Int
		size = dictionary["size"] as? Int
		totalRecords = dictionary["totalRecords"] as? Int
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if items != nil{
			var dictionaryElements = [[String:Any]]()
			for itemsElement in items {
				dictionaryElements.append(itemsElement.toDictionary())
			}
			dictionary["items"] = dictionaryElements
		}
		if pageNo != nil{
			dictionary["pageNo"] = pageNo
		}
		if size != nil{
			dictionary["size"] = size
		}
		if totalRecords != nil{
			dictionary["totalRecords"] = totalRecords
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         items = aDecoder.decodeObject(forKey :"items") as? [CSItem]
         pageNo = aDecoder.decodeObject(forKey: "pageNo") as? Int
         size = aDecoder.decodeObject(forKey: "size") as? Int
         totalRecords = aDecoder.decodeObject(forKey: "totalRecords") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if items != nil{
			aCoder.encode(items, forKey: "items")
		}
		if pageNo != nil{
			aCoder.encode(pageNo, forKey: "pageNo")
		}
		if size != nil{
			aCoder.encode(size, forKey: "size")
		}
		if totalRecords != nil{
			aCoder.encode(totalRecords, forKey: "totalRecords")
		}

	}

}