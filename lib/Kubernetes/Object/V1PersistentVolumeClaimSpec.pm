=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1.13.5

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package Kubernetes::Object::V1PersistentVolumeClaimSpec;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use Kubernetes::Object::V1LabelSelector;
use Kubernetes::Object::V1ResourceRequirements;
use Kubernetes::Object::V1TypedLocalObjectReference;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1.13.5

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "Kubernetes::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes',
                                  class => 'V1PersistentVolumeClaimSpec',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'access_modes' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'accessModes',
    	description => 'AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1',
    	format => '',
    	read_only => '',
    		},
    'data_source' => {
    	datatype => 'V1TypedLocalObjectReference',
    	base_name => 'dataSource',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'resources' => {
    	datatype => 'V1ResourceRequirements',
    	base_name => 'resources',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'selector' => {
    	datatype => 'V1LabelSelector',
    	base_name => 'selector',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'storage_class_name' => {
    	datatype => 'string',
    	base_name => 'storageClassName',
    	description => 'Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1',
    	format => '',
    	read_only => '',
    		},
    'volume_mode' => {
    	datatype => 'string',
    	base_name => 'volumeMode',
    	description => 'volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec. This is a beta feature.',
    	format => '',
    	read_only => '',
    		},
    'volume_name' => {
    	datatype => 'string',
    	base_name => 'volumeName',
    	description => 'VolumeName is the binding reference to the PersistentVolume backing this claim.',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->openapi_types( {
    'access_modes' => 'ARRAY[string]',
    'data_source' => 'V1TypedLocalObjectReference',
    'resources' => 'V1ResourceRequirements',
    'selector' => 'V1LabelSelector',
    'storage_class_name' => 'string',
    'volume_mode' => 'string',
    'volume_name' => 'string'
} );

__PACKAGE__->attribute_map( {
    'access_modes' => 'accessModes',
    'data_source' => 'dataSource',
    'resources' => 'resources',
    'selector' => 'selector',
    'storage_class_name' => 'storageClassName',
    'volume_mode' => 'volumeMode',
    'volume_name' => 'volumeName'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;