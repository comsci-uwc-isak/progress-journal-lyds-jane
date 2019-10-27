The Calculator Problem
===

This was my attempt to complete the calculator program:
---

```
if [ $1 == add ]; then
        for arg
        do
                (( sum=$sum+arg ))
        done
        echo "The sum of the arguments is" $sum
elif [ $1 == divide ]; then
        quotient=1
        for arg
        do
                (( quotient=arg/$quotient ))
        done
        echo "The quotient of the arguments is" $quotient
elif [ $1 == subtract ]; then
        for arg
        do
                (( difference=arg-$difference ))
        done
        echo "The difference of the arguments is" $difference
elif [ $1 == multiply ]; then
        product=1
        for arg
        do
                (( product=$product*arg ))
        done
        echo "The product of the arguments is" $product
else
        echo "Error. Please enter 'add', 'divide', 'multiply', or 'subtract', followed by the numbers you would like to compute."
fi

```

The addition and subtraction components work well! However, the multiplication and division parts do not.

I *think* that this is due to a syntax error in assigning the variables.

Whenever I try to multiply numbers, the product is 0.
Whenever I try to divide number, I get the eorror message `calculator.sh: line 19: ((: quotient=arg/0 : division by 0 (error token is " ")`

This leads me to believe that bash is reading the initial product and quotient variables as 0.

