# npmabot

A npm action that bumps the package version according to requirements

## Inputs

## `version_name`

Version to bump to. Check `npm version` for details. Default: `patch`

## `package_file_path`

Path to `package.json` file. Default is current directory `./`.

## Outputs

Bumps the `package.json` by given version.

## Example usage


```yml

- name: Bump package.json by patch
  uses: opendocument-app/npmabot@master
  with:
    # can be patch / minor / major or any `npm version` supported parameter. (default: patch)
    version_name: 'patch' 
    # path to package.json. uses current folder as default
    package_file_path: ./ 

```