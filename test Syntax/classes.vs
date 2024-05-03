class animal {
    str? sound = null
    func talk() => cmd.print("...")
}
class cat : animal {
    init() => sound = "miao"
    override func talk() => cmd.print("hi {sound!} im cat {sound!} {sound!}!!!")
}

func main() {
    let animals = animal[]
    let dog = animal()
    dog.talk()
    let cute = cat()
    cute.talk()
    /*
    output:
    ...
    hi miao im cat miao miao!!!
    */
}