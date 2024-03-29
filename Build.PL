use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
    module_name => 'Catmandu::FedoraCommons',
    license => 'perl',
    dist_author => [
        'Patrick Hochstenbach <patrick.hochstenbach@ugent.be>',
    ],
    dist_version_from => 'lib/Catmandu/FedoraCommons.pm',
    build_requires => {
        'Software::License' => 0,
        'Test::More' => '0.98',
    },
    requires => {
        'perl' => '5.10.1',
        'Catmandu' => '0.05',
        'Data::Validate::URI' => '0.06',
        'Data::Validate::Type' => '1.4.0',
        'HTTP::Request::Common' => '6.03',
        'RDF::Trine' => '1.003',
        'Test::JSON' => '0.11',
        'XML::LibXML' => '2.0014',
    },
    create_makefile_pl => 'traditional',
    create_license => 1,
    script => ['bin/fedora_admin.pl'] ,
);

$build->create_build_script;
