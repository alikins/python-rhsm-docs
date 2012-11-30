MODULE NAME
    rhsm.profile


CLASSES

    class InvalidProfileType(exceptions.Exception)

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

    class RPMProfile(object)


        collect(self)
            Initialize rpm transaction and invoke the accumulation call
            @return : list of package info dicts
            Return type:
                list

        __accumulateProfile(self, rpm_header_list)
            Accumulates list of installed rpm info
            Returns:
                list of package info dicts
            Return type:
                list

        Inherited methods

    class GemProfile(object)

        Inherited methods

FUNCTIONS

    get_profile(type)
        Returns an instance of a Profile object

VARIABLES

    PROFILE_MAP = {"rpm": RPMProfile,}