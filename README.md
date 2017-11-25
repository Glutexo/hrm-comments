# Human Resource Machine comment generator #

This is a comment image generator for [Human Resource Machine](https://tomorrowcorporation.com/humanresourcemachine), a great game not only for programmers.

## About ##

The game allows you from some level on to add comments to your programs. These comments are one-color vector images of a fixed size. They can be exported and imported along with the program.

The exported program is a plain text file. The comments are in a proprietary binary format. It is compressed (using [DEFLATE](https://en.wikipedia.org/wiki/DEFLATE) algorithm) and [Base64](https://en.wikipedia.org/wiki/Base64) encoded. It can look like this:  

```
-- HUMAN RESOURCE MACHINE PROGRAM --

    COMMENT  0


DEFINE COMMENT 0
eJzzZmBgSOU1OvCQT227k9SPqVrKtxpmaHqXsRtsSa0zXhNfYLEi5qBnv1dmVp3d9QIW56PlihGWNe7F
ZrXeZasaS6esaqyavrypbpZC64odDGCzzAn8e08ck505xEmoy0HZcO3HGRK3LDvbYbWrrMlWrtOla7Y
sbRZaxdI7XygnpTZoqu79jTNvX22bta+G3WzzG8zzNl8h2W+/j3BFfr35m/adnvN7qCLB09dvuBzyf9S
yA2vK7fu6N9LfSL+PPN5xo/nT0HmzNCsmg6i1VWWRC5WnR0spTnZd4JOv1ebQb/Xewu16GyrLanZVva5
IDWMzO7FDcwhNQWcP6aC+C+51aKf8TxuA7GzuO/df8P1/Ok7ztcvVNn+/weJ3RZ4/OicaNuf02Ic/xhG
wSgYhgAAU/aDww;

```

![Comment example](https://raw.githubusercontent.com/Glutexo/hrm-comments/master/resources/comment-example.png)

## Usage ##

Run this in a project directory to make a comment with a rectangle.

```ruby
$: << File.join(Dir.pwd, 'lib')
require('hrm-comments')

module HRMComments
  polylines = Polyline.new([[5000, 5000],
                            [60500, 5000],
                            [60500, 60500],
                            [5000, 60500],
                            [5000, 5000]])
  comment = Comment.new([polylines])
  puts(comment)
end
```

The output will be this comment string:

```
eJxjY2Bg6BDuEA55A8IQEsRnGAWjYBSMCAAAVEYIqQ;
```

## Credit ##

Thanks [szendont](https://steamcommunity.com/id/szendont) for the cool [infographics](http://i.imgur.com/ACRhCtF.png) posted to a [discussion thread](https://steamcommunity.com/app/375820/discussions/0/483367798509083018/) on [Steam Community](https://steamcommunity.com/app/375820/). It helped me a lot to make this program. Köszönöm!
