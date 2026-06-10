# Profession Llama

Profession Llama is a WoW Classic Era addon that adds an in-game profession leveling guide.

It gives you:

- A movable GUI opened with `/pl` or `/professionllama`.
- Navigation for every Classic profession: Alchemy, Blacksmithing, Cooking, Enchanting, Engineering, First Aid, Fishing, Herbalism, Leatherworking, Mining, Skinning, and Tailoring.
- Learned professions are shown first in the profession list and highlighted in gold.
- Search across professions, recipes, materials, notes, and gathering zones.
- Step-by-step leveling ranges from 1 to 300.
- Materials, recipe source notes, route tips, and profession shopping lists.
- Saved progress so you can mark steps complete.

## Install

1. Download or clone this repository.
2. Put the `ProfessionLlama` folder in your Classic Era addon directory:

   `World of Warcraft/_classic_era_/Interface/AddOns/ProfessionLlama`

3. Restart the game or run `/reload`.
4. Open the addon list on the character screen and enable **Profession Llama**.

## Use

- `/pl` toggles the window.
- `/pl alchemy` opens a profession directly. Replace `alchemy` with any profession name.
- `/pl reset` clears completed steps.

The route data follows the Classic profession guides from `https://www.wow-professions.com/classic`. Auction House prices and recipe access can vary by realm, so the addon also shows alternatives where the guides recommend them.
