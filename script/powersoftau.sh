source ../config/config.txt

snarkjs powersoftau new bn128 12 ../MPC/pot12_0000.ptau -v
snarkjs powersoftau contribute ../MPC/pot12_0000.ptau ../MPC/pot12_0001.ptau --name="First contribution" -v
snarkjs powersoftau contribute ../MPC/pot12_0001.ptau ../MPC/pot12_0002.ptau --name="Second contribution" -v

# snarkjs powersoftau beacon <old_powersoftau.ptau> <new_powersoftau.ptau> <beaconHash(Hex)> <numIterationsExp>
snarkjs powersoftau beacon ../MPC/pot12_0002.ptau ../MPC/pot12_beacon.ptau "$BEACON_HASH" 10 -n="First Beacon"

snarkjs powersoftau prepare phase2 ../MPC/pot12_beacon.ptau ../MPC/pot12_final.ptau -v