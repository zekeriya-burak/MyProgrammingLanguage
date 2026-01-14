begin
    var x = int;
    var y = 10;
    var z = 5.5;

    x = 0;

    if (y > 5 and z < 10.0)
        x = x + 1;
    else
        x = x - 1;
    ifend

    while (x < 20)
        x = x + 2;
        y = y * 2;
    loopend

    for (var i = 0; i < 10; i = i + 1)
        z = z + 1.1;
    loopend
end
