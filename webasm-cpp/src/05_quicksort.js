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
        imports.env.memory = new WebAssembly.Memory({ initial: 256 });

    if (!imports.env.table)
        imports.env.table = new WebAssembly.Table({ initial: 0, element: 'anyfunc' });

    // Provide the import object in Instance
    return new WebAssembly.Instance(module, imports);
}

if (!('WebAssembly' in window))
{
    alert('Error: You need a browser with wasm support enabled');
}
else
{
    loadWebAssembly('05_quicksort.wasm')
        .then(instance => {
            var exports = instance.exports;

            const memory = exports.memory
            // Obtain the address of the WebAssembly array
            const offset = exports.getOffset();

            // Create and initialize a typed array
            var mem = new Uint32Array(memory.buffer, offset, 251);
            for(var i = 0; i < 251; i++)
                mem[i] = Math.floor(899 * Math.random()) + 100;

            // Call the quicksort function to sort the array
            exports.quicksort(0, 251);

            // Generate result string
            resultString = "";
            for(var i = 1; i < 251; i++)
            {
                resultString += '  ' + mem[i];
                if(i % 25 == 0 &&  i != 0)
                    resultString += '<br>'
            }

            document.getElementById('wasm').innerHTML = 'Sorted array:<br><br>' + resultString;
        });
}
