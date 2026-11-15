# Project page answers (copy and paste into each field)

Fields follow the 2026 Project Submission Guide. Submission is open Sat 14 Nov 9:00 a.m. to Sun 15 Nov 11:59 p.m. (your Local Event time). You can save and resubmit as often as you like before the deadline; only the last saved submission is judged. All text must be in English. Fill the 2 links with your own PUBLIC URLs.

## Project Name
Moon Farm

## High-Level Project Summary
Moon Farm is a free farm-style game for kids aged 7 to 12. Kids run a Moon or Mars outpost for four astronauts they name themselves. Power, air, food and radiation compete: the shield uses power, greenhouses need power to grow food, Moon nights remove the sun, and help from Earth arrives days late. Surprise events give 10 seconds to choose, and every option costs something. The solar flares kids face are real flares from NASA's DONKI database, shown with their real class and date, so a shielding decision is linked to actual space weather. It answers the Junior Astronaut Mission Trainer challenge by turning real deep-space trade-offs into play. It runs in any browser and as an Android app, with no account needed.

## Link to Project Demo
https://docs.google.com/presentation/d/1AwjqzDxFQcaQnihnwKCFuyTH2RjLQfui/edit?usp=sharing

## Link to Final Project
https://mdrayhanwadud.github.io/moonfarm-commander/   (works only after you enable GitHub Pages; until then use https://github.com/mdrayhanwadud/moonfarm-commander)

## Detailed Project Description
**What it does.** Kids manage a Moon or Mars outpost across five themed pages (Power, Air, Food, Radiation, Crew). Each page has its own look, a 12-second mini-game, and an About page that explains what it is, how it works in the game, and how it works in real space. A Watch section has five short animated videos that show what happens in a solar storm, when radiation rises, and when power, food or air run out.

**How it works.** Solar panels make power; machines (oxygen maker, greenhouses, shield, lab) use it; the battery stores extra. If power is short, a brownout stops machines. Every 5th Moon day is night with no sun, and dust slowly lowers panel power until the player cleans it. The crew uses air and food every day. Greenhouses need power and two days to grow, and the player picks the plants. Radiation dose only goes up; the shield cuts it by 25% per level but costs power. Calling Earth brings supplies after 2 days (Moon) or 4 days (Mars) to teach communication delay. Random events (dust storm, solar flare, meteorite, supply capsule, helper rover) give 10 seconds to choose, and every option costs something. New systems unlock slowly (radiation on day 3, dust on day 4) so young players are not overwhelmed.

**Benefits.** Kids feel real trade-offs ("a choice that saves power today can cost oxygen tomorrow") instead of reading facts. Explorer mode shows the formulas for older siblings, parents and classrooms. It needs no account, can work offline after the first visit, and installs on Android.

**What we hope to achieve.** A child finishes a game understanding that astronauts must budget power, air, food and radiation, and that space weather is real and changes the risk.

**Tools.** HTML, CSS and JavaScript with no framework; Web Audio for generated music; NASA DONKI API; Capacitor for the Android app; GitHub Pages for hosting; a Node.js and jsdom playtest bot for balance testing. Testing: every version was checked with 480 automated play-throughs for balance. [Optional, only if true: add one anonymous sentence about children who tested it, with no names, photos or voices.]

## NASA Data
- **NASA DONKI, solar flare database (FLR endpoint, via api.nasa.gov).** The game requests the last 30 days of real flares. Each real flare becomes a flare event, with its real class and peak date shown on screen. Class X needs a level 3 shield, class M level 2, and class C level 1. The number of strong flares (M and X) also raises how often flare events occur. When online the game says "Live NASA DONKI". The last successful response is saved on the device, so a real flare is still shown offline and the game says "using real NASA DONKI data saved on <date>". If nothing is saved, it uses a small labeled archive of real flares (X9.3 on 2017-09-06, X8.7 on 2024-05-14, X9.0 on 2024-10-03).
- **NASA Curiosity rover RAD instrument (Mars Science Laboratory).** Published surface dose of about 0.64 to 0.67 mSv per day (Hassler et al., Science, 2014) sets Mars radiation in the game. This value is curated, not live.
- **NASA human research.** Twins Study, Veggie lettuce on the space station, water recovery, and bone loss in space inspired the collectible science cards. Facts are curated, not live.
- **NASA/JPL.** The 2018 Mars dust storm that ended the Opportunity rover mission inspired the dust mechanic.
We did not use OSDR or Artemis datasets in this version.

## Space Agency Partner Data and Other References
- **Quran verses (paraphrased English meanings)** in "Quran & Space" collectible cards, to connect space with the culture of our players. Meanings should be checked with a trusted translation.
- **Game-only numbers** (the Moon radiation rate of about 1 mSv per day, 8 power per panel, a 26 mSv game radiation budget, 25% shield reduction per level, 8 air and 8 food used per day) are simplified for play and are not real engineering values.
- **Images and fonts:** emoji from the device's system font and CSS shapes only. No third-party images, video or audio.
- **Music:** original, generated by code in the browser (organ-style loop). No samples or copyrighted music.
- **Software:** Capacitor (MIT) for Android packaging, jsdom (MIT) for testing, our own code under the MIT licence.
- No NASA logos or branding are used.

## Use of Super Intelligence (SI)
(2026 form wording. This answer is for data collection and is not seen by judges, but judges DO see the AI notices inside your project. Answer truthfully.)

Yes. We used Claude (Anthropic), a large language model chatbot, as a development assistant. Our team chose the challenge and directed the concept: a farm-style game for kids with a different themed page for power, air, food, radiation and crew, a mini-game on each page, naming the astronauts, simple wording, and Quran and space cards. Claude wrote most of the code (HTML, CSS, JavaScript), the code that generates the background music, the in-game text, an automated playtest bot and the project documents. When we asked for brainstorming, Claude also suggested some game mechanics (for example linking flare events to real DONKI flares, dust on the solar panels, daily missions and the animated explainer videos), which we reviewed, tested and accepted. We checked the science against the sources listed above. We did not use SI-generated images or video; all visuals are emoji and CSS. The music is a loop generated by code that was written with SI assistance. These notices appear in the code comments and metadata of `index.html`, in the README and in the project description. No NASA logos or branding were generated or used.

## Verification checklist (before you click "Submit for Judging")
- [ ] Every field filled, all in English
- [ ] Both links open in a private browser window with no login (GitHub Pages link and demo link)
- [ ] Demo is 30 seconds or less (a video may be in another language but MUST have English subtitles) or 7 slides or fewer including title and intro slides (slides must be in English)
- [ ] No images, video, audio or other likeness of anyone under 18 (no faces, voices or names), and no personal information
- [ ] Optional but recommended: request a Web Filter Classification for your new website (see HOSTING-GUIDE.md)
- [ ] All team members are confirmed at the same Local Event
- [ ] Tick "Terms and Conditions" and "Confirm All Work is Original", then "Submit for Judging" before the deadline
