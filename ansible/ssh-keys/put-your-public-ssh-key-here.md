# Public Key list

My ssh key:
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9LYvnXiZjYnQYRvBp2Swi3VmnN1gn3XtKkOmwWnNvhSQkdSZPIV0MNtne88qoQXTKxuzFVyPtNOuYMZ/Wvwh2Q2m4zrP42T+00F2x73Xjry8+FWUcBMs3yRTBNt1xCpAMAsOiGMCHwmfLnZW5ISRXtnK15KeeUHN9D8at7h55epny9L1pTk+0+zv60L7AQoUXn2Q8xbhJVRzfy6Q/lORa5vk1oeZqush18/OvW0iku3ex10Gc8sQs/570EQoy3zhbrhlAGtFzYuQ2SdsbrhBvNtua0C2a1jYZuhAgD/BFuzzBPqbVjF9Y7cQD2fD+Ui7pGl5M6WAe44LxbbmQcGvmkW9rpfgrpcR3rTCxJbECEocGnz3ZB4ovH/wgbNIgTbTFNKhaPgCp6xkSpgt54rcBi5VRkopZF+TgVmgOzM9VNF5w2P1NX1SCxFKBsH/UBuOR+qjaIY8RSKghacCRN3/AwhLLea5V4IEEi34mVUrRcY5qfeyU4/kkhyKqqA7GHC01vTyVu+ifwnjwngVvWoYYAW9L8hY10fWJYM1WAcgTlRKOoAIC87O40Q953h1aQA7A6VRTj21bRuBBlmgnWcTcuXaF1ECpB7lyfMOIf6XkRMSvV8X1JjQKFuwfoMO0SJSEqM1tIJ5rjfOmuZxCBgHg8cvt557vZMvr2l8hCI9rwQ== timea@timea-Inspiron-7560

Copy your PUBLIC key in a file in this folder.

- Name the file with the username that you'd like to use. Only use `a-z` and `-`, all lowercases, no spaces. Add the `.pub` extension.
- as the content of the file, paste your full PUBLIC key.

## Example

Check the existing file called `lorenzo.pub`. That has my (Lorenzo) public key:

```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCjKtNLbog6l5ibAscDBL59cGDeR75iWqV33O8jC9Y1d/o/KJ+IUSI/TVM11Zcvk1gKi87ylFwXd1JnVpfIEofIOgWQimdWO5QmSmD3kjRTjTCY2mC1pB/VpsOjCup6FcjIjIg090VW8QNvvg3UsqFS6CrVCsaggsF9lzan+YuUl3M1CnMkPs1ZQyP+USPvpkDNxfRsT3S4r6DYLg3296rIIdiV2Lh3SrC9EFGDo/Yd4mgn45Rd0EfLp9uIyBV0h31EXH3+fZ/zHleB+JyCVLlipcNzoBdperZeNCHmqGoAnl6SeihKUYklIJYXCGeLe098oxwMOQI8DZPuhQlgv5+hbDhYFYN3FggClyvXZUtYrtObH97+6VyX4DYHi7J14WtGISLg2/n8KpNxXFbXMCAoHU9WVrAL3ixLwx3ZKIjtbg8Resmg209KoLJSMhhXk37EhZwFWVkyH3r4Y6suMcukZWOwx42G8cxDt2rnb1GUAtL/hzJrqbwsoK1uZi2E85c= robota@aleph-null
```

Note how:

- it's a single line and it start with `ssh-rsa`. That is the format, and it can be different based on how you generated the key.
- the middle part is the [encoded](https://en.wikipedia.org/wiki/Base64) key
- the final part is `robota@aleph-null`, which is my username and current hostname.
