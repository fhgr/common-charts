# App Template

## Background

Since Helm [library charts](https://helm.sh/docs/topics/library_charts/) cannot be
installed directly I have created a companion chart for the [common library](../../common-library/introduction).

## Usage

In order to use this template chart, you would deploy it as you would any other Helm chart.
By setting the desired values, the common library chart will render the desired resources.

Be sure to check out the [common library docs](../../common-library/introduction)
and its [`values.yaml`](https://github.com/fhgr/common-charts/tree/main/charts/library/common/values.yaml) for
more information about the available configuration options.

``` yaml title="values.yaml"
--8<-- "./examples/helm/values.yaml"
```

## Source code

The source code for the app template chart can be found
[here](https://github.com/fhgr/common-charts/tree/main/charts/other/app-template).
