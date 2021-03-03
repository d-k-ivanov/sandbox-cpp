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
        imports.env.memory = new WebAssembly.Memory({ initial: 256 });
    }

    if (!imports.env.table)
    {
        imports.env.table = new WebAssembly.Table({ initial: 0, element: 'anyfunc' });
    }

    return new WebAssembly.Instance(module, imports);
}

if (!('WebAssembly' in window))
{
    alert('Error: You need a browser with wasm support enabled');
}
else
{
    loadWebAssembly('02_templates.wasm')
        .then(instance => {
            var exports = instance.exports;
            var oracle = exports._answer;

            const question = 'Answer to the Ultimate Question of Life, the Universe, and Everything: ';
            const answer = new String(oracle());
            document.getElementById('wasm').innerHTML = question + answer.bold().fontcolor("red");
        });

    // WebAssembly.instantiateStreaming(fetch('02_templates.wasm'))
    //     .then(result =>
    //         document.getElementById('wasm').innerHTML =
    //         'Answer to the Ultimate Question of Life, the Universe, and Everything: ' +
    //         result.instance.exports.answer()
    // );
}
