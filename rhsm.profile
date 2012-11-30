MODULE NAME
    rhsm.profile


CLASSES

    class InvalidProfileType(exceptions.Exception)
        Thrown when attempting to get a profile of an unsupported type.

        Inherited methods
            exceptions.BaseException.__delattr__(...)
            exceptions.BaseException.__getattribute__(...)
            exceptions.BaseException.__getitem__(x, y)
            exceptions.BaseException.__getslice__(x, i, j)
            exceptions.Exception.__init__(...)
            exceptions.Exception.__new__(T, S, *...)
            exceptions.BaseException.__reduce__(...)
            exceptions.BaseException.__repr__(x)
            exceptions.BaseException.__setattr__(...)
            exceptions.BaseException.__setstate__(...)
            exceptions.BaseException.__str__(x)
            exceptions.BaseException.__unicode__(...)

    class Package(object)
        Represents a package installed on the system.


        __init__(self, name, version, release, arch, epoch=0, vendor=None,
                 from_dict=None)
            x.__init__(...) initializes x; see x.__class__.__doc__ for
            signature

        to_dict(self)
            Returns a dict representation of this packages info.

        __eq__(self, other)
            Compare one profile to another to determine if anything has
            changed.

        __str__(self)
            str(x)

        Inherited methods

    class RPMProfile(object)


        __init__(self, from_file=None)
            Load the RPM package profile from a given file, or from rpm
            itself.

            NOTE: from_file is a file descriptor, not a file name.

        __accumulateProfile(self, rpm_header_list)
            Accumulates list of installed rpm info
            Returns:
                list of package info dicts
            Return type:
                list

        collect(self)
            Returns a list of dicts containing the package info.

            See 'packages' member on this object for a list of actual
            objects.

            @return : list of package info dicts
            Return type:
                list

        __eq__(self, other)
            Compare one profile to another to determine if anything has
            changed.

        Inherited methods

FUNCTIONS

    get_profile(profile_type)
        Returns an instance of a Profile object

VARIABLES

    log = logging.getLogger(__name__)

    PROFILE_MAP = {"rpm": RPMProfile,}
