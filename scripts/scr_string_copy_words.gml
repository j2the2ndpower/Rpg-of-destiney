///scr_string_copy_words(string, index, count);
var str = argument0;
var index = argument1;
var count = ceil(argument2);

var char = string_char_at(str, count);
while (char != " " and char != "") {
    count+= 1;
    char = string_char_at(str, count);
}

var return_str = string_copy(str, index, count);
return return_str;
