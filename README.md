# NML NewGRF meta language

NML is a a python-based compiler, capable of compiling NML files (along
with their associated language, sound and graphic files) into grf
and / or nfo files.

The documentation about the language can be found on
http://newgrf-specs.tt-wiki.net/wiki/NML:Main

NML is licensed under the GNU General Public License version 2, or at
your option, any later version. For more information, see [LICENSE](https://github.com/OpenTTD/nml/blob/master/LICENSE)
(GPL version 2), or later versions at http://www.gnu.org/licenses/.

Last updated:    2019-04-02
Release version: 0.4.5

## Table of Contents

1. [Contact](#1-contact)
2. [Dependencies](#2-dependencies)
    * 2.1 [Required dependencies](#21-required-dependencies)
    * 2.2 [Optional dependencies](#22-optional-dependencies)
3. [Installation](#3-installation)
4. [Usage](#4-usage)
5. [Known issues](#5-known-issues)
6. [Credits](#6-credits)

## 1) Contact

- [issue tracker / source repository](https://github.com/OpenTTD/nml)
- IRC chat using #openttd on irc.oftc.net [more info about our irc channel](https://wiki.openttd.org/Irc)

## 2) Dependencies

### 2.1) Required dependencies

NML requires the following 3rd party packages to run:

- `python`
  Minimal version is 3.5. Python 2 is not supported.
- `python image library`
  For install options see https://pillow.readthedocs.io/en/stable/installation.html
  Minimal version is 3.4. Older versions are not supported.
- `ply`
  Downloadable from http://www.dabeaz.com/ply/

### 2.2) Optional dependencies

To install NML you'll need these 3rd party packages:

- gcc (or possibly another c++ compiler).
  Needed to compile the cython version of the lz77 module for grf encoding.

## 3) Installation

The easiest way to install NML is by using pip:

```bash
pip3 install nml
```

In order to install NML from a source checkout run:

```bash
python setup.py install
```

If you want to install the package manually copy 'nmlc' to any directory
in your path and the directory 'nml' to any directory in your python path.

## 4) Usage

Usage: nmlc [options] `<filename>`.

Where `<filename>` is the nml file to parse.

Options:

```
    --version             show program's version number and exit
    -h, --help            show this help message and exit
    -d, --debug           write the AST to stdout
    -s, --stack           Dump stack when an error occurs
    --grf=<file>          write the resulting grf to <file>
    --md5=<file>          Write an md5sum of the resulting grf to <file>
    --nfo=<file>          write nfo output to <file>
    -M                    output a rule suitable for make describing the
                          graphics dependencies of the main grf file (requires
                          input file or --grf)
    --MF=<file>           When used with -M, specifies a file to write the
                          dependencies to
    --MT=<file>           target of the rule emitted by dependency generation
                          (requires -M)
    -c                    crop extraneous transparent blue from real sprites
    -u                    save uncompressed data in the grf file
    --nml=<file>          write optimized nml to <file>
    -o <file>, --output=<file>
                          write output(nfo/grf) to <file>
    -t <file>, --custom-tags=<file>
                          Load custom tags from <file> [default:
                          custom_tags.txt]
    -l <dir>, --lang-dir=<dir>
                          Load language files from directory <dir> [default:
                          lang]
    --default-lang=<file>
                          The default language is stored in <file> [default:
                          english.lng]
    --start-sprite=<num>  Set the first sprite number to write (do not use
                          except when you output nfo that you want to include in
                          other files)
    -p <palette>, --palette=<palette>
                          Force nml to use the palette <pal> [default: ANY].
                          Valid values are 'DOS', 'WIN', 'ANY'
    --quiet               Disable all warnings. Errors will be printed normally.
    -n, --no-cache        Disable caching of sprites in .cache[index] files,
                          which may reduce compilation time.
    --cache-dir=<dir>     Cache files are stored in directory <dir> [default:
                          .nmlcache]
    --clear-orphaned      Remove unused/orphaned items from cache files.
    --verbosity=<level>   Set the verbosity level for informational output.
                          [default: 3, max: 4]
```

## 5) Known issues

See the [issue tracker](https://dev.openttdcoop.org/projects/nml/issues).

## 6) Credits

Active developers (in alphabetical order):

- Christoph Elsenhans (frosch)
- Ingo von Borstel (planetmaker)

Inactive developers:

- Albert Hofkamp (Alberth)
- Jasper Reichardt (Hirundo)
- Remko Bijker (Rubidium)
- José Soler (Terkhen)
- Thijs Marinussen (Yexo)
