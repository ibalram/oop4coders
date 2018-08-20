var args = process.argv;

if (args.length < 3) {
    console.log("Please enter an integer value");
    process.exit();
}

var n = args[2];
console.log("Fact(" + n + ")= " + fact(n) );

function fact(i) {
    if (i <= 0) return 1;
    return i * fact(i-1);
}
