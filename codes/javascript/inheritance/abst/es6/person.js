class Person {
    constructor() {
        if (this.constructor == Person) {
            throw new Error("Cannot instanciate abstract class");
        }
    }

    info() {
        console.log("====INFO===");
        this.info2();
    }

    info2(){
        throw new Error("Cannot call abstract method");
    }
}

module.exports = Person;
