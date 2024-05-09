# How to setup a cci project

You should read up on the following resources:

0. https://trailhead.salesforce.com/content/learn/trails/build-applications-with-cumulusci
0. https://cumulusci.readthedocs.io/en/stable/index.html


To reach up to the state of this project, you need:

0. Install NodeJS
0. Install Python
0. Install pipx: `python -m pip install --user pipx`, `python -m pipx ensurepath`
0. Install pipenv: `pipx install pipenv`
0. Inspect and run `./setup.sh`. This will initiate the new pipenv environment and install `cumulusci`, `chromedriver` and the Salesforce cli.
0. Activate the pipenv environment shell using `pipenv shell`, this will create a new virtual shell with the enriched PATH providing access to all dependencies.
0. Create a Salesforce Environment following this [guide](https://trailhead.salesforce.com/content/learn/modules/cumulusci-setup/set-up-your-salesforce-environment):

    0. Login from the Salesforce CLI: `sf org login web --alias CCIDevHub`
0. Connect cumulus ci to your Github account following this [guide](https://trailhead.salesforce.com/content/learn/modules/cumulusci-setup/set-up-github-and-connect-to-cumulusci?trail_id=build-applications-with-cumulusci)

    0. Connect cumulus ci to Github: `cci service connect github github.com`
0. Create a new cumulus ci project following this [guide](https://trailhead.salesforce.com/content/learn/modules/community-project-development-with-cumulusci/set-up-the-project?trail_id=build-applications-with-cumulusci):

    0. `cci project init`
    0. `cci service connect devhub --project`; Username: CCIDevHub
0. Deploy the `dev` org using the `dev_org` cci flow, following this [guide](https://trailhead.salesforce.com/content/learn/modules/community-project-development-with-cumulusci/make-and-capture-customizations-to-your-app?trail_id=build-applications-with-cumulusci):

    0. `cci flow run dev_org --org dev`
0. Run the provided test: `cci task run robot --org dev`

## Github actions

0. `sf force:org:display --verbose -u {yourUsername@domain.com}`
0. Copy `Sfdx Auth Url` and create a Github Actions Secret in your repository
0. Inspect [feature-test.yml](.github/workflows/feature-test.yml) where we're using workflows provided by https://github.com/cumulus-actions/standard-workflows and copy to your repo


# cci_project

Add a brief description of this project here, in Markdown format.
It will be shown on the main page of the project's GitHub repository.

## Development

To work on this project in a scratch org:

1. [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html)
2. Run `cci flow run dev_org --org dev` to deploy this project.
3. Run `cci org browser dev` to open the org in your browser.