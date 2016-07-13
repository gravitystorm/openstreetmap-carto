# Release process

Throughout this document, replace $OLD_VERSION with the previous release and $NEW_VERSION with the next one. Versions should start with a v, e.g. `v2.40.0`.

# Deciding to release

1. Update your local master branch
2. Review the changes in git since the last release with a command like `git log --graph $OLD_VERSION...master` or online at https://github.com/gravitystorm/openstreetmap-carto/compare/$OLD_VERSION...master
3. Review [pull requests](https://github.com/gravitystorm/openstreetmap-carto/pulls) for anything that should be merged before release

Decide among the maintainers if a new release is due.

# Tagging a release
1. Check out master with git
2. Tag a release with `git tag -a $NEW_VERSION -m "Tag $NEW_VERSION"`. *Optional: Add `-s` and GPG sign the tag.*
3. Push the tag with `git push origin $NEW_VERSION`. If you use a different name for the gravitystorm/openstreetmap-carto remote, use it instead.
4. If there are any long-running development branches (e.g. `lua`) check them out and merge the new release with `git merge $NEW_RELEASE`.

# Notifications

1. Notify OSMF tile server admins [with an issue on OpenStreetMap Chef](https://github.com/openstreetmap/chef/issues/new?title=New openstreetmap-carto release, $NEW_RELEASE&body=A new version of openstreetmap-carto, [$NEW_RELEASE]%28https://github.com/gravitystorm/openstreetmap-carto/releases/tag/$NEW_RELEASE%29, has been released.). Add any deployment-related changes like new shapefiles or font changes to the ticket.

2. Write an email to dev@openstreetmap.org and talk@openstreetmap.org with the subject "OpenStreetMap Carto release $NEW_VERSION" and the body

```
Dear all,

Today, $NEW_VERSION of the openstreetmap-carto stylesheet (the default
stylesheet on openstreetmap.org) has been released.

If the tile server admins have rolled out the new version, add

  and rolled out to the openstreetmap.org servers. It might take a
  couple of days before all tiles show the new rendering.

Changes include
*A list of changes*

Thanks to all the contributors for this release.

If there are new contributors, add

  including <name>, <name>, [a] new contributor[s].

If there has been a major PR merged, additional thanks can be added

For a full list of commits, see
https://github.com/gravitystorm/openstreetmap-carto/compare/$OLD_VERSION...$NEW_VERSION

As always, we welcome any bug reports at
https://github.com/gravitystorm/openstreetmap-carto/issues.
```

3. Post an [openstreetmap.org diary entry](http://www.openstreetmap.org/diary/new) with the text from the email. Add links and other markdown if needed.

4. *Optional: Post on twitter with a link to the diary entry.*