{ count[NF]++ }                 # store count of lines by field number
                                # (e.g. count[4] is number of lines
                                # with 4 fields)

END {
    # find and print the field number with maximum number of lines
    maxc = 0
    maxf = 0
    for (nf in count) {
        if (maxc < count[nf]) {
            maxf = nf
            maxc = count[nf]
        }
    }
    print maxf
}
