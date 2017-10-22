#!/bin/bash

#Because apparently once isn't always enough...
killall polybar
killall polybar

polybar -r bottom &!;
polybar -r top &!;
