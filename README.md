# ZK-SNARK template

This repository can try zk-snark.

- Create Proof
- Verify Proof

## Setup

Edit configuration.

```
# Circuit file name
CIRCUIT_NAME="test"

# Random Beacon Hash
# `sha256("MyZK") = 522bde7d94e75dac087a8af26d37a8f3a1d47b0e19a65a2f8bfa8a00b5a4bb5f`
BEACON_HASH="522bde7d94e75dac087a8af26d37a8f3a1d47b0e19a65a2f8bfa8a00b5a4bb5f"

# Random Beacon Hash
ZKEY_BEACON_HASH="8c16e69ca80eb4f44b5e7249bbbf6dcd25e0c5b0e555bb330f23cab188d010fd"
```

Create circuit file.
`/circuit/{CIRCUIT_NAME}.circom`

## Run

This project using `Perpetual Power of Tau`.

<br/>

1. Circuit Compile
2. Setup Key(Phase 1)
3. Setup Key(Phase 2)
4. Create Proof
5. Verify Proof

### Circuit Compile

```
$ sh compile.sh
```

### Setup Key(Phase 1)

Phase1 generates keys by multiparty.

```
$ sh powersoftau.sh
```

### Setup Key(Phase 2)

Phase2 generates a key for each circuit.

```
$ sh create_zkey.sh
```

### Create Proof

Create input file(input/input.json)

```
$ sh create_zkey.sh
```

### Verify Proof

```
$ sh verify_proof.sh
```

## Output Solidity Code

```
$ sh export_sol.sh
```
