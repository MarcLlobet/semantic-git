
# semantic-git
Git aliases designed to create better commit messages. ✍️

- 🔁 Avoid repetitive typing.
- ⚡ Shortens commit command.
- 📚 Brings consistent tracing.
- 📊 Useful with task managers. 

## Installation
Either you can add aliases from `git-config-aliases.ini` in your `~/.gitconfig` file.

Or, go to your terminal, place yourself in the repo folder and run `. ./install.sh`.

## Commands
- feat
- fix
- chore
- test
- refactor

## How to use

Using the git commands above will set a commit message.

Without a custom message, the default would be `"add {type}"`.

### Branch pattern definition:
```regexp
(([A-Z]+)-([0-9]+))[_/](\w+-?)+
```
```glob
[A-B]-[0-9]/kebab-case
[A-B]-[0-9]_kebab-case
```

### Examples of good patterns:
- TAG-123/a-good-example
- XY-56789_another-good-example

### Examples
| Command                 | Commit message      |  Pattern branch  |
| ----------------------- | --------------------------------- | -- |
| `git feat`              | `feat: add feat`                  | ❌ |
| `git fix any message`   | `fix: any message`                | ❌ |
| `git chore`             | `chore(TAG-123): branch desc`     | ✅ |
| `git test any message`  | `test(TAG-123): any message`      | ✅ |

> [!NOTE]  
> Given we have a non-pattern branch, like 'main'
> and a pattern branch, like 'TAG-123/branch-desc'.


## Todo
- Update git-config-aliases.ini to work as git-functions.sh does
- Add unit tests to ensure expected behaviour