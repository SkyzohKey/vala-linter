# Vala Linter
A simple Vala code linter tool, written in Vala!  
Goals of this project are to provide a powerful and modular way to lint Vala projects.

By default Vala Linter comes with 2 sets of profiles:
* The `default` profile, following the [Vala code style] ;
* The `elementary` profile, following the [elementaryOS code style].

**IMPORTANT:** This project isn't yet usable and is in a development phase, if you wish to help feel free to send pull-requests or create issues. :)

## Compile
```shell
chmod +x build.sh
./build.sh
```

## Usage
```
Usage:
  vala-linter [OPTION...] - Vala Linter

A simple Vala code linter tool, written in Vala!

Help Options:
  -h, --help                              Show help options

Application Options:
  -v, --version                           Displays app version
  -c, --config=config.json                Configuration file path
  -o, --output                            Path where to save report
  -p, --profile=(default, elementary)     Linter profile to use
```

[Vala code style]: https://wiki.gnome.org/Projects/Vala/Hacking#Coding_Style
[elementaryOS code style]: https://elementary.io/docs/code/reference#code-style
