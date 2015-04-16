package kargaroo

import sun.security.util.Password

class User {
    String userName
    String password
    String firstName
    String lastName
    Date birthDay
    Integer DNI
    Integer phone
    String mail

    //static  hasOne = [addres : Address]


    static constraints = {
        userName(blank: false,unique: true,minSize: 5,maxSize: 20)
        password(blank:false, minSize: 5)
        firstName(blank: false)
        lastName(blank: false)
        birthDay(nullable: false)
        DNI(nullable: true,unique: true)
        phone(nullable: true)
        mail(email: true)

    }
}
