# hello-world

TODO: Enter the cookbook description here.
Super simple cookbook to install apt, nginx and possibly a few other things. Really just trying to experiment with a workflow involving Packer and Berkshelf.

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['hello-world']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### hello-world::default

Include `hello-world` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[hello-world::default]"
  ]
}
```

## License and Authors

Author:: Chris Schomaker (<schomaker.c@gmail.com>)
