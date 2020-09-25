# MethylDackel_Docker
The Docker image to use MethylDackel


## Why docker?

As of 25-Sep-2020 ....

[MethylDackel](https://github.com/dpryan79/MethylDackel) seems to have problem with `htslib >= 1.10`. 

See discussion at [this issue](https://github.com/dpryan79/MethylDackel/issues/99) 

It works with `htslib 1.9` but some people still get failure when running MethylDackel.

The easiest way I thought was _install htslib 1.9 globally_.

For some reasons, changing system's the globally installed version of `htslib` is unhappy.

I thought docker is a good alternative since it does not require `virtual machine` and uses host's resources directly.

## Disclaimer

This repository only offers an alternative way to compile and run MethylDackel with htslib 1.9 and does not fix issue mentioned above.

I'm not intending to denigrate the MethylDackel.

I'm not a person who has conflict of interest with Docker

## Special Thanks

- dpryan79 for developing MethylDackel
- robertamezquita for providing solution for MethlyDackel's problem

## System tested

- OS : Ubuntu 18.04
- Docker version : 19.03.1 build 74b1e89
- CPU : Intel Xeon(R) Gold 6230 x 2ea
- RAM : 384GB
- HDD : 55TB

## Installation

### Get Docker
Choose suitable docker for your system at [Docker](https://www.docker.com/)

### Creating image

Follow the commands below

`$ git clone https://github.com/tahuh/MethylDackel_Docker.git`

`$ git clone https://github.com/dpryan79/libBigWig.git`

`$ git clone https://github.com/dpryan79/MethylDackel.git`

```
$ wget https://github.com/samtools/htslib/releases/download/1.9/htslib-1.9.tar.bz2
$ tar -xvf htslib-1.9.tar.bz2
```

If above procedure is done... then run the command below

`$ docker build -t methyldackel .  `

Be careful with the last dot(`.`) at the end of the command

Thats it!

## How to use
Suppose you are running at local computer or workstation and your storage is mounted on `/DATA`

`$ docker run --rm -v /DATA:/DATA methyldackel:latest [MethylDackel subcommand]`

Here MethylDackel subcommands are

- extract
- mbias
- mergeContext
- etc.

## License
MIT
