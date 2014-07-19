(
echo 'tar-ignore = .*'
for i in *; do
    [ "$i" = "drivers" -o "$i" = "debian" ] || echo tar-ignore = $i
done
for i in drivers/*; do
    [ "$i" = "drivers/platform" ] || echo tar-ignore = $i
done
for i in drivers/platform/*; do
    [ "$i" = "drivers/platform/x86" ] || echo tar-ignore = $i
done
for i in drivers/platform/x86/*; do
    [ "$i" = "drivers/platform/x86/thinkpad_acpi.c" ] || echo tar-ignore = $i
done
) | sort
