protocol Animal {
    func sound()
}

struct Dog: Animal {
    func sound() {
        print("obul bov")
    }
}

let obul = Dog()

obul.sound()