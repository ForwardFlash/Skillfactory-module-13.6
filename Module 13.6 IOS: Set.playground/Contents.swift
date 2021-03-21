import PlaygroundSupport
import UIKit
import Foundation

// Кортежи
let user1 = (name: "Иван", surname: "Иванов", age: 25)
let user2 = (name: "Василий", surname: "Васильев", age: 30)

// значения кортежа по индексу и по параметру
print("Возраст пользователя: \(user1.age)")
print ("Имя пользователя: \(user2.0)")
print ("__________________________________________________________________")

// Массив количества дней в месяцах
let daysInMonths = [31,28,31,30,31,30,31,31,30,31,30,31]

// Вывод количества дней в месяцах
for index in 0..<daysInMonths.count {
    let month = daysInMonths[index]
    print ("Количество дней в \(index+1) месяце  -  \(month)    (данные из массива) ")
}
print ("__________________________________________________________________")

// Массив с названиями месяцев
let monthsNames = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

// Вывод названия и дней месяца из обоих массивов
for index in 0..<daysInMonths.count {
    let month = daysInMonths[index]
    let monthName = monthsNames[index]
    print ("Количество дней в месяце \(monthName) -  \(month) (данные из двух массивов) ")
}
print ("__________________________________________________________________")
// Массив кортежей
let month1 = (month: "Январь", daysNum: 31)
let month2 = (month: "Февраль", daysNum: 28)
let month3 = (month: "Март", daysNum: 31)
let month4 = (month: "Апрель", daysNum: 30)
let month5 = (month: "Май", daysNum: 31)
let month6 = (month: "Июнь", daysNum: 30)
let month7 = (month: "Июль", daysNum: 31)
let month8 = (month: "Август", daysNum: 31)
let month9 = (month: "Сентябрь", daysNum: 30)
let month10 = (month: "Октябрь", daysNum: 31)
let month11 = (month: "Ноябрь", daysNum: 30)
let month12 = (month: "Декабрь", daysNum: 31)
let months = [month1, month2,month3,month4,month5, month6,month7,month8,month9,month10,month11,month12]
// вывод из массива кортежей
months.enumerated().forEach {
    print( "Количество дней в месяце", $1.month, " - ", $1.daysNum, "(данные из массива кортежей)")
}
print ("__________________________________________________________________")
// вывод из масива кортежей в обратном порядке
months.reversed().enumerated().forEach {
    print( "Количество дней в месяце", $1.month, " - ", $1.daysNum, "(данные в обратном порядке)")
}
print ("__________________________________________________________________")
var daysToEnd:Int = 0
// Предположим что указана текущая дата.
let components = Calendar.current.dateComponents([.day, .month, .year], from: Date())
// разбиваем на компоненты и переводим в числовой формат
if let day = components.day, let month = components.month{
    let selectedDayNum:Int = Int(day)
    let selectedMonthNum:Int = Int(month)
    // считаем количество дней до конца года с указанной даты
    for (index, (_, days)) in months.enumerated(){
        if index+1 == selectedMonthNum {
            daysToEnd = days - selectedDayNum
        }
        if index+1 > selectedMonthNum {
            daysToEnd = daysToEnd + days
        }
    }
}
print("Количество дней до конца года - \(daysToEnd)")



print ("__________________________________________________________________")
// Журнал со студентами
var students = ["Иван Иванов": 4, "Василий Васильев": 5, "Петр Петров": 1, "Сергей Сергеев": 2]

// обновляем значение для студента
students.updateValue(5, forKey: "Иван Иванов")

// Добавляем студента
students["Данил Данилов"] = 4
students["Юрий Юрьев"] = 3
students["Виктор Викторов"] = 5

// Вывод данных по оценкам
// поздравления и отчисление по результатам
var AverageGrade:Float = 0
for (student, grade) in students {
    if grade < 3{
        print(student, "     Нам жаль, \(student), но вы отчислены! Ваша текущая оценка - \(grade)" )
        students.removeValue(forKey: student)
    }
    else{
        AverageGrade += Float(grade)
        print(student, "     Поздравляем вас, \(student) с успешной учебой! Ваша текущая оценка - \(grade)")
    }
}
// вывод среднего значения
print ("__________________________________________________________________")
AverageGrade = AverageGrade / Float(students.count)
print ("Средний балл за экзамен по группе - \(AverageGrade)")
// контроль содержимого журнала
students.self
