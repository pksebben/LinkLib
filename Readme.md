# Recurse Link Library frontend

At the moment, this is a simple store of link data from Zulip.  When it grows up, it wants to be a persistent, discoverable, interesting nexus of high-value information that provides recursers with easy access to the very best resources, always.


# Directory Structure

The project is split into deployment, link scraping, and site management folders.

/site/ is everything that is needed to run the frontend, which also contains the interfaces necessary for the frontend to communicate with the DB (the database itself is currently housed here, although that should likely change in a future update.)

# Populating the DB

LinkLib currently relies on a set of data populated by the [Zcrape](https://github.com/pksebben/Zcrape) module.  That module includes a shell script that will greedily pull *all* link data in *all* Zulip messages when pointed at a Zulip subdomain with the appropriate api credentials (see Zcrape documentation for further instructions). The workflow (which will change as the project matures) is such:

1. Run shell script included in Zcrape
2. Cull links and populate db by running Zcrape
3. Move the resulting sqlite db into the LinkLib directory
4. Profit.

