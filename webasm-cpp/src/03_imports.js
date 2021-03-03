if ('WebAssembly' in window)
{
    var importObj =
    {
        env:
        {
            print_value: x =>
                document.getElementById('wasm').innerHTML = 'Value: ' + x
        }
    };

    WebAssembly.instantiateStreaming(fetch('03_imports.wasm'), importObj)
        .then(result => result.instance.exports.call_func(9));
}
