circuit PedersenHash {
    parameters: [group; 256],

    // Instantiates a Pedersen hash circuit
    function new(const parameters: [group; 256]) -> Self {
        return Self { parameters: parameters };
    }

    function hash(self, bits: [bool; 256]) -> group {
        let digest: group = 0group;
        for i in 0..256 {
            if bits[i] {
                digest += self.parameters[i];
            }
        }
        return digest;
    }
}
