// Generated by gencpp from file crazyflie_driver/SetGroupMaskRequest.msg
// DO NOT EDIT!


#ifndef CRAZYFLIE_DRIVER_MESSAGE_SETGROUPMASKREQUEST_H
#define CRAZYFLIE_DRIVER_MESSAGE_SETGROUPMASKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace crazyflie_driver
{
template <class ContainerAllocator>
struct SetGroupMaskRequest_
{
  typedef SetGroupMaskRequest_<ContainerAllocator> Type;

  SetGroupMaskRequest_()
    : groupMask(0)  {
    }
  SetGroupMaskRequest_(const ContainerAllocator& _alloc)
    : groupMask(0)  {
  (void)_alloc;
    }



   typedef uint8_t _groupMask_type;
  _groupMask_type groupMask;





  typedef boost::shared_ptr< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetGroupMaskRequest_

typedef ::crazyflie_driver::SetGroupMaskRequest_<std::allocator<void> > SetGroupMaskRequest;

typedef boost::shared_ptr< ::crazyflie_driver::SetGroupMaskRequest > SetGroupMaskRequestPtr;
typedef boost::shared_ptr< ::crazyflie_driver::SetGroupMaskRequest const> SetGroupMaskRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace crazyflie_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'crazyflie_driver': ['/home/joseph/other_research/crazyflie_ros/src/crazyflie_driver/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d44d7e9aa94d069ed5834dbd7329e1bb";
  }

  static const char* value(const ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd44d7e9aa94d069eULL;
  static const uint64_t static_value2 = 0xd5834dbd7329e1bbULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crazyflie_driver/SetGroupMaskRequest";
  }

  static const char* value(const ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 groupMask\n\
";
  }

  static const char* value(const ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.groupMask);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetGroupMaskRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crazyflie_driver::SetGroupMaskRequest_<ContainerAllocator>& v)
  {
    s << indent << "groupMask: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.groupMask);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CRAZYFLIE_DRIVER_MESSAGE_SETGROUPMASKREQUEST_H
