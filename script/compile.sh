source ../config/config.txt

# Compile circuit.circom
circom ../circuit/"$CIRCUIT_NAME".circom --r1cs ../circuit/"$CIRCUIT_NAME".r1cs --wasm ../circuit/"$CIRCUIT_NAME".wasm --sym ../circuit/"$CIRCUIT_NAME".sym -v