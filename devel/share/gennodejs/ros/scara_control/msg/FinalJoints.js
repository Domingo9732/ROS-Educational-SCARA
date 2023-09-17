// Auto-generated. Do not edit!

// (in-package scara_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FinalJoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position1 = null;
      this.position2 = null;
      this.position3 = null;
      this.position4 = null;
      this.position5 = null;
    }
    else {
      if (initObj.hasOwnProperty('position1')) {
        this.position1 = initObj.position1
      }
      else {
        this.position1 = 0.0;
      }
      if (initObj.hasOwnProperty('position2')) {
        this.position2 = initObj.position2
      }
      else {
        this.position2 = 0.0;
      }
      if (initObj.hasOwnProperty('position3')) {
        this.position3 = initObj.position3
      }
      else {
        this.position3 = 0.0;
      }
      if (initObj.hasOwnProperty('position4')) {
        this.position4 = initObj.position4
      }
      else {
        this.position4 = 0.0;
      }
      if (initObj.hasOwnProperty('position5')) {
        this.position5 = initObj.position5
      }
      else {
        this.position5 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FinalJoints
    // Serialize message field [position1]
    bufferOffset = _serializer.float64(obj.position1, buffer, bufferOffset);
    // Serialize message field [position2]
    bufferOffset = _serializer.float64(obj.position2, buffer, bufferOffset);
    // Serialize message field [position3]
    bufferOffset = _serializer.float64(obj.position3, buffer, bufferOffset);
    // Serialize message field [position4]
    bufferOffset = _serializer.float64(obj.position4, buffer, bufferOffset);
    // Serialize message field [position5]
    bufferOffset = _serializer.float64(obj.position5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FinalJoints
    let len;
    let data = new FinalJoints(null);
    // Deserialize message field [position1]
    data.position1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position2]
    data.position2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position3]
    data.position3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position4]
    data.position4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position5]
    data.position5 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scara_control/FinalJoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '712247e92305cbb82bc845aeb83a58bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 position1
    float64 position2
    float64 position3
    float64 position4
    float64 position5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FinalJoints(null);
    if (msg.position1 !== undefined) {
      resolved.position1 = msg.position1;
    }
    else {
      resolved.position1 = 0.0
    }

    if (msg.position2 !== undefined) {
      resolved.position2 = msg.position2;
    }
    else {
      resolved.position2 = 0.0
    }

    if (msg.position3 !== undefined) {
      resolved.position3 = msg.position3;
    }
    else {
      resolved.position3 = 0.0
    }

    if (msg.position4 !== undefined) {
      resolved.position4 = msg.position4;
    }
    else {
      resolved.position4 = 0.0
    }

    if (msg.position5 !== undefined) {
      resolved.position5 = msg.position5;
    }
    else {
      resolved.position5 = 0.0
    }

    return resolved;
    }
};

module.exports = FinalJoints;
