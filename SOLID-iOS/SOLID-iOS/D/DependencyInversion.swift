//
//  DependencyInversion.swift
//  SOLID-iOS
//
//  Created by Jesús Ervin Chapi Suyo on 19/09/25.
//

//High-level modules should not depend on low-level modules. Both should depend on abstractions.


class MySQLDatabase{
    func fetchData(){
        print("Fetching data from MySQL Database")
    }
}

class MongoDBDatabase{
    func fetchData(){
        print("Fetching data from MongoDB Database")
    }
}
//Problem: DataService is tightly coupled to MySQLDatabase.
//If we switch databases, we must modify DataService.
class DataService {
    private let database = MySQLDatabase ()
    func getData(){
        database.fetchData()
    }
}


//Solution

protocol DatabaseProtocol {
    func fetchData()
}

class MySQLDatabaseV2: DatabaseProtocol {
    func fetchData() {
        print("Fetching data from MySQL Database")
    }
}

class MongoDBDatabaseV2: DatabaseProtocol {
    func fetchData() {
        print("Fetching data from MongoDB Database")
    }
}

class DataServiceV2 {
    private let database: DatabaseProtocol
    
    init(database: DatabaseProtocol = MongoDBDatabaseV2()) {
        self.database = database
    }
    
    func getData() {
        database.fetchData()
    }
}


