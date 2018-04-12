#source /home/seanmcd/.personal_login

set NSLOTS=16

export MODEL_DIR=/workspace/seanmcd/Baseline_Model_Computational_Steering
#export MODEL_DIR=/home/mcdaniel/Software/Baseline_Model_Computational_Steering

rm -rf $MODEL_DIR/data*

PATH=/home/seanmcd/Software/GENESIS/pgenesis/bin/:$PATH

cd $MODEL_DIR

export pes_node=16

export num_nodes=$NSLOTS

./run_Neocortex &

## Wait for the entire workflow to finish
wait
