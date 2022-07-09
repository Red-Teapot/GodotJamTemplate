# Godot Jam Game Template

This template has not much going on with the Godot project itself,
but it contains a script (`export.sh`) to automatically export and
upload the game on Itch.io.

# Setup

Aside from creating a repository from this template, some additional
setup is needed.

1. Install [Godot](https://godotengine.org/) (duh), the game engine.
2. Install the Godot export templates (Editor -> Manage Export Templates...),
   if they are not installed already.
3. Install [Butler](https://itch.io/docs/butler/), the tool to upload project on Itch.io.
4. If you're on Windows, install a Bash. The easiest option is installing [Git](https://git-scm.com/)
   as it includes Git Bash.
5. Copy the `config.example.sh` file and rename the copy into `config.sh`.
6. Edit `config.sh`:
   - Set the `Godot` variable to the path to your Godot executable.
   - Set the `Butler` variable to the path to your Butler executable.
   - Set the `ItchUsername` variable to your Itch username as it is stated in your profile URL.
     For example, if your profile page address is `https://example.itch.io`, `ItchUsername` should be `example`.
   - Set the `ItchProjectName` variable to the name of your Itch project as it is stated in the project URL.
     For example, if your project address is `https://example.itch.io/example-game`, `ItchProjectName` should be `example-game`.

After everything is set up, simply open Bash inside the project folder,
run `./export.sh` and wait for it to finish.
