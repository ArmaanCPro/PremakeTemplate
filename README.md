# Premake Template for C++

I use premake a lot. I like it. I like it a lot. I like it (and you) so much that I made a template for you.

Jokes aside, this template uses a core and app architecture. Core builds as a static library, and app builds as an executable that links to core.

## How to use
- Once you've cloned the projects, I'd recommend changing the folder names to suit your project, as well as editing the Build.lua files to change the workspace/solution & project names.
- Run the script according to your platform in the .scripts folder to generate the project. Hopefully the mac one works, can't confirm tho
- You can also pretty easily change this setup to work for c, you just have to change the language and language version in the Build.lua files

## Dependencies
- The template only depends on premake5 (currently v5.0.0-beta4)
- You can add your own dependencies in the build.lua files.
- Usually only the core project should have dependencies (you can create a vendor folder in the core dir and add the dependencies there)
- Then link the deps similarly to how core is linked to app

## Included
- Sample code
- '.gitignore' for Visual Studio. You can add your ide/platform specific excludes
- '.editorconfig' which currently uses a unix style
- Hopefully working sample code

## License
- UNLICENSE for this (see 'UNLICENSE.txt')
- Premake is licensed under the BSD 3-Clause License (see 'LICENSE.txt')
