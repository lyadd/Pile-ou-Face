use strict;
use warnings;
 
print "Vous jouez à pile ou face.\n"; 
print "Vous disposez d'un solde de 50 euros.\n";
my $ini = 50;

START:
print "Combien misez-vous ? ";
my $nb = <>;
	if ($nb > $ini) {print "votre mise est trop élevée!\n";
			goto START;}

print "Quel est votre choix pile ou face ? ";
my $nom = <>;
chomp $nom;

my $choix;
	if (rand(1)<0.5) {$choix="pile"}
	else	{$choix="face"}
print "<$choix>\n";	

my $decision;
		if ($choix eq $nom) {$ini = $ini + $nb;
		print "Vous avez gagné !\n";
		print "votre nouveau solde est de: $ini Euros\n";
		print "Voulez vous continuer ? [oui - non] ";
		my $decision = <>; 
		chomp $decision;
			if ($decision eq "non") {print "Fin de partie\n";}
 
			elsif($ini <= 0) {print "Vous n'avez plus d'argent FIN !!!!\n";}
			else {print "Continuer la partie\n";
				goto START;}}
			
		elsif ($choix ne $nom) {$ini = $ini - $nb;
		print "Vous avez perdu !\n";
		print "votre nouveau solde est de: $ini Euros\n";
		print "Voulez vous continuer ? [oui-non] ";
		my $decision = <>; 
		chomp $decision;
			if ($decision eq "non") {print "Fin de partie\n";}
			elsif($ini <= 0) {print "Vous n'avez plus d'argent FIN !!!!\n";}
			else {print "Continuer la partie\n";
				goto START;}}		

print "-" x 30 . "\n";