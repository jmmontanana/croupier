#!/bin/bash -l

########
# Copyright (c) 2019 Atos Spain SA. All rights reserved.
#
# This file is part of Croupier.
#
# Croupier is free software: you can redistribute it and/or modify it
# under the terms of the Apache License, Version 2.0 (the License) License.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT ANY WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT, IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT
# OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# See README file for full disclaimer information and LICENSE file for full
# license information in the project root.
#
# @author: Javier Carnero
#          Atos Research & Innovation, Atos Spain S.A.
#          e-mail: javier.carnero@atos.net
#
# bootstrap_sbatch_scale_example.sh


FILE="touch.script"

cat > $FILE <<- EOM
#!/bin/bash -l

#BATCH -p $2
#BATCH -N 1
#BATCH -n 1
#BATCH --ntasks-per-node=1
#BATCH -t 00:01:00

# DYNAMIC VARIABLES

touch $1_\$SCALE_INDEX.test
EOM
