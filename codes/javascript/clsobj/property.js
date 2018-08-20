function Rectangle() {
    this._width = 0;
    this._height = 0;
    this.info = function() {
        console.log("width: ", this._width, ", height: ", this._height);
    };
}

Object.defineProperties(Rectangle.prototype, {
    w: {
        get: function () {
            return this._width + 2;
        },
        set: function (value) {
            if (value < this._width) {
                this._height = value;
            }
            else {
                this._height = this._width;
                this._width = value;
            }
        }
    },
    h: {
        get: function () {
            return this._height + 1;
        }
    }
});

var r = new Rectangle();
r.w = 50;
r.w = 20;
r.info();
console.log("w: ", r.w, ", h: ", r.h);
