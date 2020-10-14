# Retinotopy scripts for Presentation

This repo contains the "scripts" that I have used in (distant) past to run some
retinotopy experiments with Pre\$entation.

Putting them here in the hope that it might help any other poor soul who might
have to interact with that "wonderful" software: if you have to use this
software because "someone" or "something" is forcing you, you have all my
sympathy. And do not hesitate to get in touch if you want help convincing that
"Somenone" or "Something" about why it is a bad idea to use this software.
:wink:

## Organization

The background pictures contained in the `Checkerboard_*.zip` files were
generated using an old version of the retinotopy experiments running on
Psychtoolbox developped by
[Sam Schwarzkopf](https://sampendu.net/sam-schwarzkopf/). See this OSF project -
[DOI 10.17605/OSF.IO/2RGSM](https://osf.io/2rgsm/) - for a more recent
implementation of those Psychtoolbox scripts.

The Presentation scripts I coded simply loads those pictures and loops through
all of them.

This script only does the polar angle mapping. Though it could be extended to do
also the eccentricity mapping: you would need to generate the background
pictures using the `eccen.m` from Sam Schwarzkopf and save each frame as an
image.

## Other Presentation scripts for retinotopy

Past me had looked for other scripts for retinotopic mapping:

- A very old scipt by [Murray](https://www.neurobs.com/ex_files/expt_view?id=86)
  on the Presentation website.

- This [paper](https://doi.org/10.1371/journal.pone.0036859) used some
  Presentation script for its retinotopic experiment, but it seems the links are
  now dead. I do have copy of the code but there was no licence to go with it,
  so if you manage to get in touch with them let me know under what
  condition they agree to share the code.
