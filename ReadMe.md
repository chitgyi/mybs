## MYBS

### Git Submodules & Modularisation System

> Git submodules are a feature of the Git SCM that allow you to include the contents of one repository within another by simply specifying the referenced repository location. This provides a mechanism of including an external library’s source into an application’s source tree. [Ref](https://devcenter.heroku.com/articles/git-submodules)

### Pros of Modularisation

It is easy to

- add new features to the system.
- change the system.
- test the system.
- maintain the system.
- reuse the system.
- understand the system.
- document the system.
- debug the system.
- audit the system.
- upgrade the system.
- plug the system.
- etc,..

### Modules List

- [Core Module of MYBS](https://github.com/chitgyi/mybs_core_module)
- [DB Module](https://github.com/chitgyi/mybs_db_module)
- [Home Module](https://github.com/chitgyi/mybs_home_module)

## Build & Run

```bash
git clone https://github.com/chitgyi/mybs.git
cd mybs

## for update the latest version of modules

## sync updated submodules' data for all modules
git pull origin main --recurse-submodules

## for specific module
git submodule update --remote --init mybs_core_module
```
