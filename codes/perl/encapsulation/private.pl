#! /usr/bin/perl -w
{
    package Person;
    use Scalar::Util 'refaddr';
    # ...
    my %private;
    my %protected;

    sub new {
        my $class = shift;
        my $self = {};#no public members
        bless $self, $class;

        $private{refaddr $self} = {
            name => shift
        };

        $protected{refaddr $self} = {
            t => "person"
        };

        return $self;
    }

    sub name {
        die "name is private!" unless caller eq __PACKAGE__;
        my $self = shift;
        if (my $value = shift) { # setter
            $private{refaddr $self}->{name} = $value;
        }
        return $private{refaddr $self}->{name}; #getter
    }

    sub t {
        die "t is protected!" unless caller->isa(__PACKAGE__);
        my $self = shift;
        if (my $value = shift) { # setter
            $protected{refaddr $self}->{t} = $value;
        }
        return $protected{refaddr $self}->{t}; #getter
    }

    sub copy {
        my( $self, $other ) = @_;
        $self->name($other->name);
        $self->t($other->t);
    }

    sub info {
        my( $self ) = @_;
        print "My name: ", $self->name,"\n";
        print "I am a: ", $self->t,"\n";
        print "----------------------------\n";
    }

    1;
}

# ============================================
# Student begin
# ============================================
{
    package Student;
    our @ISA = qw(Person);

    sub new {
        my ($class, @args) = @_;
        $self = $class->SUPER::new(@args);
        #$self->name("subclass name");#name is private!
        $self->t("student");
        bless $self, $class;
        return $self;
    }

}

# ============================================
# Main begin
# ============================================

$p = new Person("Person1");
#$p->name("other name");#name is private!
#$p->t("other type");#t is protected!
$p2 = new Person("Person2");
$p3 = new Person("Person3");

$s = new Student("Student1");
$s2 = new Student("Student2");
$s3 = new Student("Student3");

$p->info();
$p2->info();
$p3->copy($s2);
$p3->info();

$s->info();
$s2->info();
$s3->info();
