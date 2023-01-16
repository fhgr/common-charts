# How this works

## loader/ folder

All files under `loader/` directory such as `loader/_generate.tpl` takes all values from `render/` folder and includes them.
The `loader/_all.tpl` file takes all included values from `loader/_generate.tpl` and `loader/_init.tpl` and includes them.

## render/ folder

Grabs the content of the `values.yaml` file from the specified section such as `configMaps:` and injects the values there.

## classes/ folder

All files from `classes/` are the actual k8s manifests.
Additionally, it uses the `lib/` files to inject name overrides.

## lib/ folder

The files under the `lib/` folder returns names such as the primary ingress name, chart name etc.

## values/ folder

Merges the local chart and common chart values.
