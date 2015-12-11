
{ ... }:

{
    security.sudo.extraConfig = ''
        peter ALL = (root) NOPASSWD: /run/current-system/sw/bin/light
    '';
}
