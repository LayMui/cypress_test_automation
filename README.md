
## download instructions

1. extract and `cd` to the downloaded dir in the cli
2. `npm install`

## run cypress

3.

- option 1:

* in the same dir, open cypress interface with `npm run cypress:open`
* click on `login.feature` on the interface and watch the magic happen!

- option 2:
* by default cypress is run in headless mode
* in the same dir, open cypress interface with `npm run cypress:run`
* to run in non-headless mode with browser: `npm run cypress:run-head`

# view results

4.

- if option 1 in 3. was executed, view in cypress-owned browser
- else, for either option in 3., test viewable as video/ screenshot in video/ screenshot folders within `~/cypress/videos` and `~/cypress/screenshots` respectively
