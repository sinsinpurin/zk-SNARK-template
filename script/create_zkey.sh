source ../config/config.txt

# Phase2
snarkjs zkey new ../circuit/"$CIRCUIT_NAME".r1cs ../MPC/pot12_final.ptau ../zkey/"$CIRCUIT_NAME"_0000.zkey

# Contribute *This is flow needs to be run several times
snarkjs zkey contribute ../zkey/"$CIRCUIT_NAME"_0000.zkey ../zkey/"$CIRCUIT_NAME"_0001.zkey --name="First contribution" -v
snarkjs zkey contribute ../zkey/"$CIRCUIT_NAME"_0001.zkey ../zkey/"$CIRCUIT_NAME"_0002.zkey --name="Second contribution" -v
snarkjs zkey contribute ../zkey/"$CIRCUIT_NAME"_0002.zkey ../zkey/"$CIRCUIT_NAME"_0003.zkey --name="Third contribution" -v

# Add random beacon and finish zkey
snarkjs zkey beacon ../zkey/"$CIRCUIT_NAME"_0003.zkey ../zkey/"$CIRCUIT_NAME"_final.zkey "$ZKEY_BEACON_HASH" 10 -n="Final Beacon Phase2"

# Verify circuit_final.zkey
snarkjs zkey verify ../circuit/"$CIRCUIT_NAME".r1cs ../MPC/pot12_final.ptau ../zkey/"$CIRCUIT_NAME".zkey

snarkjs zkey export verificationkey ../zkey/"$CIRCUIT_NAME"_final.zkey ../zkey/verification_key.json
