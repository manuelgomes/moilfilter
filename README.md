# filter.rb

## Steps to run

### Install ruby in your platform

Most unices will have one installed already. In debian-likes (such as ubuntu) `sudo apt-get install ruby`. Better installations, such as `rbenv`-centric ones, are left as an exercise for the reader.

### Install the activesupport gem

`gem install activesupport` will usually suffice

### Position the input file

Copy the FCC's MOIL file to _moil.csv_ on the same directory as the script.

### Run

`ruby filter.rb`

### Expected output

Run time should be under 2 seconds, after which

```
STARTRUN
ENDRUN
```

should be shown. Any other output is irregular and may signal a problem.

## Output

A `filtered.csv` file should be present in the same directory as the script

## Dedication

For Alexandra Rust
