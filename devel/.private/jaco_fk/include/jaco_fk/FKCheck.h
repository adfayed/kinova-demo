// Generated by gencpp from file jaco_fk/FKCheck.msg
// DO NOT EDIT!


#ifndef JACO_FK_MESSAGE_FKCHECK_H
#define JACO_FK_MESSAGE_FKCHECK_H

#include <ros/service_traits.h>


#include <jaco_fk/FKCheckRequest.h>
#include <jaco_fk/FKCheckResponse.h>


namespace jaco_fk
{

struct FKCheck
{

typedef FKCheckRequest Request;
typedef FKCheckResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FKCheck
} // namespace jaco_fk


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::jaco_fk::FKCheck > {
  static const char* value()
  {
    return "1640fd7a9e24c82d413046f60fbdc596";
  }

  static const char* value(const ::jaco_fk::FKCheck&) { return value(); }
};

template<>
struct DataType< ::jaco_fk::FKCheck > {
  static const char* value()
  {
    return "jaco_fk/FKCheck";
  }

  static const char* value(const ::jaco_fk::FKCheck&) { return value(); }
};


// service_traits::MD5Sum< ::jaco_fk::FKCheckRequest> should match 
// service_traits::MD5Sum< ::jaco_fk::FKCheck > 
template<>
struct MD5Sum< ::jaco_fk::FKCheckRequest>
{
  static const char* value()
  {
    return MD5Sum< ::jaco_fk::FKCheck >::value();
  }
  static const char* value(const ::jaco_fk::FKCheckRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::jaco_fk::FKCheckRequest> should match 
// service_traits::DataType< ::jaco_fk::FKCheck > 
template<>
struct DataType< ::jaco_fk::FKCheckRequest>
{
  static const char* value()
  {
    return DataType< ::jaco_fk::FKCheck >::value();
  }
  static const char* value(const ::jaco_fk::FKCheckRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::jaco_fk::FKCheckResponse> should match 
// service_traits::MD5Sum< ::jaco_fk::FKCheck > 
template<>
struct MD5Sum< ::jaco_fk::FKCheckResponse>
{
  static const char* value()
  {
    return MD5Sum< ::jaco_fk::FKCheck >::value();
  }
  static const char* value(const ::jaco_fk::FKCheckResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::jaco_fk::FKCheckResponse> should match 
// service_traits::DataType< ::jaco_fk::FKCheck > 
template<>
struct DataType< ::jaco_fk::FKCheckResponse>
{
  static const char* value()
  {
    return DataType< ::jaco_fk::FKCheck >::value();
  }
  static const char* value(const ::jaco_fk::FKCheckResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // JACO_FK_MESSAGE_FKCHECK_H
