# SyGuS Benchmarks

This repository contains all the public benchmarks for the [SyGuS](http://sygus.org/) competition.

**NOTE**: There may be errors and/or duplicates among the benchmarks!
We are working on automating the checking and deduplication of our benchmarks.
However, as of now, this process is largely manual.
We would love it if you could file a [bug report](https://github.com/SyGuS-Org/benchmarks/issues)
whenever you discover something like this.

## Directory Structure

```
.
|--comp                 < the "official" SyGuS-Comp benchmarks
|   |-- 2017
:   :
|   `-- 20XX
|-- lib                 < latest snapshot of all benchmarks
|   |-- X_Track
:   :
|   `-- Y_Track
`-- lib-nonconforming   < valid benchmarks that do not conform to track restrictions
    |-- X_Track
    :
    `-- Y_Track
```