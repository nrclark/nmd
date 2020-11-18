import os
import system
import json

proc read_json(filename: string): JsonNode =
    return parseJson(readFile(filename))

proc main() = 
    #paramStr[1]
    if paramCount() != 1:
        write(stderr, "Error: incorrect number of arguments.\n")
        quit(QuitFailure)

    var crap = read_json(paramStr(1))

main()