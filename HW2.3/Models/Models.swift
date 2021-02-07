//
//  Models.swift
//  HW2.3
//
//  Created by Сергей Корнев on 06.02.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//


// MARK: - Person
struct Person {
    let name: String
    let surname: String
    let photo: String
    var info: AnotherInfo
}


// MARK: - Person Information
struct AnotherInfo {
    let resume: Resume
    let aboutMe: String
    let hobby: String
}

struct Resume {
    let age: Int
    let car: Bool
    let currentExperience: Int
    let totalExperience: Int
    let experience: String
}

// MARK: - User
struct User {
    let userName: String
    let password: String
    let person: Person
}

extension User {
    
    static func getData() -> User {
        
        let resume = Resume(
            age: 37,
            car: true,
            currentExperience: 2,
            totalExperience: 20,
            experience: """
            2006 г. - 2010 г. : ЗАО "Ойл Трейд Ко", официальный дистрибьютор смазочных материалов Mobil, в должности регионального менеджера по продажам

            2015 г. - 2018 г. : Компания "Bindli", сеть магазинов цифровой техники, в должности управляющего

            2018 г. - настоящее время : Технический центр "Агрит", продажа сельскохозяйственной техники, в должности менеджера по продажам
            """
        )
        
        let anotherInfo = AnotherInfo(
            resume: resume,
            aboutMe: """
            Моё имя Сергей Корнев, возраст 37 лет, родился в г. Лебедянь, Лебедянского района, Липецкой области. Женат, двое детей. В настоящее время проживаю с семьёй в г. Рязань, Рязанской области, тружусь в сфере сельского хозяйства, а именно реализовываю в нашем регионе технику сельскохозяйстенного назначения (тракторы, комбайны, опрыскиватели и т. д.)
            """,
            hobby: """
            Увлекаюсь ездой не велосипеде, интересуюсь альтернативной историей и энергетикой, люблю отдых на природе, вкусно поесть, хорошую музыку и конечно Apple 🍎
            """
        )
        
        let person = Person(
            name: "Сергей",
            surname: "Корнев",
            photo: "kornev.jpg",
            info: anotherInfo
        )
        
        return User(userName: "sk", password: "1804", person: person)
    }
}










