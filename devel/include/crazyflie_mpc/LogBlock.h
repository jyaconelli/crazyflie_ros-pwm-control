// Generated by gencpp from file crazyflie_mpc/LogBlock.msg
// DO NOT EDIT!


#ifndef CRAZYFLIE_MPC_MESSAGE_LOGBLOCK_H
#define CRAZYFLIE_MPC_MESSAGE_LOGBLOCK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace crazyflie_mpc
{
template <class ContainerAllocator>
struct LogBlock_
{
  typedef LogBlock_<ContainerAllocator> Type;

  LogBlock_()
    : topic_name()
    , frequency(0)
    , variables()  {
    }
  LogBlock_(const ContainerAllocator& _alloc)
    : topic_name(_alloc)
    , frequency(0)
    , variables(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _topic_name_type;
  _topic_name_type topic_name;

   typedef int16_t _frequency_type;
  _frequency_type frequency;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _variables_type;
  _variables_type variables;





  typedef boost::shared_ptr< ::crazyflie_mpc::LogBlock_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crazyflie_mpc::LogBlock_<ContainerAllocator> const> ConstPtr;

}; // struct LogBlock_

typedef ::crazyflie_mpc::LogBlock_<std::allocator<void> > LogBlock;

typedef boost::shared_ptr< ::crazyflie_mpc::LogBlock > LogBlockPtr;
typedef boost::shared_ptr< ::crazyflie_mpc::LogBlock const> LogBlockConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crazyflie_mpc::LogBlock_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crazyflie_mpc::LogBlock_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace crazyflie_mpc

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'crazyflie_mpc': ['/home/joseph/other_research/crazyflie_ros/src/crazyflie_mpc/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_mpc::LogBlock_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crazyflie_mpc::LogBlock_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_mpc::LogBlock_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crazyflie_mpc::LogBlock_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_mpc::LogBlock_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crazyflie_mpc::LogBlock_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crazyflie_mpc::LogBlock_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d9325f33ff3a1ffc6b6c0323a9f9b181";
  }

  static const char* value(const ::crazyflie_mpc::LogBlock_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd9325f33ff3a1ffcULL;
  static const uint64_t static_value2 = 0x6b6c0323a9f9b181ULL;
};

template<class ContainerAllocator>
struct DataType< ::crazyflie_mpc::LogBlock_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crazyflie_mpc/LogBlock";
  }

  static const char* value(const ::crazyflie_mpc::LogBlock_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crazyflie_mpc::LogBlock_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string topic_name\n\
int16 frequency\n\
string[] variables\n\
";
  }

  static const char* value(const ::crazyflie_mpc::LogBlock_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crazyflie_mpc::LogBlock_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.topic_name);
      stream.next(m.frequency);
      stream.next(m.variables);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LogBlock_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crazyflie_mpc::LogBlock_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crazyflie_mpc::LogBlock_<ContainerAllocator>& v)
  {
    s << indent << "topic_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.topic_name);
    s << indent << "frequency: ";
    Printer<int16_t>::stream(s, indent + "  ", v.frequency);
    s << indent << "variables[]" << std::endl;
    for (size_t i = 0; i < v.variables.size(); ++i)
    {
      s << indent << "  variables[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.variables[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CRAZYFLIE_MPC_MESSAGE_LOGBLOCK_H