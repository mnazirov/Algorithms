/*
Design a parking system for a parking lot. The parking lot has three kinds
of parking spaces: big, medium, and small, with a fixed number of slots for each size.

Implement the ParkingSystem class:
- ParkingSystem(int big, int medium, int small) Initializes object of the ParkingSystem class.
  The number of slots for each parking space are given as part of the constructor.
- bool addCar(int carType) Checks whether there is a parking space of carType
  for the car that wants to get into the parking lot. carType can be of three kinds:
  big, medium, or small, which are represented by 1, 2, and 3 respectively.
  A car can only park in a parking space of its carType. If there is no space available,
  return false, else park the car in that size space and return true.
*/

class ParkingSystem {
    
    var carsType: [Int]

    init(_ big: Int, _ medium: Int, _ small: Int) {
        carsType = [0, big, medium, small]
    }
    
    func addCar(_ carType: Int) -> Bool {
        if carType != 1 && carType != 2 && carType != 3 {
            return false
        } else if carsType[carType] > 0 {
            carsType[carType] -= 1
            return true
        } else {
            return false
        }
    }
}

let obj = ParkingSystem(1, 1, 0)
let ret_1: Bool = obj.addCar(1)
let ret_2: Bool = obj.addCar(2)
let ret_3: Bool = obj.addCar(3)
let ret_4: Bool = obj.addCar(1)
print(ret_1, ret_2, ret_3, ret_2)

// Input ["ParkingSystem", "addCar", "addCar", "addCar", "addCar"] [[1, 1, 0], [1], [2], [3], [1]]
// Output [null, true, true, false, false]
