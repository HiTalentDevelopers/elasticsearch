## Explanation for the Hunspell Dictionary

There is an english dictionary merged from two public hunspell packages' dictionaries:

1. https://pypi.org/project/cyhunspell/ (62118 words)
2. https://github.com/zverok/spylls (49568 words)

In the .dic files each entry is in the form of: [word]/[affixes]. When merging these dicts, we find the union set of the words, and for the same word, we find the union set of the affixes, in order to construct a dictionary that recognize as many words as possible.

The explanation for the format of the rules could be found here: 

https://superuser.com/questions/235487/what-do-the-acronyms-mean-after-the-slash-in-the-firefox-dictionary