// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from eufs_msgs:msg/WheelSpeedsStamped.idl
// generated code does not contain a copyright notice
#include "eufs_msgs/msg/detail/wheel_speeds_stamped__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"


// Include directives for member types
// Member `header`
#include "std_msgs/msg/detail/header__functions.h"
// Member `speeds`
#include "eufs_msgs/msg/detail/wheel_speeds__functions.h"

bool
eufs_msgs__msg__WheelSpeedsStamped__init(eufs_msgs__msg__WheelSpeedsStamped * msg)
{
  if (!msg) {
    return false;
  }
  // header
  if (!std_msgs__msg__Header__init(&msg->header)) {
    eufs_msgs__msg__WheelSpeedsStamped__fini(msg);
    return false;
  }
  // speeds
  if (!eufs_msgs__msg__WheelSpeeds__init(&msg->speeds)) {
    eufs_msgs__msg__WheelSpeedsStamped__fini(msg);
    return false;
  }
  return true;
}

void
eufs_msgs__msg__WheelSpeedsStamped__fini(eufs_msgs__msg__WheelSpeedsStamped * msg)
{
  if (!msg) {
    return;
  }
  // header
  std_msgs__msg__Header__fini(&msg->header);
  // speeds
  eufs_msgs__msg__WheelSpeeds__fini(&msg->speeds);
}

bool
eufs_msgs__msg__WheelSpeedsStamped__are_equal(const eufs_msgs__msg__WheelSpeedsStamped * lhs, const eufs_msgs__msg__WheelSpeedsStamped * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // header
  if (!std_msgs__msg__Header__are_equal(
      &(lhs->header), &(rhs->header)))
  {
    return false;
  }
  // speeds
  if (!eufs_msgs__msg__WheelSpeeds__are_equal(
      &(lhs->speeds), &(rhs->speeds)))
  {
    return false;
  }
  return true;
}

bool
eufs_msgs__msg__WheelSpeedsStamped__copy(
  const eufs_msgs__msg__WheelSpeedsStamped * input,
  eufs_msgs__msg__WheelSpeedsStamped * output)
{
  if (!input || !output) {
    return false;
  }
  // header
  if (!std_msgs__msg__Header__copy(
      &(input->header), &(output->header)))
  {
    return false;
  }
  // speeds
  if (!eufs_msgs__msg__WheelSpeeds__copy(
      &(input->speeds), &(output->speeds)))
  {
    return false;
  }
  return true;
}

eufs_msgs__msg__WheelSpeedsStamped *
eufs_msgs__msg__WheelSpeedsStamped__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  eufs_msgs__msg__WheelSpeedsStamped * msg = (eufs_msgs__msg__WheelSpeedsStamped *)allocator.allocate(sizeof(eufs_msgs__msg__WheelSpeedsStamped), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(eufs_msgs__msg__WheelSpeedsStamped));
  bool success = eufs_msgs__msg__WheelSpeedsStamped__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
eufs_msgs__msg__WheelSpeedsStamped__destroy(eufs_msgs__msg__WheelSpeedsStamped * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    eufs_msgs__msg__WheelSpeedsStamped__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
eufs_msgs__msg__WheelSpeedsStamped__Sequence__init(eufs_msgs__msg__WheelSpeedsStamped__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  eufs_msgs__msg__WheelSpeedsStamped * data = NULL;

  if (size) {
    data = (eufs_msgs__msg__WheelSpeedsStamped *)allocator.zero_allocate(size, sizeof(eufs_msgs__msg__WheelSpeedsStamped), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = eufs_msgs__msg__WheelSpeedsStamped__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        eufs_msgs__msg__WheelSpeedsStamped__fini(&data[i - 1]);
      }
      allocator.deallocate(data, allocator.state);
      return false;
    }
  }
  array->data = data;
  array->size = size;
  array->capacity = size;
  return true;
}

void
eufs_msgs__msg__WheelSpeedsStamped__Sequence__fini(eufs_msgs__msg__WheelSpeedsStamped__Sequence * array)
{
  if (!array) {
    return;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();

  if (array->data) {
    // ensure that data and capacity values are consistent
    assert(array->capacity > 0);
    // finalize all array elements
    for (size_t i = 0; i < array->capacity; ++i) {
      eufs_msgs__msg__WheelSpeedsStamped__fini(&array->data[i]);
    }
    allocator.deallocate(array->data, allocator.state);
    array->data = NULL;
    array->size = 0;
    array->capacity = 0;
  } else {
    // ensure that data, size, and capacity values are consistent
    assert(0 == array->size);
    assert(0 == array->capacity);
  }
}

eufs_msgs__msg__WheelSpeedsStamped__Sequence *
eufs_msgs__msg__WheelSpeedsStamped__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  eufs_msgs__msg__WheelSpeedsStamped__Sequence * array = (eufs_msgs__msg__WheelSpeedsStamped__Sequence *)allocator.allocate(sizeof(eufs_msgs__msg__WheelSpeedsStamped__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = eufs_msgs__msg__WheelSpeedsStamped__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
eufs_msgs__msg__WheelSpeedsStamped__Sequence__destroy(eufs_msgs__msg__WheelSpeedsStamped__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    eufs_msgs__msg__WheelSpeedsStamped__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
eufs_msgs__msg__WheelSpeedsStamped__Sequence__are_equal(const eufs_msgs__msg__WheelSpeedsStamped__Sequence * lhs, const eufs_msgs__msg__WheelSpeedsStamped__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!eufs_msgs__msg__WheelSpeedsStamped__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
eufs_msgs__msg__WheelSpeedsStamped__Sequence__copy(
  const eufs_msgs__msg__WheelSpeedsStamped__Sequence * input,
  eufs_msgs__msg__WheelSpeedsStamped__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(eufs_msgs__msg__WheelSpeedsStamped);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    eufs_msgs__msg__WheelSpeedsStamped * data =
      (eufs_msgs__msg__WheelSpeedsStamped *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!eufs_msgs__msg__WheelSpeedsStamped__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          eufs_msgs__msg__WheelSpeedsStamped__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!eufs_msgs__msg__WheelSpeedsStamped__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}