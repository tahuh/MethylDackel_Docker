# MethylDackel_Docker
The Docker image to use MethylDackel


## Why docker?

25-Sep-2020

[MethylDackel](https://github.com/dpryan79/MethylDackel) seems to have problem with `htslib >= 1.10`. 

See discussion at [this issue](https://github.com/dpryan79/MethylDackel/issues/99) 

It works with `htslib 1.9` but some people still get failure when running MethylDackel.

The easiest way I thought was _install htslib 1.9 globally_.

For some reasons, changing system's the globally installed version of `htslib` is unhappy.

I thought docker is a good alternative since it does not require `virtual machine` and uses host's resources directly.

## Disclaimer

This repository only offers an alternative way to compile and run MethylDackel with htslib 1.9 and does not fix issue mentioned above.

I'm not intending to denigrate the MethylDackel.

## Special Thanks

- dpryan79 for developing MethylDackel
- robertamezquita for providing solution for MethlyDackel's problem

## Creating image

Follow the commands below

