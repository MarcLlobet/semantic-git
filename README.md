
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

Branch name following the pattern [A-B]-[0-9] will be included in the commit message.

### Examples
| Command  | Commit message |  Pattern branch  |
| ------------- | ------------- | ------------- |
| `git feat`  | `feat: add feat`  | ❌ |
| `git fix any message`  | `fix: any message`  | ❌ |
| `git refactor`  | `refactor(TAG-123): add refactor`  | ✅ |
| `git test increase coverage`  | `test(TAG-123): increase coverage`  | ✅ |
