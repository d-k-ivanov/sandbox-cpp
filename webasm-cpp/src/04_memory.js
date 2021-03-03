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

    if (!imports.env.memory)
    {
        // Step 1: Make a Memory object part of the import object
        imports.env.memory = new WebAssembly.Memory({ initial: 256 });
    }

    if (!imports.env.table)
    {
        imports.env.table = new WebAssembly.Table({ initial: 0, element: 'anyfunc' });
    }

    // Step 2: Provide the import object in Instance
    return new WebAssembly.Instance(module, imports);
}

if (!('WebAssembly' in window))
{
    alert('Error: You need a browser with wasm support enabled');
}
else
{
    loadWebAssembly('04_memory.wasm')
        .then(instance => {
            var exports = instance.exports;

            // Step 3: Obtain the addresses of the input arrays and memory block
            const memory  = exports.memory
            const offset1 = exports.getFirstOffset();
            const offset2 = exports.getSecondOffset();

            // Step 4: Create and initialize two typed arrays
            var firstArray = new Uint32Array(memory.buffer, offset1, 8);
            firstArray.fill(2);
            var secondArray = new Uint32Array(memory.buffer, offset2, 8);
            secondArray.fill(3);

            // Step 5: Compute the dot product
            product = exports.dot_product();
            document.getElementById('wasm').innerHTML = 'Dot product: ' + product;
        });
}
