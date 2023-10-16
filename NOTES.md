# Shangrila

A Cyberpunk RED character online, "multiplayer" generator.

## Goal

Provide a way for new players, with little knowledge of the rules, to create and character 
**and watch their friends as they create theirs**. Just like what happens during an IRL 
session 0. Because watching each other's characters being created is fun, and helps learn 
the rules (and cements the party a bit).

## Contraints

*   Vanilla Rails 7.1 (or "edge") stack: no build, Propshaft, Turbo, SQLite in prod, no Redis if possible.
*   2 days (16 hours) of work max, from design to deploy (using Kamal).

## Out-of-scope

*   No need for mobile/responsive. (Though it could be a fun Strada project later.)
*   Cyberpunk RED provides 3 ways to build a character, with progressive levels of complexity 
    and user-facing choices. **We'll only go with the middle one** (“edge runner”).
*   User sessions, save/restart, etc.
*   Printer-friendly character sheet.
*   In fact, any kind of character sheet is unnecessary.

## Inspiration

*   The game's visual identity (blocky, with lots of white and red) is very recognizable, 
    but I don't want to stick to it. Nods are fine, but this will be its own thing (if only 
    to avoid any confusion). **Replacing the red with an other color** is an idea worth considering.
*   https://cyberpunk-char-gen.neocities.org looks good but show no _process_; it's more like 
    a fillable character sheet.
*   https://cyberpunkred.com looks a lot more like an app (some kind of web-based-but-meant-for-mobile 
    app, even), and has good ideas, like the different steps. However, it is not multiplayer 
    and the rolls/are made all at once, without player interaction. That's too bad. I'd like 
    the player to feel like they _do something_, even if it's only clicking a "roll" button.


## About the name

Shangrila is the title of a song in Billy Idol's Cyberpunk game; it refers to the imaginary place Shangri-la. Because 
of the sounds effects in the song, and the theme of peaceful immortality, I stole this name for a device in a Cyberpunk 
2.0.2.0. game 20 years ago – a kind of miracle fluid in which people in stasis could be submerged and regenerated or 
even vat-grown. This seems fitting for a character generation tool.


