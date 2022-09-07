source ../config/config.txt

# Create Witness
snarkjs wtns debug ../circuit/"$CIRCUIT_NAME".wasm ../input/input.json ../output/witness.wtns ../circuit/"$CIRCUIT_NAME".sym --trigger -set -get

# Create Proof
snarkjs groth16 prove ../zkey/"$CIRCUIT_NAME"_final.zkey ../output/witness.wtns ../output/proof.json ../output/public.json