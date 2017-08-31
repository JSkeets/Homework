function madLib(verb,adjective,noun) {

  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`;

}


function isSubString(string,substring) {
  return string.includes(substring);
}

function fizzBuzz(array) {
  let fizzArr = [];
  array.forEach(el => {
    if (((el % 3)===0) ^((el %5) ===0 ) )
      fizzArr.push(el);
  });
  return fizzArr;
}

function isPrime(num) {
  if (num <2) {return false;}
  for (let i = 2;i < num  ; i++) {
    if (num % i === 0 ){
      return false;
    }
  }
  return true;
  }


function sumNPrimes(num) {
    let sum = 0;
    let i = 2 ;
    let count = 0;
  while (count< num) {
      if (isPrime(i)){
        count ++;
        sum += i;
      }
      i++;
  }
  return sum;

}


function printCallBack(name){

  console.log(`Mx. ${name} Jingleheimer Schmidt`);
}

function titleize(names, callback) {
  let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(titleized);
};

// invoking the function
titleize(["Mary", "Brian", "Leo"], (names) => {
  names.forEach(name => console.log(name));
});

// Phase II - Constructors, Prototypes, and `this`

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function () {
  this.height = this.height + 12;
};

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function () {
  trickIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[trickIndex]}!`);
};

// Phase III - Function Invocation

Elephant.paradeHelper = function (elephant) {
  console.log(`${elephant.name} is trotting by!`);
};



// Phase IV - Closures

function dinerBreakfast() {
  let order = "I'd like cheesy scrambled eggs please.";
  console.log(order);

  return function (food) {
    order = `${order.slice(0, order.length - 8)} and ${food} please.`;
    console.log(order);
  };
}
