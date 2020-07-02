#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/afayed/kinova-demo/src/jaco_fk"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/afayed/kinova-demo/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/afayed/kinova-demo/install/lib/python2.7/dist-packages:/home/afayed/kinova-demo/build/jaco_fk/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/afayed/kinova-demo/build/jaco_fk" \
    "/usr/bin/python" \
    "/home/afayed/kinova-demo/src/jaco_fk/setup.py" \
    build --build-base "/home/afayed/kinova-demo/build/jaco_fk" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/afayed/kinova-demo/install" --install-scripts="/home/afayed/kinova-demo/install/bin"
