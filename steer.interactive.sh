#source /home/seanmcd/.personal_login

set NSLOTS=4

export MODEL_DIR=/home/mcdaniel/Software/Baseline_Model

rm -rf $MODEL_DIR/data*

PATH=/home/seanmcd/Software/GENESIS/pgenesis/bin/:$PATH

cd $MODEL_DIR

export num_nodes=$NSLOTS

./run_Neocortex &

## Wait for the entire workflow to finish
wait
