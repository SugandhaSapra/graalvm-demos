# GraalVM Demos

This repository intends to benchmark demo java based applications on GraalVM & thus leveraging the capabilities  of
 GraalVM.
 
 ### Preparation
 
 1. [Download GraalVM](https://www.graalvm.org/downloads/), unzip the archive, export the GraalVM home directory as the `$GRAALVM_HOME` and add `$GRAALVM_HOME/bin` to the `PATH` environment variable.
 
 On Linux:
 ```
 export GRAALVM_HOME=/home/${current_user}/path/to/graalvm
 export PATH=$GRAALVM_HOME/bin:$PATH
 ```
 On macOS:
 ```
 export GRAALVM_HOME=/Users/${current_user}/path/to/graalvm/Contents/Home
 export PATH=$GRAALVM_HOME/bin:$PATH
 ```
 ### How to Run?
 
 Each folder contains a demo sources, and a README file containing the instructions on how to run that particular
  code.
    
### Further Information

1. [GraalVM website](https://www.graalvm.org/)
2. [GraalVM on GitHub](https://github.com/oracle/graal/tree/master/compiler)
