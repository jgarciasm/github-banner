Github Banner
============

Make your github profile cooler by adding text and other media to the contribution grid.

![A-G](A-G.jpg?raw=true "A-G")

![H-N](H-N.jpg?raw=true "H-N")

![O-U](O-U.jpg?raw=true "O-U")

![U-Z](U-Z.jpg?raw=true "U-Z")

Features
--------

- draw words of up to 7 letters
- fill the grid with random commits
- No dependency on external libraries, only use common commands.
- Written entirely in Bash.

Note: I plan to add other fonts that allow you to write more and maybe the possibility to draw graphics. To do this I must extract the letters from each font to a separate file with the font name. If anyone wants to collaborate it is welcome, this is a project to enjoy together.

Usage
-----

1. Make a fork of this repository or create a new public github repo
2. Clone the repo
3. Inside the repo run `github-banner.sh` or `github-joke.sh` following below instructions:

[github-banner](github-banner.sh)

Note: If you already have multiple commits in your grid, the banner may not look as clean as the example, but you will still be able to see the text.

Usage:
```
bash github-banner.sh <capitalized text less than 8 letters in length> <number of weeks to paint before the first letter>
```

Example:
```
bash github-banner.sh HELLO 2
```

[joke-github](joke-github.sh)

Usage:
```
bash github-joke.sh
```

4. Push the generated commits.
5. Refresh your profile github page.
6. Enjoy it...

Authors
-------

* **Jonad García San Martín** - *Development and Documentation* - [LinkedIn](https://www.linkedin.com/in/jonadgarcia/)

Licenses
--------

Source code is released under the MIT license (See the [LICENSE](LICENSE) file)

Enjoy!

## Contribute

Contributions welcome! Read the [contribution guidelines](CONTRIBUTING.md) first.
