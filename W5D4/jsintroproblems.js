function mysteryScoping1() {
  var x = 'out of block';
  if (true){
    var x = 'in block';
    console.log(x)
  }
  console.log(x)
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block'
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  x = 'out of block again';
  console.log(x);
}

function madLib(verb, adjective, noun) {
  let vUp = verb.toUpperCase()
  let aUp = adjective.toUpperCase()
  let nUp = noun.toUpperCase()
  console.log(`We shall ${vUp} the ${aUp} ${nUp}.`)
}

function isSubstring(searchString, subString) {
  let new_str 
}

