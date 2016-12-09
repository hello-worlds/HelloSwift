//: Playground - noun: a place where people can play

public class cricket {
    private func print() {
        print("Welcome to Swift Super Class")
    }
}

internal class tennis: cricket  {
    override internal func print() {
        print("Welcome to Swift Sub Class")
    }
}

let cricinstance = cricket()
cricinstance.print()

let tennisinstance = tennis()
tennisinstance.print()
