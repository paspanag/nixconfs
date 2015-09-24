
{ ... }:

{
    security.sudo.extraConfig = ''
        peter ALL = (root) NOPASSWD: /run/current-system/sw/bin/light
        #peter ALL = (root) NOPASSWD: /home/peter/.nix-profile/bin/light
    '';
}
