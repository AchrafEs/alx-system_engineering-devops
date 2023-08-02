`0x06-regular_expressions`

Regular expressions (regex or regexp) are powerful tools used for pattern matching and manipulation of text.
They are supported in many programming languages, text editors, and other applications.
Regular expressions provide a concise and flexible way to search, match, and extract data from strings based
on specific patterns.

Here's a breakdown of some common components and concepts in regular expressions:

1. `Literals:` Characters that match themselves in the text. For example, the regular expression "hello" will
match the string "hello" in the input text.

2. `Metacharacters:` Special characters with reserved meanings that enable more complex pattern matching.
Some common metacharacters are:

	`.`(dot): Matches any single character except a newline.

	`*`: Matches zero or more occurrences of the preceding character or group.

	`+`: Matches one or more occurrences of the preceding character or group.

	`?`: Matches zero or one occurrence of the preceding character or group.

	`^`: Matches the start of a line (or string, depending on the context).

	`$`: Matches the end of a line (or string, depending on the context).

	`|`: (pipe): Acts as an OR operator for alternatives. For example, `a|b` matches either 'a' or 'b'.

3. `Character Classes:` Square brackets `[ ]` are used to define character classes. They match any single character
from the set of characters listed inside the brackets. For example, [aeiou] matches any vowel.

4. `Quantifiers:` Used to specify the number of occurrences of a character or group.

	`{n}`: Matches exactly 'n' occurrences of the preceding character or group.

	`{n,}`: Matches 'n' or more occurrences of the preceding character or group.

	`{n,m}`: Matches between 'n' and 'm' occurrences of the preceding character or group.

5. `Special Sequences:` Predefined sequences that represent common character groups.

	`\d`: atches any digit (equivalent to [0-9]).

	`\w`: Matches any word character (alphanumeric characters plus underscore).

	`\s`: Matches any whitespace character (space, tab, newline).

	`\D`, `\W`,`\S`: Negations of \d, \w, and \s, respectively.

6. `Grouping:` Parentheses () are used for grouping characters or expressions together. They allow applying
quantifiers and other operations to a group of characters.

7. `Anchors:` Special metacharacters used to match positions rather than characters.

	`\b`: Matches a word boundary.

	`\B`: Matches a position that is not a word boundary.

	`^`: Matches the start of a line or string.

	`$`: Matches the end of a line or string.

For example, the regular expression `^\d{3}-\d{2}-\d{4}$` would match a string that represents a Social Security
Number (SSN) in the format `XXX-XX-XXXX`, where X is a digit.

Regular expressions are incredibly versatile, but they can also be quite complex. It's essential to understand their
syntax and use cases before applying them to your specific tasks. Various online resources and tools are available
to help you test and experiment with regular expressions.
