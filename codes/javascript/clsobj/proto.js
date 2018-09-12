#!/usr/bin/env node

"use strict";

function Person(){
    this.talk = function(){}
}

function Machine(){}
Machine.prototype.talk = function(){}

var p1 = new Person(),
    p2 = new Person();

var m1 = new Machine(),
    m2 = new Machine();

console.log("p1.talk == p2.talk", p1.talk == p2.talk);
console.log("m1.talk == m2.talk", m1.talk == m2.talk);
