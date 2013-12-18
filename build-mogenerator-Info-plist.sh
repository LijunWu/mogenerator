rm -f $TMPDIR/mogenerator-Info.plist
/usr/libexec/PlistBuddy \
	-c "Clear" \
	-c "Import :human.h.motemplate templates/human.h.motemplate" \
	-c "Import :human.m.motemplate templates/human.m.motemplate" \
	-c "Import :human.swift.motemplate templates/human.swift.motemplate" \
	-c "Import :machine.h.motemplate templates/machine.h.motemplate" \
	-c "Import :machine.m.motemplate templates/machine.m.motemplate" \
	-c "Import :machine.swift.motemplate templates/machine.swift.motemplate" \
    -c "Import :human.object.h.motemplate templates/human.object.h.motemplate" \
    -c "Import :human.object.m.motemplate templates/human.object.m.motemplate" \
    -c "Import :machine.object.h.motemplate templates/machine.object.h.motemplate" \
    -c "Import :machine.object.m.motemplate templates/machine.object.m.motemplate" \
	$TMPDIR/mogenerator-Info.plist
