// generated from rosidl_generator_cpp/resource/idl__struct.hpp.em
// with input from eufs_msgs:msg/ConeArrayWithCovariancePlus.idl
// generated code does not contain a copyright notice

#ifndef EUFS_MSGS__MSG__DETAIL__CONE_ARRAY_WITH_COVARIANCE_PLUS__STRUCT_HPP_
#define EUFS_MSGS__MSG__DETAIL__CONE_ARRAY_WITH_COVARIANCE_PLUS__STRUCT_HPP_

#include <algorithm>
#include <array>
#include <memory>
#include <string>
#include <vector>

#include "rosidl_runtime_cpp/bounded_vector.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


// Include directives for member types
// Member 'header'
#include "std_msgs/msg/detail/header__struct.hpp"
// Member 'cones'
#include "eufs_msgs/msg/detail/cone_with_covariance_plus__struct.hpp"

#ifndef _WIN32
# define DEPRECATED__eufs_msgs__msg__ConeArrayWithCovariancePlus __attribute__((deprecated))
#else
# define DEPRECATED__eufs_msgs__msg__ConeArrayWithCovariancePlus __declspec(deprecated)
#endif

namespace eufs_msgs
{

namespace msg
{

// message struct
template<class ContainerAllocator>
struct ConeArrayWithCovariancePlus_
{
  using Type = ConeArrayWithCovariancePlus_<ContainerAllocator>;

  explicit ConeArrayWithCovariancePlus_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : header(_init)
  {
    (void)_init;
  }

  explicit ConeArrayWithCovariancePlus_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : header(_alloc, _init)
  {
    (void)_init;
  }

  // field types and members
  using _header_type =
    std_msgs::msg::Header_<ContainerAllocator>;
  _header_type header;
  using _cones_type =
    std::vector<eufs_msgs::msg::ConeWithCovariancePlus_<ContainerAllocator>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<eufs_msgs::msg::ConeWithCovariancePlus_<ContainerAllocator>>>;
  _cones_type cones;

  // setters for named parameter idiom
  Type & set__header(
    const std_msgs::msg::Header_<ContainerAllocator> & _arg)
  {
    this->header = _arg;
    return *this;
  }
  Type & set__cones(
    const std::vector<eufs_msgs::msg::ConeWithCovariancePlus_<ContainerAllocator>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<eufs_msgs::msg::ConeWithCovariancePlus_<ContainerAllocator>>> & _arg)
  {
    this->cones = _arg;
    return *this;
  }

  // constant declarations

  // pointer types
  using RawPtr =
    eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator> *;
  using ConstRawPtr =
    const eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__eufs_msgs__msg__ConeArrayWithCovariancePlus
    std::shared_ptr<eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__eufs_msgs__msg__ConeArrayWithCovariancePlus
    std::shared_ptr<eufs_msgs::msg::ConeArrayWithCovariancePlus_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const ConeArrayWithCovariancePlus_ & other) const
  {
    if (this->header != other.header) {
      return false;
    }
    if (this->cones != other.cones) {
      return false;
    }
    return true;
  }
  bool operator!=(const ConeArrayWithCovariancePlus_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct ConeArrayWithCovariancePlus_

// alias to use template instance with default allocator
using ConeArrayWithCovariancePlus =
  eufs_msgs::msg::ConeArrayWithCovariancePlus_<std::allocator<void>>;

// constant definitions

}  // namespace msg

}  // namespace eufs_msgs

#endif  // EUFS_MSGS__MSG__DETAIL__CONE_ARRAY_WITH_COVARIANCE_PLUS__STRUCT_HPP_
