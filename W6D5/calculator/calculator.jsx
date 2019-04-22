import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = { num1: "", num2: "", result: 0 };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.clear = this.clear.bind(this);
    this.adding = this.adding.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.exponent = this.exponent.bind(this);
  }

  //your code here
  setNum1(e){
    const num1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({num1});
  }
  setNum2(e){
    const num2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({num2});
  }

  clear(e){
    e.preventDefault();
    this.setState({ num1: "", num2: "", result: 0 });
  }

  adding(e){
    e.preventDefault();
    const result = this.state.num1 + this.state.num2;
    this.setState({ result });
  }

  subtract(e){
    e.preventDefault();
    const result = this.state.num1 - this.state.num2;
    this.setState({ result });
  }

  multiply(e){
    e.preventDefault();
    const result = this.state.num1 * this.state.num2;
    this.setState({ result });
  }

  divide(e){
    e.preventDefault();
    const result = this.state.num1 / this.state.num2;
    this.setState({ result });
  }

  exponent(e){
    e.preventDefault();
    const result = Math.pow(this.state.num1, this.state.num2);
    this.setState({ result });
  }

  render(){
    const { num1, num2, result } = this.state;
    return (
      <div>
        <h1>{this.state.result}</h1>

        <input onChange={this.setNum1} value={num1}/>
        <input onChange={this.setNum2} value={num2}/>
        <button onClick={this.clear}>Clear</button>
        <br/>
        <button onClick={this.adding}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>x</button>
        <button onClick={this.divide}>/</button>
        <button onClick={this.exponent}>^</button>

      </div>
    );
  }
}

export default Calculator;
