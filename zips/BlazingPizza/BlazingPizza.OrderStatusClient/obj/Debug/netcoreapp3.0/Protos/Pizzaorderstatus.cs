// <auto-generated>
//     Generated by the protocol buffer compiler.  DO NOT EDIT!
//     source: Protos/pizzaorderstatus.proto
// </auto-generated>
#pragma warning disable 1591, 0612, 3021
#region Designer generated code

using pb = global::Google.Protobuf;
using pbc = global::Google.Protobuf.Collections;
using pbr = global::Google.Protobuf.Reflection;
using scg = global::System.Collections.Generic;
namespace BlazingPizza.OrderStatusUpdates {

  /// <summary>Holder for reflection information generated from Protos/pizzaorderstatus.proto</summary>
  public static partial class PizzaorderstatusReflection {

    #region Descriptor
    /// <summary>File descriptor for Protos/pizzaorderstatus.proto</summary>
    public static pbr::FileDescriptor Descriptor {
      get { return descriptor; }
    }
    private static pbr::FileDescriptor descriptor;

    static PizzaorderstatusReflection() {
      byte[] descriptorData = global::System.Convert.FromBase64String(
          string.Concat(
            "Ch1Qcm90b3MvcGl6emFvcmRlcnN0YXR1cy5wcm90bxIfQmxhemluZ1Bpenph",
            "Lk9yZGVyU3RhdHVzVXBkYXRlcyJgCgxTdGF0dXNVcGRhdGUSEQoJUmVxdWVz",
            "dElkGAEgASgFEg4KBlVzZXJJZBgCIAEoCRISCgpTdGF0dXNUZXh0GAMgASgJ",
            "EgsKA0xhdBgEIAEoARIMCgRMb25nGAUgASgBIkcKDkdlbmVyaWNSZXF1ZXN0",
            "EhEKCVJlcXVlc3RJZBgBIAEoBRIOCgZVc2VySWQYAiABKAkSEgoKU3RhdHVz",
            "VGV4dBgDIAEoCSIWCgNBY2sSDwoHbWVzc2FnZRgBIAEoCSLKAQoHUmVxdWVz",
            "dBI/CgZzdGF0dXMYASABKAsyLS5CbGF6aW5nUGl6emEuT3JkZXJTdGF0dXNV",
            "cGRhdGVzLlN0YXR1c1VwZGF0ZUgAEj4KA3JlcRgCIAEoCzIvLkJsYXppbmdQ",
            "aXp6YS5PcmRlclN0YXR1c1VwZGF0ZXMuR2VuZXJpY1JlcXVlc3RIABIzCgNh",
            "Y2sYAyABKAsyJC5CbGF6aW5nUGl6emEuT3JkZXJTdGF0dXNVcGRhdGVzLkFj",
            "a0gAQgkKB3JlcXVlc3QydwoQUGl6emFPcmRlclN0YXR1cxJjCgpTZW5kU3Rh",
            "dHVzEi0uQmxhemluZ1BpenphLk9yZGVyU3RhdHVzVXBkYXRlcy5TdGF0dXNV",
            "cGRhdGUaJC5CbGF6aW5nUGl6emEuT3JkZXJTdGF0dXNVcGRhdGVzLkFjayIA",
            "YgZwcm90bzM="));
      descriptor = pbr::FileDescriptor.FromGeneratedCode(descriptorData,
          new pbr::FileDescriptor[] { },
          new pbr::GeneratedClrTypeInfo(null, null, new pbr::GeneratedClrTypeInfo[] {
            new pbr::GeneratedClrTypeInfo(typeof(global::BlazingPizza.OrderStatusUpdates.StatusUpdate), global::BlazingPizza.OrderStatusUpdates.StatusUpdate.Parser, new[]{ "RequestId", "UserId", "StatusText", "Lat", "Long" }, null, null, null, null),
            new pbr::GeneratedClrTypeInfo(typeof(global::BlazingPizza.OrderStatusUpdates.GenericRequest), global::BlazingPizza.OrderStatusUpdates.GenericRequest.Parser, new[]{ "RequestId", "UserId", "StatusText" }, null, null, null, null),
            new pbr::GeneratedClrTypeInfo(typeof(global::BlazingPizza.OrderStatusUpdates.Ack), global::BlazingPizza.OrderStatusUpdates.Ack.Parser, new[]{ "Message" }, null, null, null, null),
            new pbr::GeneratedClrTypeInfo(typeof(global::BlazingPizza.OrderStatusUpdates.Request), global::BlazingPizza.OrderStatusUpdates.Request.Parser, new[]{ "Status", "Req", "Ack" }, new[]{ "Request" }, null, null, null)
          }));
    }
    #endregion

  }
  #region Messages
  public sealed partial class StatusUpdate : pb::IMessage<StatusUpdate>
  #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      , pb::IBufferMessage
  #endif
  {
    private static readonly pb::MessageParser<StatusUpdate> _parser = new pb::MessageParser<StatusUpdate>(() => new StatusUpdate());
    private pb::UnknownFieldSet _unknownFields;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public static pb::MessageParser<StatusUpdate> Parser { get { return _parser; } }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public static pbr::MessageDescriptor Descriptor {
      get { return global::BlazingPizza.OrderStatusUpdates.PizzaorderstatusReflection.Descriptor.MessageTypes[0]; }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    pbr::MessageDescriptor pb::IMessage.Descriptor {
      get { return Descriptor; }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public StatusUpdate() {
      OnConstruction();
    }

    partial void OnConstruction();

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public StatusUpdate(StatusUpdate other) : this() {
      requestId_ = other.requestId_;
      userId_ = other.userId_;
      statusText_ = other.statusText_;
      lat_ = other.lat_;
      long_ = other.long_;
      _unknownFields = pb::UnknownFieldSet.Clone(other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public StatusUpdate Clone() {
      return new StatusUpdate(this);
    }

    /// <summary>Field number for the "RequestId" field.</summary>
    public const int RequestIdFieldNumber = 1;
    private int requestId_;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public int RequestId {
      get { return requestId_; }
      set {
        requestId_ = value;
      }
    }

    /// <summary>Field number for the "UserId" field.</summary>
    public const int UserIdFieldNumber = 2;
    private string userId_ = "";
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public string UserId {
      get { return userId_; }
      set {
        userId_ = pb::ProtoPreconditions.CheckNotNull(value, "value");
      }
    }

    /// <summary>Field number for the "StatusText" field.</summary>
    public const int StatusTextFieldNumber = 3;
    private string statusText_ = "";
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public string StatusText {
      get { return statusText_; }
      set {
        statusText_ = pb::ProtoPreconditions.CheckNotNull(value, "value");
      }
    }

    /// <summary>Field number for the "Lat" field.</summary>
    public const int LatFieldNumber = 4;
    private double lat_;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public double Lat {
      get { return lat_; }
      set {
        lat_ = value;
      }
    }

    /// <summary>Field number for the "Long" field.</summary>
    public const int LongFieldNumber = 5;
    private double long_;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public double Long {
      get { return long_; }
      set {
        long_ = value;
      }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override bool Equals(object other) {
      return Equals(other as StatusUpdate);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public bool Equals(StatusUpdate other) {
      if (ReferenceEquals(other, null)) {
        return false;
      }
      if (ReferenceEquals(other, this)) {
        return true;
      }
      if (RequestId != other.RequestId) return false;
      if (UserId != other.UserId) return false;
      if (StatusText != other.StatusText) return false;
      if (!pbc::ProtobufEqualityComparers.BitwiseDoubleEqualityComparer.Equals(Lat, other.Lat)) return false;
      if (!pbc::ProtobufEqualityComparers.BitwiseDoubleEqualityComparer.Equals(Long, other.Long)) return false;
      return Equals(_unknownFields, other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override int GetHashCode() {
      int hash = 1;
      if (RequestId != 0) hash ^= RequestId.GetHashCode();
      if (UserId.Length != 0) hash ^= UserId.GetHashCode();
      if (StatusText.Length != 0) hash ^= StatusText.GetHashCode();
      if (Lat != 0D) hash ^= pbc::ProtobufEqualityComparers.BitwiseDoubleEqualityComparer.GetHashCode(Lat);
      if (Long != 0D) hash ^= pbc::ProtobufEqualityComparers.BitwiseDoubleEqualityComparer.GetHashCode(Long);
      if (_unknownFields != null) {
        hash ^= _unknownFields.GetHashCode();
      }
      return hash;
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override string ToString() {
      return pb::JsonFormatter.ToDiagnosticString(this);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void WriteTo(pb::CodedOutputStream output) {
    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      output.WriteRawMessage(this);
    #else
      if (RequestId != 0) {
        output.WriteRawTag(8);
        output.WriteInt32(RequestId);
      }
      if (UserId.Length != 0) {
        output.WriteRawTag(18);
        output.WriteString(UserId);
      }
      if (StatusText.Length != 0) {
        output.WriteRawTag(26);
        output.WriteString(StatusText);
      }
      if (Lat != 0D) {
        output.WriteRawTag(33);
        output.WriteDouble(Lat);
      }
      if (Long != 0D) {
        output.WriteRawTag(41);
        output.WriteDouble(Long);
      }
      if (_unknownFields != null) {
        _unknownFields.WriteTo(output);
      }
    #endif
    }

    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    void pb::IBufferMessage.InternalWriteTo(ref pb::WriteContext output) {
      if (RequestId != 0) {
        output.WriteRawTag(8);
        output.WriteInt32(RequestId);
      }
      if (UserId.Length != 0) {
        output.WriteRawTag(18);
        output.WriteString(UserId);
      }
      if (StatusText.Length != 0) {
        output.WriteRawTag(26);
        output.WriteString(StatusText);
      }
      if (Lat != 0D) {
        output.WriteRawTag(33);
        output.WriteDouble(Lat);
      }
      if (Long != 0D) {
        output.WriteRawTag(41);
        output.WriteDouble(Long);
      }
      if (_unknownFields != null) {
        _unknownFields.WriteTo(ref output);
      }
    }
    #endif

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public int CalculateSize() {
      int size = 0;
      if (RequestId != 0) {
        size += 1 + pb::CodedOutputStream.ComputeInt32Size(RequestId);
      }
      if (UserId.Length != 0) {
        size += 1 + pb::CodedOutputStream.ComputeStringSize(UserId);
      }
      if (StatusText.Length != 0) {
        size += 1 + pb::CodedOutputStream.ComputeStringSize(StatusText);
      }
      if (Lat != 0D) {
        size += 1 + 8;
      }
      if (Long != 0D) {
        size += 1 + 8;
      }
      if (_unknownFields != null) {
        size += _unknownFields.CalculateSize();
      }
      return size;
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void MergeFrom(StatusUpdate other) {
      if (other == null) {
        return;
      }
      if (other.RequestId != 0) {
        RequestId = other.RequestId;
      }
      if (other.UserId.Length != 0) {
        UserId = other.UserId;
      }
      if (other.StatusText.Length != 0) {
        StatusText = other.StatusText;
      }
      if (other.Lat != 0D) {
        Lat = other.Lat;
      }
      if (other.Long != 0D) {
        Long = other.Long;
      }
      _unknownFields = pb::UnknownFieldSet.MergeFrom(_unknownFields, other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void MergeFrom(pb::CodedInputStream input) {
    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      input.ReadRawMessage(this);
    #else
      uint tag;
      while ((tag = input.ReadTag()) != 0) {
        switch(tag) {
          default:
            _unknownFields = pb::UnknownFieldSet.MergeFieldFrom(_unknownFields, input);
            break;
          case 8: {
            RequestId = input.ReadInt32();
            break;
          }
          case 18: {
            UserId = input.ReadString();
            break;
          }
          case 26: {
            StatusText = input.ReadString();
            break;
          }
          case 33: {
            Lat = input.ReadDouble();
            break;
          }
          case 41: {
            Long = input.ReadDouble();
            break;
          }
        }
      }
    #endif
    }

    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    void pb::IBufferMessage.InternalMergeFrom(ref pb::ParseContext input) {
      uint tag;
      while ((tag = input.ReadTag()) != 0) {
        switch(tag) {
          default:
            _unknownFields = pb::UnknownFieldSet.MergeFieldFrom(_unknownFields, ref input);
            break;
          case 8: {
            RequestId = input.ReadInt32();
            break;
          }
          case 18: {
            UserId = input.ReadString();
            break;
          }
          case 26: {
            StatusText = input.ReadString();
            break;
          }
          case 33: {
            Lat = input.ReadDouble();
            break;
          }
          case 41: {
            Long = input.ReadDouble();
            break;
          }
        }
      }
    }
    #endif

  }

  public sealed partial class GenericRequest : pb::IMessage<GenericRequest>
  #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      , pb::IBufferMessage
  #endif
  {
    private static readonly pb::MessageParser<GenericRequest> _parser = new pb::MessageParser<GenericRequest>(() => new GenericRequest());
    private pb::UnknownFieldSet _unknownFields;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public static pb::MessageParser<GenericRequest> Parser { get { return _parser; } }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public static pbr::MessageDescriptor Descriptor {
      get { return global::BlazingPizza.OrderStatusUpdates.PizzaorderstatusReflection.Descriptor.MessageTypes[1]; }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    pbr::MessageDescriptor pb::IMessage.Descriptor {
      get { return Descriptor; }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public GenericRequest() {
      OnConstruction();
    }

    partial void OnConstruction();

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public GenericRequest(GenericRequest other) : this() {
      requestId_ = other.requestId_;
      userId_ = other.userId_;
      statusText_ = other.statusText_;
      _unknownFields = pb::UnknownFieldSet.Clone(other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public GenericRequest Clone() {
      return new GenericRequest(this);
    }

    /// <summary>Field number for the "RequestId" field.</summary>
    public const int RequestIdFieldNumber = 1;
    private int requestId_;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public int RequestId {
      get { return requestId_; }
      set {
        requestId_ = value;
      }
    }

    /// <summary>Field number for the "UserId" field.</summary>
    public const int UserIdFieldNumber = 2;
    private string userId_ = "";
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public string UserId {
      get { return userId_; }
      set {
        userId_ = pb::ProtoPreconditions.CheckNotNull(value, "value");
      }
    }

    /// <summary>Field number for the "StatusText" field.</summary>
    public const int StatusTextFieldNumber = 3;
    private string statusText_ = "";
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public string StatusText {
      get { return statusText_; }
      set {
        statusText_ = pb::ProtoPreconditions.CheckNotNull(value, "value");
      }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override bool Equals(object other) {
      return Equals(other as GenericRequest);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public bool Equals(GenericRequest other) {
      if (ReferenceEquals(other, null)) {
        return false;
      }
      if (ReferenceEquals(other, this)) {
        return true;
      }
      if (RequestId != other.RequestId) return false;
      if (UserId != other.UserId) return false;
      if (StatusText != other.StatusText) return false;
      return Equals(_unknownFields, other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override int GetHashCode() {
      int hash = 1;
      if (RequestId != 0) hash ^= RequestId.GetHashCode();
      if (UserId.Length != 0) hash ^= UserId.GetHashCode();
      if (StatusText.Length != 0) hash ^= StatusText.GetHashCode();
      if (_unknownFields != null) {
        hash ^= _unknownFields.GetHashCode();
      }
      return hash;
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override string ToString() {
      return pb::JsonFormatter.ToDiagnosticString(this);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void WriteTo(pb::CodedOutputStream output) {
    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      output.WriteRawMessage(this);
    #else
      if (RequestId != 0) {
        output.WriteRawTag(8);
        output.WriteInt32(RequestId);
      }
      if (UserId.Length != 0) {
        output.WriteRawTag(18);
        output.WriteString(UserId);
      }
      if (StatusText.Length != 0) {
        output.WriteRawTag(26);
        output.WriteString(StatusText);
      }
      if (_unknownFields != null) {
        _unknownFields.WriteTo(output);
      }
    #endif
    }

    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    void pb::IBufferMessage.InternalWriteTo(ref pb::WriteContext output) {
      if (RequestId != 0) {
        output.WriteRawTag(8);
        output.WriteInt32(RequestId);
      }
      if (UserId.Length != 0) {
        output.WriteRawTag(18);
        output.WriteString(UserId);
      }
      if (StatusText.Length != 0) {
        output.WriteRawTag(26);
        output.WriteString(StatusText);
      }
      if (_unknownFields != null) {
        _unknownFields.WriteTo(ref output);
      }
    }
    #endif

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public int CalculateSize() {
      int size = 0;
      if (RequestId != 0) {
        size += 1 + pb::CodedOutputStream.ComputeInt32Size(RequestId);
      }
      if (UserId.Length != 0) {
        size += 1 + pb::CodedOutputStream.ComputeStringSize(UserId);
      }
      if (StatusText.Length != 0) {
        size += 1 + pb::CodedOutputStream.ComputeStringSize(StatusText);
      }
      if (_unknownFields != null) {
        size += _unknownFields.CalculateSize();
      }
      return size;
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void MergeFrom(GenericRequest other) {
      if (other == null) {
        return;
      }
      if (other.RequestId != 0) {
        RequestId = other.RequestId;
      }
      if (other.UserId.Length != 0) {
        UserId = other.UserId;
      }
      if (other.StatusText.Length != 0) {
        StatusText = other.StatusText;
      }
      _unknownFields = pb::UnknownFieldSet.MergeFrom(_unknownFields, other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void MergeFrom(pb::CodedInputStream input) {
    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      input.ReadRawMessage(this);
    #else
      uint tag;
      while ((tag = input.ReadTag()) != 0) {
        switch(tag) {
          default:
            _unknownFields = pb::UnknownFieldSet.MergeFieldFrom(_unknownFields, input);
            break;
          case 8: {
            RequestId = input.ReadInt32();
            break;
          }
          case 18: {
            UserId = input.ReadString();
            break;
          }
          case 26: {
            StatusText = input.ReadString();
            break;
          }
        }
      }
    #endif
    }

    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    void pb::IBufferMessage.InternalMergeFrom(ref pb::ParseContext input) {
      uint tag;
      while ((tag = input.ReadTag()) != 0) {
        switch(tag) {
          default:
            _unknownFields = pb::UnknownFieldSet.MergeFieldFrom(_unknownFields, ref input);
            break;
          case 8: {
            RequestId = input.ReadInt32();
            break;
          }
          case 18: {
            UserId = input.ReadString();
            break;
          }
          case 26: {
            StatusText = input.ReadString();
            break;
          }
        }
      }
    }
    #endif

  }

  public sealed partial class Ack : pb::IMessage<Ack>
  #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      , pb::IBufferMessage
  #endif
  {
    private static readonly pb::MessageParser<Ack> _parser = new pb::MessageParser<Ack>(() => new Ack());
    private pb::UnknownFieldSet _unknownFields;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public static pb::MessageParser<Ack> Parser { get { return _parser; } }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public static pbr::MessageDescriptor Descriptor {
      get { return global::BlazingPizza.OrderStatusUpdates.PizzaorderstatusReflection.Descriptor.MessageTypes[2]; }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    pbr::MessageDescriptor pb::IMessage.Descriptor {
      get { return Descriptor; }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public Ack() {
      OnConstruction();
    }

    partial void OnConstruction();

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public Ack(Ack other) : this() {
      message_ = other.message_;
      _unknownFields = pb::UnknownFieldSet.Clone(other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public Ack Clone() {
      return new Ack(this);
    }

    /// <summary>Field number for the "message" field.</summary>
    public const int MessageFieldNumber = 1;
    private string message_ = "";
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public string Message {
      get { return message_; }
      set {
        message_ = pb::ProtoPreconditions.CheckNotNull(value, "value");
      }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override bool Equals(object other) {
      return Equals(other as Ack);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public bool Equals(Ack other) {
      if (ReferenceEquals(other, null)) {
        return false;
      }
      if (ReferenceEquals(other, this)) {
        return true;
      }
      if (Message != other.Message) return false;
      return Equals(_unknownFields, other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override int GetHashCode() {
      int hash = 1;
      if (Message.Length != 0) hash ^= Message.GetHashCode();
      if (_unknownFields != null) {
        hash ^= _unknownFields.GetHashCode();
      }
      return hash;
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override string ToString() {
      return pb::JsonFormatter.ToDiagnosticString(this);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void WriteTo(pb::CodedOutputStream output) {
    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      output.WriteRawMessage(this);
    #else
      if (Message.Length != 0) {
        output.WriteRawTag(10);
        output.WriteString(Message);
      }
      if (_unknownFields != null) {
        _unknownFields.WriteTo(output);
      }
    #endif
    }

    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    void pb::IBufferMessage.InternalWriteTo(ref pb::WriteContext output) {
      if (Message.Length != 0) {
        output.WriteRawTag(10);
        output.WriteString(Message);
      }
      if (_unknownFields != null) {
        _unknownFields.WriteTo(ref output);
      }
    }
    #endif

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public int CalculateSize() {
      int size = 0;
      if (Message.Length != 0) {
        size += 1 + pb::CodedOutputStream.ComputeStringSize(Message);
      }
      if (_unknownFields != null) {
        size += _unknownFields.CalculateSize();
      }
      return size;
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void MergeFrom(Ack other) {
      if (other == null) {
        return;
      }
      if (other.Message.Length != 0) {
        Message = other.Message;
      }
      _unknownFields = pb::UnknownFieldSet.MergeFrom(_unknownFields, other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void MergeFrom(pb::CodedInputStream input) {
    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      input.ReadRawMessage(this);
    #else
      uint tag;
      while ((tag = input.ReadTag()) != 0) {
        switch(tag) {
          default:
            _unknownFields = pb::UnknownFieldSet.MergeFieldFrom(_unknownFields, input);
            break;
          case 10: {
            Message = input.ReadString();
            break;
          }
        }
      }
    #endif
    }

    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    void pb::IBufferMessage.InternalMergeFrom(ref pb::ParseContext input) {
      uint tag;
      while ((tag = input.ReadTag()) != 0) {
        switch(tag) {
          default:
            _unknownFields = pb::UnknownFieldSet.MergeFieldFrom(_unknownFields, ref input);
            break;
          case 10: {
            Message = input.ReadString();
            break;
          }
        }
      }
    }
    #endif

  }

  public sealed partial class Request : pb::IMessage<Request>
  #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      , pb::IBufferMessage
  #endif
  {
    private static readonly pb::MessageParser<Request> _parser = new pb::MessageParser<Request>(() => new Request());
    private pb::UnknownFieldSet _unknownFields;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public static pb::MessageParser<Request> Parser { get { return _parser; } }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public static pbr::MessageDescriptor Descriptor {
      get { return global::BlazingPizza.OrderStatusUpdates.PizzaorderstatusReflection.Descriptor.MessageTypes[3]; }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    pbr::MessageDescriptor pb::IMessage.Descriptor {
      get { return Descriptor; }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public Request() {
      OnConstruction();
    }

    partial void OnConstruction();

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public Request(Request other) : this() {
      switch (other.RequestCase) {
        case RequestOneofCase.Status:
          Status = other.Status.Clone();
          break;
        case RequestOneofCase.Req:
          Req = other.Req.Clone();
          break;
        case RequestOneofCase.Ack:
          Ack = other.Ack.Clone();
          break;
      }

      _unknownFields = pb::UnknownFieldSet.Clone(other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public Request Clone() {
      return new Request(this);
    }

    /// <summary>Field number for the "status" field.</summary>
    public const int StatusFieldNumber = 1;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public global::BlazingPizza.OrderStatusUpdates.StatusUpdate Status {
      get { return requestCase_ == RequestOneofCase.Status ? (global::BlazingPizza.OrderStatusUpdates.StatusUpdate) request_ : null; }
      set {
        request_ = value;
        requestCase_ = value == null ? RequestOneofCase.None : RequestOneofCase.Status;
      }
    }

    /// <summary>Field number for the "req" field.</summary>
    public const int ReqFieldNumber = 2;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public global::BlazingPizza.OrderStatusUpdates.GenericRequest Req {
      get { return requestCase_ == RequestOneofCase.Req ? (global::BlazingPizza.OrderStatusUpdates.GenericRequest) request_ : null; }
      set {
        request_ = value;
        requestCase_ = value == null ? RequestOneofCase.None : RequestOneofCase.Req;
      }
    }

    /// <summary>Field number for the "ack" field.</summary>
    public const int AckFieldNumber = 3;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public global::BlazingPizza.OrderStatusUpdates.Ack Ack {
      get { return requestCase_ == RequestOneofCase.Ack ? (global::BlazingPizza.OrderStatusUpdates.Ack) request_ : null; }
      set {
        request_ = value;
        requestCase_ = value == null ? RequestOneofCase.None : RequestOneofCase.Ack;
      }
    }

    private object request_;
    /// <summary>Enum of possible cases for the "request" oneof.</summary>
    public enum RequestOneofCase {
      None = 0,
      Status = 1,
      Req = 2,
      Ack = 3,
    }
    private RequestOneofCase requestCase_ = RequestOneofCase.None;
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public RequestOneofCase RequestCase {
      get { return requestCase_; }
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void ClearRequest() {
      requestCase_ = RequestOneofCase.None;
      request_ = null;
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override bool Equals(object other) {
      return Equals(other as Request);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public bool Equals(Request other) {
      if (ReferenceEquals(other, null)) {
        return false;
      }
      if (ReferenceEquals(other, this)) {
        return true;
      }
      if (!object.Equals(Status, other.Status)) return false;
      if (!object.Equals(Req, other.Req)) return false;
      if (!object.Equals(Ack, other.Ack)) return false;
      if (RequestCase != other.RequestCase) return false;
      return Equals(_unknownFields, other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override int GetHashCode() {
      int hash = 1;
      if (requestCase_ == RequestOneofCase.Status) hash ^= Status.GetHashCode();
      if (requestCase_ == RequestOneofCase.Req) hash ^= Req.GetHashCode();
      if (requestCase_ == RequestOneofCase.Ack) hash ^= Ack.GetHashCode();
      hash ^= (int) requestCase_;
      if (_unknownFields != null) {
        hash ^= _unknownFields.GetHashCode();
      }
      return hash;
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public override string ToString() {
      return pb::JsonFormatter.ToDiagnosticString(this);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void WriteTo(pb::CodedOutputStream output) {
    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      output.WriteRawMessage(this);
    #else
      if (requestCase_ == RequestOneofCase.Status) {
        output.WriteRawTag(10);
        output.WriteMessage(Status);
      }
      if (requestCase_ == RequestOneofCase.Req) {
        output.WriteRawTag(18);
        output.WriteMessage(Req);
      }
      if (requestCase_ == RequestOneofCase.Ack) {
        output.WriteRawTag(26);
        output.WriteMessage(Ack);
      }
      if (_unknownFields != null) {
        _unknownFields.WriteTo(output);
      }
    #endif
    }

    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    void pb::IBufferMessage.InternalWriteTo(ref pb::WriteContext output) {
      if (requestCase_ == RequestOneofCase.Status) {
        output.WriteRawTag(10);
        output.WriteMessage(Status);
      }
      if (requestCase_ == RequestOneofCase.Req) {
        output.WriteRawTag(18);
        output.WriteMessage(Req);
      }
      if (requestCase_ == RequestOneofCase.Ack) {
        output.WriteRawTag(26);
        output.WriteMessage(Ack);
      }
      if (_unknownFields != null) {
        _unknownFields.WriteTo(ref output);
      }
    }
    #endif

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public int CalculateSize() {
      int size = 0;
      if (requestCase_ == RequestOneofCase.Status) {
        size += 1 + pb::CodedOutputStream.ComputeMessageSize(Status);
      }
      if (requestCase_ == RequestOneofCase.Req) {
        size += 1 + pb::CodedOutputStream.ComputeMessageSize(Req);
      }
      if (requestCase_ == RequestOneofCase.Ack) {
        size += 1 + pb::CodedOutputStream.ComputeMessageSize(Ack);
      }
      if (_unknownFields != null) {
        size += _unknownFields.CalculateSize();
      }
      return size;
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void MergeFrom(Request other) {
      if (other == null) {
        return;
      }
      switch (other.RequestCase) {
        case RequestOneofCase.Status:
          if (Status == null) {
            Status = new global::BlazingPizza.OrderStatusUpdates.StatusUpdate();
          }
          Status.MergeFrom(other.Status);
          break;
        case RequestOneofCase.Req:
          if (Req == null) {
            Req = new global::BlazingPizza.OrderStatusUpdates.GenericRequest();
          }
          Req.MergeFrom(other.Req);
          break;
        case RequestOneofCase.Ack:
          if (Ack == null) {
            Ack = new global::BlazingPizza.OrderStatusUpdates.Ack();
          }
          Ack.MergeFrom(other.Ack);
          break;
      }

      _unknownFields = pb::UnknownFieldSet.MergeFrom(_unknownFields, other._unknownFields);
    }

    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    public void MergeFrom(pb::CodedInputStream input) {
    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
      input.ReadRawMessage(this);
    #else
      uint tag;
      while ((tag = input.ReadTag()) != 0) {
        switch(tag) {
          default:
            _unknownFields = pb::UnknownFieldSet.MergeFieldFrom(_unknownFields, input);
            break;
          case 10: {
            global::BlazingPizza.OrderStatusUpdates.StatusUpdate subBuilder = new global::BlazingPizza.OrderStatusUpdates.StatusUpdate();
            if (requestCase_ == RequestOneofCase.Status) {
              subBuilder.MergeFrom(Status);
            }
            input.ReadMessage(subBuilder);
            Status = subBuilder;
            break;
          }
          case 18: {
            global::BlazingPizza.OrderStatusUpdates.GenericRequest subBuilder = new global::BlazingPizza.OrderStatusUpdates.GenericRequest();
            if (requestCase_ == RequestOneofCase.Req) {
              subBuilder.MergeFrom(Req);
            }
            input.ReadMessage(subBuilder);
            Req = subBuilder;
            break;
          }
          case 26: {
            global::BlazingPizza.OrderStatusUpdates.Ack subBuilder = new global::BlazingPizza.OrderStatusUpdates.Ack();
            if (requestCase_ == RequestOneofCase.Ack) {
              subBuilder.MergeFrom(Ack);
            }
            input.ReadMessage(subBuilder);
            Ack = subBuilder;
            break;
          }
        }
      }
    #endif
    }

    #if !GOOGLE_PROTOBUF_REFSTRUCT_COMPATIBILITY_MODE
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute]
    void pb::IBufferMessage.InternalMergeFrom(ref pb::ParseContext input) {
      uint tag;
      while ((tag = input.ReadTag()) != 0) {
        switch(tag) {
          default:
            _unknownFields = pb::UnknownFieldSet.MergeFieldFrom(_unknownFields, ref input);
            break;
          case 10: {
            global::BlazingPizza.OrderStatusUpdates.StatusUpdate subBuilder = new global::BlazingPizza.OrderStatusUpdates.StatusUpdate();
            if (requestCase_ == RequestOneofCase.Status) {
              subBuilder.MergeFrom(Status);
            }
            input.ReadMessage(subBuilder);
            Status = subBuilder;
            break;
          }
          case 18: {
            global::BlazingPizza.OrderStatusUpdates.GenericRequest subBuilder = new global::BlazingPizza.OrderStatusUpdates.GenericRequest();
            if (requestCase_ == RequestOneofCase.Req) {
              subBuilder.MergeFrom(Req);
            }
            input.ReadMessage(subBuilder);
            Req = subBuilder;
            break;
          }
          case 26: {
            global::BlazingPizza.OrderStatusUpdates.Ack subBuilder = new global::BlazingPizza.OrderStatusUpdates.Ack();
            if (requestCase_ == RequestOneofCase.Ack) {
              subBuilder.MergeFrom(Ack);
            }
            input.ReadMessage(subBuilder);
            Ack = subBuilder;
            break;
          }
        }
      }
    }
    #endif

  }

  #endregion

}

#endregion Designer generated code
