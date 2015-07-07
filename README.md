mingw64 Cookbook
================
Extracts MinGW64 toolchain and adds the bin folder to path.

Requirements
------------
Runs on Windows. Requires a pre-downloaded mingw

#### packages
- `windows` - mingw64 needs windows to execute batch code.

Attributes
----------
````
default['mingw64']['zip_path'] = 'c:/vagrant/installers/i686-4.8.3-release-posix-dwarf-rt_v3-rev2.7z'
default['mingw64']['out_path'] = 'c:/tools/mingw64'
````

Usage
-----
Just include `mingw64` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[mingw64]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Ivan Li
