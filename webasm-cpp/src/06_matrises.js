async function loadWebAssembly(filename, imports)
{
    // Fetch the file and compile it
    const response  = await fetch(filename);
    const buffer    = await response.arrayBuffer();
    const module    = await WebAssembly.compile(buffer);

    // Create the imports for the module, including the
    // standard dynamic library imports
    imports = imports || {};
    imports.env = imports.env || {};
    imports.env.memoryBase = imports.env.memoryBase || 0;
    imports.env.tableBase = imports.env.tableBase || 0;

    // Make a Memory object part of the import object
    if (!imports.env.memory)
    {
        imports.env.memory = new WebAssembly.Memory({ initial: 256 });
    }

    if (!imports.env.table)
    {
        imports.env.table = new WebAssembly.Table({ initial: 0, element: 'anyfunc' });
    }

    imports.env.STACKTOP = 0

    // Provide the import object in Instance
    return new WebAssembly.Instance(module, imports);
}

if (!('WebAssembly' in window))
{
    alert('Error: You need a browser with wasm support enabled');
}
else
{
    loadWebAssembly('06_matrises.wasm')
        .then(instance => {
            var exports = instance.exports;
            const memory = exports.memory

            // Obtain the array address
            const offset = exports.getOffset();

            // Create a typed array for each matrix and vector
            var matA = new Float32Array(memory.buffer, offset,    16);
            var matB = new Float32Array(memory.buffer, offset+64, 16);
            var vec  = new Float32Array(memory.buffer, offset+192, 4);
            var out  = new Float32Array(memory.buffer, offset+208, 4);

            // Initialize values
            var k = 9.0;
            matA.fill(2.0);
            matB.fill(3.0);
            vec.fill(4.0);

            // Perform the multiplication operations
            exports.scalarMult(0, k, 0);
            exports.matrixMult(0, 16, 32);
            exports.vectorMult(32, 48, 52);

            // Display the results
            resultString = "";
            for(var i = 0; i < 4; i++)
            {
                resultString += ' ' + out[i];
            }

            document.getElementById('wasm').innerHTML = 'Output: ' + resultString;
        });
}
