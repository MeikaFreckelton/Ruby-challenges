def decimal_to_binary (decimal)
    # create array
    binary = []

    # return 0 if value given is 0
    if decimal == 0
        return "0"
    end

    # if value is greater than 1 enter into loop
    # in loop: add the remainder of (division of decimal num with 2) to binary array
    # divide decimal by 2
    # continue until value is 1
    # when value is 1, add one to beginning of array, break loop
    # print the array joined as a string
    while decimal >= 1
        binary.unshift(decimal % 2)
        decimal = decimal/2     
        if decimal == 1
            binary.unshift(1)
            break 
        end
    end
	p binary.join.to_i
end

