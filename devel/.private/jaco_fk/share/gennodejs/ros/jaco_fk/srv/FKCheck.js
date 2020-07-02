// Auto-generated. Do not edit!

// (in-package jaco_fk.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class FKCheckRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_1_req = null;
      this.joint_2_req = null;
      this.joint_3_req = null;
      this.joint_4_req = null;
      this.joint_5_req = null;
      this.joint_6_req = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_1_req')) {
        this.joint_1_req = initObj.joint_1_req
      }
      else {
        this.joint_1_req = 0.0;
      }
      if (initObj.hasOwnProperty('joint_2_req')) {
        this.joint_2_req = initObj.joint_2_req
      }
      else {
        this.joint_2_req = 0.0;
      }
      if (initObj.hasOwnProperty('joint_3_req')) {
        this.joint_3_req = initObj.joint_3_req
      }
      else {
        this.joint_3_req = 0.0;
      }
      if (initObj.hasOwnProperty('joint_4_req')) {
        this.joint_4_req = initObj.joint_4_req
      }
      else {
        this.joint_4_req = 0.0;
      }
      if (initObj.hasOwnProperty('joint_5_req')) {
        this.joint_5_req = initObj.joint_5_req
      }
      else {
        this.joint_5_req = 0.0;
      }
      if (initObj.hasOwnProperty('joint_6_req')) {
        this.joint_6_req = initObj.joint_6_req
      }
      else {
        this.joint_6_req = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FKCheckRequest
    // Serialize message field [joint_1_req]
    bufferOffset = _serializer.float64(obj.joint_1_req, buffer, bufferOffset);
    // Serialize message field [joint_2_req]
    bufferOffset = _serializer.float64(obj.joint_2_req, buffer, bufferOffset);
    // Serialize message field [joint_3_req]
    bufferOffset = _serializer.float64(obj.joint_3_req, buffer, bufferOffset);
    // Serialize message field [joint_4_req]
    bufferOffset = _serializer.float64(obj.joint_4_req, buffer, bufferOffset);
    // Serialize message field [joint_5_req]
    bufferOffset = _serializer.float64(obj.joint_5_req, buffer, bufferOffset);
    // Serialize message field [joint_6_req]
    bufferOffset = _serializer.float64(obj.joint_6_req, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FKCheckRequest
    let len;
    let data = new FKCheckRequest(null);
    // Deserialize message field [joint_1_req]
    data.joint_1_req = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_2_req]
    data.joint_2_req = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_3_req]
    data.joint_3_req = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_4_req]
    data.joint_4_req = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_5_req]
    data.joint_5_req = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_6_req]
    data.joint_6_req = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jaco_fk/FKCheckRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '665ac09a6ac963a263289d78f765ccd4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 joint_1_req
    float64 joint_2_req
    float64 joint_3_req
    float64 joint_4_req
    float64 joint_5_req
    float64 joint_6_req
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FKCheckRequest(null);
    if (msg.joint_1_req !== undefined) {
      resolved.joint_1_req = msg.joint_1_req;
    }
    else {
      resolved.joint_1_req = 0.0
    }

    if (msg.joint_2_req !== undefined) {
      resolved.joint_2_req = msg.joint_2_req;
    }
    else {
      resolved.joint_2_req = 0.0
    }

    if (msg.joint_3_req !== undefined) {
      resolved.joint_3_req = msg.joint_3_req;
    }
    else {
      resolved.joint_3_req = 0.0
    }

    if (msg.joint_4_req !== undefined) {
      resolved.joint_4_req = msg.joint_4_req;
    }
    else {
      resolved.joint_4_req = 0.0
    }

    if (msg.joint_5_req !== undefined) {
      resolved.joint_5_req = msg.joint_5_req;
    }
    else {
      resolved.joint_5_req = 0.0
    }

    if (msg.joint_6_req !== undefined) {
      resolved.joint_6_req = msg.joint_6_req;
    }
    else {
      resolved.joint_6_req = 0.0
    }

    return resolved;
    }
};

class FKCheckResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.in_collision = null;
    }
    else {
      if (initObj.hasOwnProperty('in_collision')) {
        this.in_collision = initObj.in_collision
      }
      else {
        this.in_collision = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FKCheckResponse
    // Serialize message field [in_collision]
    bufferOffset = _serializer.bool(obj.in_collision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FKCheckResponse
    let len;
    let data = new FKCheckResponse(null);
    // Deserialize message field [in_collision]
    data.in_collision = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jaco_fk/FKCheckResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '386d400a9b9180bf5b31ccc793f8e539';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool in_collision
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FKCheckResponse(null);
    if (msg.in_collision !== undefined) {
      resolved.in_collision = msg.in_collision;
    }
    else {
      resolved.in_collision = false
    }

    return resolved;
    }
};

module.exports = {
  Request: FKCheckRequest,
  Response: FKCheckResponse,
  md5sum() { return '1640fd7a9e24c82d413046f60fbdc596'; },
  datatype() { return 'jaco_fk/FKCheck'; }
};
