Xonacatl Cookbook
=================

This cookbook sets up [Xonacatl](https://github.com/tilezen/xonacatl), the "layers" server.

Requirements
------------

#### recipes
- `apt`
- `golang`
- `runit`
- `user`

Attributes
----------

#### xonacatl::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['xonacatl']['package']</tt></td>
    <td>String</td>
    <td>Package to install</td>
    <td><tt>github.com/tilezen/xonacatl/xonacatl_server</tt></td>
  </tr>
  <tr>
    <td><tt>['xonacatl']['cfg_file']</tt></td>
    <td>String</td>
    <td>Config file name</td>
    <td><tt>xonacatl.conf</tt></td>
  </tr>
  <tr>
    <td><tt>['xonacatl']['cfg_path']</tt></td>
    <td>String</td>
    <td>Config file location</td>
    <td><tt>/etc/xonacatl</tt></td>
  </tr>
  <tr>
    <td><tt>['xonacatl']['pattern']</tt></td>
    <td>String</td>
    <td>URL pattern to use for matching requests. Anything which doesn't match will return a 404. The Gorilla Mux syntax for URL patterns is used, and you may use any captures you like. The pattern captures *must* include `layers` and `fmt`.</td>
    <td><tt>/{layers}/{z:[0-9]+}/{x:[0-9]+}/{y:[0-9]+}.{fmt}</tt></td>
  </tr>
  <tr>
    <td><tt>['xonacatl']['host']</tt></td>
    <td>String</td>
    <td>Upstream URL pattern to use for fetching tiles. Note that the default value is not valid, and should be replaced with whatever you want. The interpolation variables available are those used in the pattern.</td>
    <td><tt>http://upstream.tile.server/{layers}/{z:[0-9]+}/{x:[0-9]+}/{y:[0-9]+}.{fmt}</tt></td>
  </tr>
  <tr>
    <td><tt>['xonacatl']['listen']</tt></td>
    <td>String</td>
    <td>The `interface:port` to listen on.</td>
    <td><tt>:80</tt></td>
  </tr>
  <tr>
    <td><tt>['xonacatl']['runit']['timeout']</tt></td>
    <td>Integer</td>
    <td>The time in seconds runit should wait to see if a service starts up successfully.</td>
    <td><tt>60</tt></td>
  </tr>
  <tr>
    <td><tt>['xonacatl']['user']['create_group']</tt></td>
    <td>Boolean</td>
    <td>Whether to create a group for the user.</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['xonacatl']['user']['enabled']</tt></td>
    <td>Boolean</td>
    <td>Whether to create a user for xonacatl.</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['xonacatl']['user']['home']</tt></td>
    <td>String</td>
    <td>The user's home directory location.</td>
    <td><tt>/home/xonacatl</tt></td>
  </tr>
  <tr>
    <td><tt>['xonacatl']['user']['user']</tt></td>
    <td>String</td>
    <td>The user's name.</td>
    <td><tt>xonacatl</tt></td>
  </tr>
</table>

Contributing
------------

We welcome contributions to xonacatl's Chef recipe. To contribute, please use the standard Github workflow:

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

Copyright Mapzen 2016. Available under the MIT license. See LICENSE for more information.
