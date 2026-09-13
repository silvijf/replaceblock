# replaceblock
**Datapack to replace blocks under your feet in Minecraft**

## Inserting the datapack
With my computer, **dragging and dropping doesn't work** for some reason.[^1]
Unzip the file in your datapack folder within your save (typically `%appdata%\.minecraft\saves\[your world]\datapacks`).
If you did it right, the file structure should be like this:

`datapacks`<br>
│<br>
└── `replaceblock-[version]`<br>
⠀⠀⠀├── `data`<br>
⠀⠀⠀├── `pack.mcmeta`<br>
⠀⠀⠀└── `pack.png`<br>

## How this works
Every time you move, the block under your feet is replaced by a random block, if the block under your feet is already a block (not `air`).
This datapack doesn't work (yet) with multiplayer!

## Enabling the datapack
To enable, you must run:
```mcfunction
/function replaceblock:start
```
~If~ When you're tired of this datapack, you can run:
```mcfunction
/function replaceblock
```

[^1]: If it works with your Minecraft, or you (think you) know what the problem is, please create an [issue](https://github.com/silvijf/replaceblock/issues).
