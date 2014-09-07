export LC_ALL=C.UTF-8
(
echo 'tar-ignore = .*'
for i in *; do
    [ "$i" = "drivers" -o "$i" = "debian" -o "$i" = "Makefile" -o "$i" = "Documentation" ] || echo tar-ignore = $i
done
for i in Documentation/*; do
    [ "$i" = "Documentation/laptops" ] || echo tar-ignore = $i
done
for i in Documentation/laptops/*; do
    [ "$i" = "Documentation/laptops/thinkpad-acpi.txt" ] || echo tar-ignore = $i
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
