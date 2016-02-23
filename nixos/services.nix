{ ... }:

{
    services.redshift = {
        enable = true;
        latitude = "51";
        longitude = "-114";
    };


#    services.sshd.enable = true;

    #services.acpid = {
    #    enable = true;
    #    lidEventCommands = ''
    #        if grep -q closed /proc/acpi/button/lid/LID/state; then
    #            systemctl suspend
    #        fi
    #    '';
    #    powerEventCommands = "systemctl poweroff";
    #};
}
