var args = process.argv;

if (args.length < 3) {
    console.log("Please enter an integer value");
    process.exit();
}

var n = args[2];

try {
    var f = fact(n);
    console.log("Fact(" + n + ")= " + f );
}
catch(error) {
    console.log(error);
}
finally {
    console.log("That's all!");
}

function fact(i) {
    if (i < 0) throw "Negative numbers don't have a factorial!";
    if (i > 5) throw "The number is too big!";

    if (i == 0) return 1;
    return i * fact(i-1);
}
