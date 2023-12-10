---
layout: notebook
title: a-taste-of-python
permalink: /a-taste-of-python
---

# A taste of Python

```{attention}
Finnish university students are encouraged to use the CSC Notebooks platform.<br/>
<a href=" https://notebooks.csc.fi/"><img alt="CSC badge" src="https://img.shields.io/badge/launch-CSC%20notebook-blue.svg" style="vertical-align:text-bottom"></a>

Others can follow the lesson and fill in their student notebooks using Binder.<br/>
<a href="https://mybinder.org/v2/gh/geo-python/notebooks/master?urlpath=lab/tree/L1/a-taste-of-python.ipynb"><img alt="Binder badge" src="https://img.shields.io/badge/launch-binder-red.svg" style="vertical-align:text-bottom"></a>
```

We will start our Python lesson by learning a bit of the basic operations you can perform using Python.

## General information

### Sources

This lesson is inspired by the [Programming in Python lessons](http://swcarpentry.github.io/python-novice-inflammation/) from the [Software Carpentry organization](http://software-carpentry.org).

### About this document

This is a [Jupyter Notebook](https://jupyter.org/). This particular notebook is designed to introduce you to a few of the basic concepts of programming in Python. The contents of this document are divided into cells, which can contain Markdown-formatted text, Python code, or raw text. You can execute a snippet of code in a cell by pressing <kbd>Shift</kbd> + <kbd>Enter</kbd>. Try this out with the examples below.

### Getting started

Presumably if you have made it this far, you have already opened this Jupyter Notebook using Binder, the CSC notebooks server, or on your own computer. If not, you can launch [Jupyter Lab](http://jupyterlab.readthedocs.io/en/stable/) by clicking on the launch button at the top of this document, using the launch Binder icon at the top of the page, or by typing the following in a terminal window.

```bash
$ jupyter lab
```

This should open a new Jupyter Lab session from which you can open this document by navigating its location in the **Files** tab and double clicking on it. After that you should be ready to go.

## Variables, math and functions

We will start our Python lesson by learning a bit of the basic operations you can perform using Python.

### Simple Python math

Python can be used as a simple calculator. Remember, you can press <kbd>Shift</kbd> + <kbd>Enter</kbd> to execute the code in the cells below. Try it out by typing `1 + 1` or `5 * 7` and see what you get.

```python
1 + 1
```

```python
5 * 7
```

If you want to edit and re-run some code, simply make changes to the cell and press <kbd>Shift</kbd> + <kbd>Enter</kbd> to execute the modified code.

### Functions

You can use Python for more advanced math by using a {term}`function (funktio)`. Functions are pieces of code that perform a single action such as printing information to the screen (e.g., the `print()` function). Functions exist for a huge number of operations in Python.

Let's try out a few simple examples using functions to find the sine or square root of a value. You can type `sin(3)` or `sqrt(4)` into the cells below to test this out.

```python
sin(3)
```

```python
sqrt(4)
```

Wait, what? Python can’t calculate square roots or do basic trigonometry? Of course it can, but we need one more step.

### Math operations

The list of basic arithmetic operations that can be done by default in Python is in the table below.

| Operation      | Symbol | Example syntax | Returned value |
| -------------- | ------ | -------------- | -------------- |
| Addition       | `+`    | `2 + 2`        | `4`            |
| Subtraction    | `-`    | `4 - 2`        | `2`            |
| Multiplication | `*`    | `2 * 3`        | `6`            | 
| Division       | `/`    | `4 / 2`        | `2`            |
| Exponentiation | `**`   | `2**3`         | `8`            |

For anything more advanced, we need to load a {term}`module (moduuli)` or {term}`library (ohjelmakirjasto)`. For math operations, this module is called *math* and it can be loaded by typing `import math`. Try that below.

```python
import math
```

Now that we have access to functions in the math module, we can use it by typing the module name, a period (dot), and the the name of the function we want to use. For example, `math.sin(3)`. Try this with the sine and square root examples from above.

```python
math.sin(3)
```

```python
math.sqrt(4)
```

That's more like it!

Let's summarize what we've just seen with modules:

1. A *module* is a group of code items such as functions that are related to one another. Individual modules are often in a group referred to as a *library*.

2. Modules can be loaded using `import`. Functions that are part of the module `modulename` can then be used by typing `modulename.functionname()`. For example, `sin()` is a function that is part of the `math` module, and used by typing `math.sin()` with some number between the parentheses.

3. Within a given Jupyter Notebook the variables you define earlier in the notebook will be available for use in the cells that follow as long as you have already executed the cells.

Note that modules may also contain constants such as `math.pi`.
Type this in the cell below to see the value of the contant `math.pi`.

```python
math.pi
```

#### Check your understanding

Use the empty Python cell below to calculate the sine of pi. What value do you expect for this calculation? Did you get the expected result?

```python
# Here's the solution
math.sin(math.pi)
```

### Combining functions

Functions can also be combined. The `print()` function displays values within the parentheses as text on the screen. Below, try printing the value of the square root of four.

```python
print(math.sqrt(4))
```

You can also combine text with other calculated values using the `print()` function. For example, `print('Two plus two is', 2+2)` would generate text reading 'Two plus two is 4'. Combine the `print()` function with the `math.sqrt()` function in the cell below to produce text that reads 'The square root of 4 is 2.0'.

```python
print("The square root of 4 is", math.sqrt(4))
```

### Variables

A {term}`variable (muuttuja)` can be used to store values calculated in expressions and used for other calculations. Assigning value to variables is straightforward. To assign a value, you simply type `variable_name = value`, where `variable_name` is the name of the variable you wish to define. In the cell below, define a variable called `temp_celsius`, assign it a value of '10.0', and then print that variable value using the `print()` function. Note that you should do this on two separate lines.

```python
temp_celsius = 10.0
print(temp_celsius)
```

As we did above, you can combine text and even use some math when printing out variable values. The idea is similar to the examples of adding 2+2 or calculating the square root of four from the previous section. In the cell below, print out the value of `temp_celsius` in degrees Fahrenheit by multiplying `temp_celsius` by 9/5 and adding 32. This should be done within the `print()` function to produce output that reads 'Temperature in Fahrenheit: 50.0'.

```python
print("Temperature in Fahrenheit:", 9 / 5 * temp_celsius + 32)
```

#### Check your understanding

Use the empty Python cell below to define a variable and print its value to the screen using the `print()` function.
The variable value can be anything you like, and you can even consider defining several variables and printing them out together.
Consider using pothole_case_naming for your variable name.

```python
# Here's a solution
part1 = "I like"
part2 = "Python!"
print(part1, part2)
```

### Updating variables

Values stored in variables can also be updated. Let's redefine the value of `temp_celsius` to be equal to 15.0 and print its value in the cells below.

```python
temp_celsius = 15.0
```

```python
print("temperature in Celsius is now:", temp_celsius)
```

```{warning}
If you try to run some code that accesses a variable that has not yet been defined you will get a `NameError` message. Try printing out the value of the variable `tempFahrenheit` using the `print()` function in the cell below.
```

```python
print("Temperature in Celsius:", 5 / 9 * (tempFahrenheit - 32))
```

```{note}
One of the interesting things here is that if we define the undefined variable in a cell lower down in the notebook and execute that cell, we can return to the earlier cell and the code should now work. That was a bit of a complicated sentence, so let's test this all out. First, let's define a variable called `tempFahrenheit` in the cell below and assign it to be equal to `9/5 * temp_celsius + 32`, the conversion factor from temperatures in Celsius to Fahrenheit. Then, return to the cell above this text and run that cell again. See how the error message has gone away? `tempFahrenheit` has now been defined and thus the cell above no longer generates a `NameError` when the code is executed.

Also, the number beside the cell, for example `In [2]`, tells you the order in which the Python cells have been executed. This way you can see a history of the order in which you have run the cells.
```

```python
tempFahrenheit = 9 / 5 * temp_celsius + 32
```

Just to check their current values, print out the values of `temp_celsius` and `tempFahrenheit` in the cell below.

```python
print("temperature in Celsius:", temp_celsius, "and in Fahrenheit:", tempFahrenheit)
```

### Variable values

Changing the value of a variable does not affect other variable values. Let's redefine `temp_celsius` to be equal to 20.0, and print out the values of `temp_celsius` and `tempFahrenheit`.

```python
temp_celsius = 20.0
print(
    "temperature in Celsius is now:",
    temp_celsius,
    "and temperature in Fahrenheit is still:",
    tempFahrenheit,
)
```

### Data types

A {term}`data type (tietotyyppi)` determines the characteristics of data in a program.
There are 4 basic data types in Python as shown in the table below.

| Data type name | Data type            | Example    |
| -------------- | -------------------- | ---------- |
| `int`          | Whole integer values | `4`        |
| `float`        | Decimal values       | `3.1415`   |
| `str`          | Character strings    | `'Hot'`    |
| `bool`         | True/false values    | `True`     |

The data type can be found using the `type()` function.
As you will see, the data types are important because some are not compatible with one another.

Let's define a variable `weatherForecast` and assign it the value `'Hot'`. After this, we can check its data type using the `type()` function.

```python
weatherForecast = "Hot"
type(weatherForecast)
```

Let's also check the type of `tempFahrenheit`. What happens if you try to combine `tempFahrenheit` and `weatherForecast` in a single math equation such as `tempFahrenheit = tempFahrenheit + 5.0 * weatherForecast`?

```python
type(tempFahrenheit)
tempFahrenheit = tempFahrenheit + 5.0 * weatherForecast
```

In this case we get at `TypeError` because we are trying to execute a math operation with data types that are not compatible. There is no way in Python to multpily decimal numbers with a character string.

#### Check your understanding

As it turns out, you can do some math with character strings in Python. Define two variables and assign them character string values in the Python cell below. What happens if you try to add two character strings together? Can you subtract them? Which other math operations work for character strings?

```python
# Here is an example solution

first_variable = "Python"
second_variable = " is cool!"

print(first_variable + second_variable)
print(5 * first_variable)
print(first_variable - second_variable)
```

### Character input (*optional*)

Python and Jupyter notebooks also let us interact in another way with our code! The built-in [input()](https://docs.python.org/3.6/library/functions.html?highlight=input#input) function reads a line from input and returns it as a string.

Let's try it out. To start, we can define a varaible `place` and assign its value using the `input()` function to prompt the user for the location where they are from (e.g., `input('Where are you from? ')`). When the cell is run, the user (you) can type in their response. Once `place` is defined, we can say something good about where the user is from (e.g., `print(place, 'is a nice place!')`).

```{warning}
Jupyter Notebooks might sometimes get stuck when using the `input()` function. If this happens, restart the kernel and run the cell again (**Kernel** -> **Restart Kernel...**).

Also, we realize these cells **will not render properly on the course website**, but should work just fine in Binder or using the CSC notebooks. Sorry.
```

```python
place = input("Where are you from? ")
print(place, "is a nice place!")
```

Let's try another example in the cell below using the similar approach. Ask the user for a temperature in Celsius using the `input()` function and print the input value to the screen.

```python
temp_celsius = input("How cold can it be in Vantaa (in degrees Celsius)? ")
print(temp_celsius, "degrees Celsius is quite cold!")
```

What is the data type of variable `place`? What about the other variable you defined? Check their data types using the cell below.

```python
print(type(place))
print(type(temp_celsius))
```

What happens when you try to convert your Celsius temperature value to Fahrenheit using the equation from earlier in the lesson?

```python
tempFahrenheit = 9 / 5 * temp_celsius + 32
```
