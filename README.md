[![][travis-badge]][travis-link]
![][license-badge]

<div align="center">
  <a href="http://github.com/oh-my-fish/oh-my-fish">
  <img width=90px  src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png">
  </a>
</div>
<br>

#  [_z_](https://github.com/rupa/z)

Jump around plugin for [Oh My Fish][omf-link].

## Install
> _Note_: You need to have `z` installed.


```fish
$ omf install z
```

## Configuration

In order to use `z`, it's necessary to specify the script file path.
You can do so by adding the following snippet to your `.config/fish/config.fish` file before
sourcing Oh My Fish.

```
set -g Z_SCRIPT_PATH #path
```

## Usage

```fish
$ z
```

# License

[MIT][mit] © [bpinto][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/bpinto
[contributors]:   https://github.com/oh-my-fish/plugin-z/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[travis-badge]:   http://img.shields.io/travis/oh-my-fish/plugin-z.svg?style=flat-square
[travis-link]:    https://travis-ci.org/oh-my-fish/plugin-z
