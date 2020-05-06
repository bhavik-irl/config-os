#!/bin/sh
workdir=/home/bhavik/Workspace/config-os/.themes/Mojave-dark-solid/gtk-3.0
gst=gtk.gresource

# gresource list $gst

for r in `gresource list $gst`; do
        gresource extract $gst $r >$workdir/${r#\/org\/gnome\/Mojave-theme/}
done
