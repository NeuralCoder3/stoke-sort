We try to replicate AlphaDev's results using different methods.

The goal is to synthesize a program that sorts three numbers given in an integer buffer in-place.
Our target-architecture is x86 assembly.

## Experiments

The currently tested approaches are
* gcc O0
* gcc O3
* clang O0
* clang O3
* given AlphaDev results (inline assembly compiled with clang)
* stoke

Future experiments will include
* MCTS + NN (AlphaDev like architecture based on AlphaZero)
* Reinforcement Learning (general synthesis environment)

### Results

| Approach | Time | Instruction Count |
| -------- | ---- | ----------------- |


#### Detailed Stoke Comparison

**Optimizing run using symbolic tests:** 
| Assembly LoC | Time | Comment |
| ----------------- | ---- | ------- |
| 62 | 2.35s | Baseline |
| 42 | 2.84s | | 
| 42 | 2.7s | | 
| 41 | 2.78s | | 
| 41 | 2.82s | | 
| 41 | 2.30s | | 
| 42 | 2.44s | | 
| 41 | 2.28s | | 
| 41 | 2.7s | | 
| 41 | 2.28s | | 
| 41 | 2.27s | | 


## Approach Details

### Stoke 
The current folder contains the stoke test setup.
You should be able to run it for instance in the stoke docker container.

If the folder is placed in the `examples` folder, simply execute `export PATH=$PATH:../../bin` followed by `init.sh` and `./sym/run.sh`.

Alternatively, you can execute the commands manually:
```bash
export PATH=$PATH:../../bin
# compile the program
g++ -std=c++11 -O3 -fno-inline main.cc
# check baseline runtime
time ./a.out 100000000
# extract x86 assembly of functions; we are interested in bins/sort3.s
stoke extract -i ./a.out -o bins

# generate test cases by symbolic execution
stoke_tcgen --target bins/sort3.s --bound 64 --output sym/test.tc
# optimize by genetic means (random permutations of instructions)
stoke optimize --config sym/synthesize.conf --out sym/result.s --testcases sym/test.tc 
# incorporate optimized code into the original program
cp ./a.out ./a_opt.out
stoke replace -i ./a_opt.out --rewrite sym/result.s 
# check optimized runtime
time ./a_opt.out 100000000
``` 

Note: The synthesis approach seems to be unsuccessful (at least in a time frame of 30min).


## References

- [Stoke](https://github.com/StanfordPL/stoke)
- [AlphaDev](https://github.com/deepmind/alphadev) (mostly only the result assembly code)
