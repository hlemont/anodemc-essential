# Installation

Download datapacks from [release](https://github.com/hlemont/anodemc-essential/releases/), and put in your `world/datapacks` folder at any time, and then reload it. Datapack load order doesn't seem to matter, but I recommend you to load `anodemc-essential` datapack first.

To check datapack has been successfully initialized and applied for new users, run command `/tag <user> list` to see if on_join has been executed successfully. Each module would have `anodemc-essential-*.join` tag as a flag.



# General How-to

anodemc-essential is mostly powered by sign-trigger, so you should get those signs to access functionalities. You can get yourself each signs by calling `anodemc-essential-*:give/sign_...` or all signs at once by calling `anodemc-essential-*:give_signs`.

You can also access to functionalities by calling `trigger ...` remotely, but recommend it only for testing or your own trigger setups.



# Detailed descriptions

- [`anodemc-essential`](packs/core.md)
- [`anodemc-essential-shop`](packs/shop.md)
- [`anodemc-essential-loan`](packs/loan.md)