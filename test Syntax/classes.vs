class animal {
    str? sound = null
    func talk() => cmd.print("...")
}
class cat : animal {
    init() => sound = "miao"
    override func talk() => cmd.print("hi {sound!} im cat {sound!} {sound!}!!!")
}

func main() {
    animal[] animals = animal[]
    let dog = animal()
    dog.talk()
}