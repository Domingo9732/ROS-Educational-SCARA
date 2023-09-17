# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from scara_control/FinalJoints.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class FinalJoints(genpy.Message):
  _md5sum = "712247e92305cbb82bc845aeb83a58bf"
  _type = "scara_control/FinalJoints"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 position1
float64 position2
float64 position3
float64 position4
float64 position5
"""
  __slots__ = ['position1','position2','position3','position4','position5']
  _slot_types = ['float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       position1,position2,position3,position4,position5

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FinalJoints, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.position1 is None:
        self.position1 = 0.
      if self.position2 is None:
        self.position2 = 0.
      if self.position3 is None:
        self.position3 = 0.
      if self.position4 is None:
        self.position4 = 0.
      if self.position5 is None:
        self.position5 = 0.
    else:
      self.position1 = 0.
      self.position2 = 0.
      self.position3 = 0.
      self.position4 = 0.
      self.position5 = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_5d().pack(_x.position1, _x.position2, _x.position3, _x.position4, _x.position5))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 40
      (_x.position1, _x.position2, _x.position3, _x.position4, _x.position5,) = _get_struct_5d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_5d().pack(_x.position1, _x.position2, _x.position3, _x.position4, _x.position5))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 40
      (_x.position1, _x.position2, _x.position3, _x.position4, _x.position5,) = _get_struct_5d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5d = None
def _get_struct_5d():
    global _struct_5d
    if _struct_5d is None:
        _struct_5d = struct.Struct("<5d")
    return _struct_5d
