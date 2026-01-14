begin
    var a = 10;
    var b = 20;

    /* ERROR 1: Missing semicolon */
    a = a + 5

    if (a > 10)
        b = b + 1;
    else
        b = b - 1;
    
    /* ERROR 2: Wrong closing keyword. Used '}' instead of 'ifend' */
    }

    while (a < 50)
        a = a + 1;
    loopend
end
