# Home Assistant Add-on: Shairport Sync

Based on the excellent [Shairport Sync](https://github.com/mikebrady/shairport-sync) by [Mike Brady](https://github.com/mikebrady).

## Configuration

You can override the command-line options passed to Shairport Sync using the `extra_args` option in the Home Assistant add-on UI. For example, to enable verbose logging, set:

```
extra_args: "-v"
```

The default configuration file is always used: `/addon_config/shairport-sync.conf`.

See the [shairport sync config file](https://github.com/mikebrady/shairport-sync/blob/master/scripts/shairport-sync.conf) for all possible values.
