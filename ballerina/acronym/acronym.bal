function abbreviate(string phrase) returns string {
    string:RegExp splitter = re `[\s-_]+`;
    var firsts = splitter.split(phrase).map(w => w.substring(0,1));
    return "".join(...firsts).toUpperAscii();
}
