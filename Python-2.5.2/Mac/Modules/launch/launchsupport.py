# This script generates a Python interface for an Apple Macintosh Manager.
# It uses the "bgen" package to generate C code.
# The function specifications are generated by scanning the mamager's header file,
# using the "scantools" package (customized for this particular manager).

import string

# Declarations that change for each manager
MODNAME = '_Launch'                             # The name of the module
OBJECTNAME = 'UNUSED'                   # The basic name of the objects used here
KIND = 'Record'                         # Usually 'Ptr' or 'Handle'

# The following is *usually* unchanged but may still require tuning
MODPREFIX = 'Launch'                    # The prefix for module-wide routines
OBJECTTYPE = OBJECTNAME + KIND          # The C type used to represent them
OBJECTPREFIX = MODPREFIX + 'Obj'        # The prefix for object methods
INPUTFILE = string.lower(MODPREFIX) + 'gen.py' # The file generated by the scanner
OUTPUTFILE = MODNAME + "module.c"       # The file generated by this program

from macsupport import *

# Create the type objects
LSAcceptanceFlags = Type("LSAcceptanceFlags", "l")
LSInitializeFlags = Type("LSInitializeFlags", "l")
LSRequestedInfo = Type("LSRequestedInfo", "l")
LSRolesMask = Type("LSRolesMask", "l")
UniCharCount = Type("UniCharCount", "l")
OptCFStringRef = OpaqueByValueType("CFStringRef", "OptCFStringRefObj")
LSItemInfoRecord = OpaqueType("LSItemInfoRecord", "LSItemInfoRecord")

includestuff = includestuff + """
#if PY_VERSION_HEX < 0x02040000
PyObject *PyMac_GetOSErrException(void);
#endif

#include <ApplicationServices/ApplicationServices.h>

/*
** Optional CFStringRef. None will pass NULL
*/
static int
OptCFStringRefObj_Convert(PyObject *v, CFStringRef *spec)
{
        if (v == Py_None) {
                *spec = NULL;
                return 1;
        }
        return CFStringRefObj_Convert(v, spec);
}

PyObject *
OptCFStringRefObj_New(CFStringRef it)
{
        if (it == NULL) {
                Py_INCREF(Py_None);
                return Py_None;
        }
        return CFStringRefObj_New(it);
}

/*
** Convert LSItemInfoRecord to Python.
*/
PyObject *
LSItemInfoRecord_New(LSItemInfoRecord *it)
{
        return Py_BuildValue("{s:is:O&s:O&s:O&s:O&s:i}",
                "flags", it->flags,
                "filetype", PyMac_BuildOSType, it->filetype,
                "creator", PyMac_BuildOSType, it->creator,
                "extension", OptCFStringRefObj_New, it->extension,
                "iconFileName", OptCFStringRefObj_New, it->iconFileName,
                "kindID", it->kindID);
}
"""

# From here on it's basically all boiler plate...
execfile(string.lower(MODPREFIX) + 'typetest.py')

# Create the generator groups and link them
module = MacModule(MODNAME, MODPREFIX, includestuff, finalstuff, initstuff)
##object = MyObjectDefinition(OBJECTNAME, OBJECTPREFIX, OBJECTTYPE)
##module.addobject(object)

# Create the generator classes used to populate the lists
Function = OSErrFunctionGenerator
##Method = OSErrMethodGenerator

# Create and populate the lists
functions = []
##methods = []
execfile(INPUTFILE)

# add the populated lists to the generator groups
# (in a different wordl the scan program would generate this)
for f in functions: module.add(f)
##for f in methods: object.add(f)

# generate output (open the output file as late as possible)
SetOutputFileName(OUTPUTFILE)
module.generate()
