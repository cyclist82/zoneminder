package ONVIF::Analytics::Types::FindEventResult;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %RecordingToken_of :ATTR(:get<RecordingToken>);
my %TrackToken_of :ATTR(:get<TrackToken>);
my %Time_of :ATTR(:get<Time>);
my %Event_of :ATTR(:get<Event>);
my %StartStateEvent_of :ATTR(:get<StartStateEvent>);

__PACKAGE__->_factory(
    [ qw(        RecordingToken
        TrackToken
        Time
        Event
        StartStateEvent

    ) ],
    {
        'RecordingToken' => \%RecordingToken_of,
        'TrackToken' => \%TrackToken_of,
        'Time' => \%Time_of,
        'Event' => \%Event_of,
        'StartStateEvent' => \%StartStateEvent_of,
    },
    {
        'RecordingToken' => 'ONVIF::Analytics::Types::RecordingReference',
        'TrackToken' => 'ONVIF::Analytics::Types::TrackReference',
        'Time' => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
        'Event' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyType',
        'StartStateEvent' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'RecordingToken' => 'RecordingToken',
        'TrackToken' => 'TrackToken',
        'Time' => 'Time',
        'Event' => 'Event',
        'StartStateEvent' => 'StartStateEvent',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::FindEventResult

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
FindEventResult from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * RecordingToken


=item * TrackToken


=item * Time


=item * Event


=item * StartStateEvent




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::FindEventResult
   RecordingToken => $some_value, # RecordingReference
   TrackToken => $some_value, # TrackReference
   Time =>  $some_value, # dateTime
   Event =>  $some_value, # anyType
   StartStateEvent =>  $some_value, # boolean
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

