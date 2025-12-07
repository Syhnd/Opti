; Ce fichier est utilisé pour les Hotstrings. Les Hotstrings sont des remplacement automatiques de texte au fur et à mesure que vous écrivez, par exemple pour une fonction Autocorrect (en première partie du fichier 650+ fautes de frappe fréquentes), ou des abréviations (2ème partie du fichier).
; Ce script est lancé automatiquement lorsque vous lancez Opti.ahk, mais vous pouvez choisir de le lancer seul, si vous ne souhaitez utiliser que les Hotstrings sans utiliser les raccourcis claviers/fonctions.
; Vous pouvez ajouter vos propres raccourcis à la fin de ce fichier. Pour ce faire il faut précéder et suivre le raccourci que vous souhaitez remplacer par deux symboles ":" (sans apostrophe) et écrire à la suite le mot qui sera écrit à la place.
; Par exemple 
; ::ecgnl::ECG Normal
; Si vous écrivez "ecgnl" (sans apostrophe) suivi d'un espace ou ponctuation, le script remplacera automatiquement par "ECG Normal" (sans apostrophe) suivi de l'espace ou la ponctuation que vous aviez tapé.
; Pour + d'informations vous pouvez consulter la documentation très complète d'AutoHotKey sur ce lien https://www.autohotkey.com/docs/v1/Hotstrings.htm

#Hotstring EndChars ()[]{}:;'"/\,.?!`n `t
#InputLevel 1

;-----------------------------------------------------------------------------------------------------------
;1091 FRENCH AUTOCORRECT ENTRIES
;-----------------------------------------------------------------------------------------------------------

::a t elle::a-t-elle
::a t il::a-t-il
::a t on::a-t-on
::a t'elle::a-t-elle
::a t'il::a-t-il
::a t'on::a-t-on
::a t-elle::a-t-elle
::a t-il::a-t-il
::a t-on::a-t-on
::abcisse::abscisse
::absisse::abscisse
::acalmie::accalmie
::accompte::acompte
:*:accummul::accumul ;;;
::acroc::accroc
:*:acroît::accroît ;;;
::acréditif::accréditif
::afaires::affaires
::afiliation::affiliation
::afirmer::affirmer
::aggio::agio
::aggios::agios
::agrèer::agréer
::ai je::ai-je
::aler::aller
::allemagne::Allemagne
::allieurs::ailleurs
:*:alocation::allocation ;;;
::ambigue::ambiguë
::ambigüe::ambiguë
::amorticement::amortissement
::annnée::année
::annuller::annuler
::anonces::annonces
:*:anotation::annotation ;;;
::anterieurement::antérieurement
::antologie::anthologie
::anuller::annuler
::anée::année
::anées::années
:*:aparaît::apparaît ;;;
::apareil::appareil
::apel::appel
::apels::appels
::apliquer::appliquer
::apointements::appointements
:*:apparait::apparaît ;;;
::appeller::appeler
::appercevoir::apercevoir
::applciation::application
::appliquee::appliquée
::aprendre::apprendre
:*:aprè s::après{Space} ;;;
:*:aprèsc ::après c ;;;
:*:aprèsd ::après d ;;;
:*:aprèsl ::après l ;;;
:*:aprèsu ::après u ;;;
::aprécie::apprécie
::aprécier::apprécier
::aprécies::apprécies
::aprés::après
::aritmétique::arithmétique
:*:arondissement::arrondissement ;;;
:*:artiset::artiste ;;;
:*:artisna::artisan ;;;
::arute::autre
::as tu::as-tu
:*:asociation::association ;;;
::assoir::asseoir
::asurance::assurance
::ateindre::atteindre
::atestation::attestation
:*?:atrapp::attrap ;;;
::au dedans::au-dedans
::au delà::au-delà
::aujourd'hiu::aujourd'hui
::aujourdhiu::aujourd'hui
::aura t elle::aura-t-elle
::aura t il::aura-t-il
::aura t on::aura-t-on
::aura t'elle::aura-t-elle
::aura t'il::aura-t-il
::aura t'on::aura-t-on
::aura t-elle::aura-t-elle
::aura t-il::aura-t-il
::aura t-on::aura-t-on
::auront elles::auront-elles
::auront ils::auront-ils
::ausi::aussi
::aussitot::aussitôt
::autentique::authentique
::autentiques::authentiques
::authorisation::autorisation
::autorization::autorisation
::autriche::Autriche
:*:avan t::avant{Space} ;;;
:*:avantc ::avant c ;;;
:*:avantd ::avant d ;;;
:*:avantl ::avant l ;;;
:*:avantu ::avant u ;;;
::avant garde::avant-garde
::avant gardes::avant-gardes
::avant hier::avant-hier
::avant veille::avant-veille
::avant veilles::avant-veilles
:*:ave c::avec{Space} ;;;
:*:avecc ::avec c ;;;
:*:avecd ::avec d ;;;
:*:avecl ::avec l ;;;
:*:avecu ::avec u ;;;
::avez vous::avez-vous
::avons nous::avons-nous
::bacalauréat::baccalauréat
::barage::barrage
::baucoup::beaucoup
::belgique::Belgique
::bibliotèque::bibliothèque
::bientot::bientôt
::bonnification::bonification
::bonnifications::bonifications
::boussolle::boussole
::Brézil::Brésil
::buletin::bulletin
::c '::c’
::c ‘::c’
::c'est a dire::c'est-à-dire
::c'est à dire::c'est-à-dire
:C:ca::ça
:C:Ca::Ça
::carefour::carrefour
::ceal::cela
::celle ci::celle-ci
::celles ci::celles-ci
::celui ci::celui-ci
::celulle::cellule
::celà::cela
::cetrain::certain
::ceux ci::ceux-ci
::chaqun::chacun
::charette::charrette
::charriot::chariot
::chateau::château
:*:che z::chez{Space} ;;;
:*:chezc ::chez c ;;;
:*:chezd ::chez d ;;;
:*:chezl ::chez l ;;;
:*:chezu ::chez u ;;;
::cheminee::cheminée
:*:chifr::chiffr ;;;
::ci dessous::ci-dessous
::ci dessus::ci-dessus
::ci joint::ci-joint
::circonstantiel::circonstanciel
::cleui::celui
::clientéle::clientèle
::cnet::cent
::comerce::commerce
::comete::comète
::cometre::commettre
:*:concesion::concession ;;;
::concluse::conclue
::concurence::concurrence
::confidenciel::confidentiel
::connait::connaît
::connaitre::connaître
::contencieux::contentieux
:*:contr e::contre{Space} ;;;
:*:contrec ::contre c ;;;
:*:contred ::contre d ;;;
:*:contrel ::contre l ;;;
:*:contreu ::contre u ;;;
::contre pied::contre-pied
::contre-ordre::contrordre
:*:control::contrôl
:*:corect::correct ;;;
::couleru::couleur
::courament::couramment
::creer::créer
::créee::créée
::crême::crème
::curiculum::curriculum
::côté là::côté-là
::d '::d’
::d ece::de ce
::d eces::de ces
::d ecet::de cet
::d ecette::de cette
::d ela::de la
::d ele::de le
::d eles::de les
::d eun::d'un
::d eune::d'une
::d ‘::d’
::d'ou::d’où
:*:dan s::dans{Space} ;;;
:*:dansc ::dans c ;;;
:*:dansd ::dans d ;;;
:*:dansl ::dans l ;;;
:*:dansu ::dans u ;;;
::dec e::de ce
::dec es::de ces
::dec et::de cet
::dec ette::de cette
::deja::déjà
::del a::de la
::del e::de le
::del es::de les
:*:depui s::depuis{Space} ;;;
:*:depuisc ::depuis c ;;;
:*:depuisd ::depuis d ;;;
:*:depuisl ::depuis l ;;;
:*:depuisu ::depuis u ;;;
:*:derrièr e::derrière{Space} ;;;
:*:derrièrec ::derrière c ;;;
:*:derrièred ::derrière d ;;;
:*:derrièrel ::derrière l ;;;
:*:derrièreu ::derrière u ;;;
::deu n::d'un
::deu ne::d'une
:*:devan t::devant c{Space} ;;;
:*:devantc ::devant c ;;;
:*:devantd ::devant d ;;;
:*:devantl ::devant l ;;;
:*:devantu ::devant u ;;;
::dexu::deux
::dictionaire::dictionnaire
:*:dilemne::dilemme ;;;
::diner::dîner
::diplome::diplôme
:*:disparait::disparaît ;;;
:*:disponnible::disponible ;;;
::dnas::dans
::dnot::dont
:*:domage::dommage ;;;
::donce::donc
::dse::des
:*:dè s::dès{Space} ;;;
:*:dèsc ::dès c ;;;
:*:dèsd ::dès d ;;;
:*:dèsl ::dès l ;;;
:*:dèsu ::dès u ;;;
::dégrévement::dégrèvement
::déja::déjà
:*:démare::démarre ;;;
::dépanage::dépannage
::dépaner::dépanner
::dépot::dépôt
:*:dévelope::développe ;;;
::e nce::en ce
::e nces::en ces
::e ncet::en cet
::e ncette::en cette
::e ndes::en des
::e nla::en la
::e nle::en le
::e nles::en les
::e nun::en un
::e nune::en une
:*:echéance::échéance ;;;
::ecris::écris
::efets::effets
::elle meme::elle-même
::elle même::elle-même
::embarasser::embarrasser
::emis::émis
::emmission::émission
::emotion::émotion
::enc e::en ce
::enc es::en ces
::enc et::en cet
::enc ette::en cette
::end es::en des
:*:endomagé::endommagé ;;;
::enl a::en la
::enl e::en le
::enl es::en les
::enrégistrer::enregistrer
:*:entr e::entre{Space} ;;;
:*:entrec ::entre c ;;;
:*:entred ::entre d ;;;
:*:entrel ::entre l ;;;
:*:entreu ::entre u ;;;
::entr'acte::entracte
::entrec e::entre ce
::entrec es::entre ces
::entrec et::entre cet
::entrec ette::entre cette
::entred es::entre des
::entrel a::entre la
::entrel e::entre le
::entrel es::entre les
::entreu n::entre un
::entreu ne::entre une
::enu n::en un
::enu ne::en une
:*:envelope::enveloppe ;;;
:*:erronné::erroné ;;;
::espagne::Espagne
::Est ce::Est-ce
::etablir::établir
::etais::étais
::Etats Unis::Etats-Unis
::etats-Unis::Etats-Unis
::etre::être
::eux memes::eux-mêmes
::eux mêmes::eux-mêmes
:*:excelent::excellent ;;;
::exces::excès
:*:exelent::excellent ;;;
::exigeance::exigence
::existe t elle::existe-t-elle
::existe t il::existe-t-il
::existe t'elle::existe-t-elle
::existe t'il::existe-t-il
::existe t-elle::existe-t-elle
::existe t-il::existe-t-il
::existent elles::existent-elles
::existent ils::existent-ils
::falange::phalange
::faloir::falloir
::feminine::féminine
:*:ficheir::fichier ;;;
::filialle::filiale
::filliale::filiale
::financiaire::financière
::fios::fois
::flêche::flèche
::fonctionaire::fonctionnaire
::fonctioner::fonctionner
::Francais::Français
::france::France
::francofone::francophone
::fuire::fuir
::fumee::fumée
::gache::gâche
::gasomètre::gazomètre
::gestionaire::gestionnaire
::goufre::gouffre
::grand chose::grand-chose
::grand mère::grand-mère
::grande-bretagne::Grande-Bretagne
::grands mères::grands-mères
::griffoner::griffonner
::gèrer::gérer
::hatu::haut
:*:hipocri::hypocri ;;;
::homosexualite::homosexualité
:*:hor s::hors{Space} ;;;
:*:horsc ::hors c ;;;
:*:horsd ::hors d ;;;
:*:horsl ::hors l ;;;
:*:horsu ::hors u ;;;
; ::Htp::http
::Http::http
::http:\\::http://
::hémoragie::hémorragie
::icone::icône
::imbécilité::imbécillité
::impressionisme::impressionnisme
::inclu::inclus
::inclue::incluse
::indémniser::indemniser
::indépendent::indépendant
::innitialiser::initialiser
::innonder::inonder
::inovation::innovation
::intelectuel::intellectuel
::intervale::intervalle
::intéret::intérêt
::intérresser::intéresser
::ira t elle::ira-t-elle
::ira t il::ira-t-il
::ira t on::ira-t-on
::ira t'elle::ira-t-elle
::ira t'il::ira-t-il
::ira t'on::ira-t-on
::ira t-elle::ira-t-elle
::ira t-il::ira-t-il
::ira t-on::ira-t-on
::irlande::Irlande
::italie::Italie
::j '::j’
::j ‘::j’
::jamias::jamais
::jusqu'a::jusqu'à
::jusquau::jusqu'au
::jutse::juste
::l '::l’
::l ‘::l’
::leru::leur
::lse::les
::lui meme::lui-même
::lui même::lui-même
::luxembourg::Luxembourg
::là dessous::là-dessous
::là dessus::là-dessus
::m '::m’
::m ‘::m’
::maisonette::maisonnette
::maléable::malléable
::marronier::marronnier
::menage::ménage
::mexique::Mexique
:*:micro ordinateur::micro-ordinateur ;;;
:*:micro organisme::micro-organisme ;;;
::milion::million
::millon::million
::mio::moi
::mions::moins
::modele::modèle
::modéle::modèle
::moi meme::moi-même
::moi même::moi-même
::mourrir::mourir
::mème::même
::Méditerannée::Méditerranée
::mémotechnique::mnémotechnique
::n '::n’
::n ‘::n’
::non conforme::non-conforme
::non conformes::non-conformes
::non conformiste::non-conformiste
::non conformistes::non-conformistes
::non conformité::non-conformité
::nosu::nous
::nourir::nourrir
::nouriture::nourriture
::nous memes::nous-mêmes
::nous mêmes::nous-mêmes
::nul part::nulle part
::occupper::occuper
:*:occurence::occurrence ;;;
::ocuper::occuper
:*:ocurrence::occurrence ;;;
:*:oficiel::officiel ;;;
::ofre::offre
::ofres::offres
::ont elles::ont-elles
::ont ils::ont-ils
::orniere::ornière
:*:outr e::outre{Space} ;;;
:*:outrec ::outre c ;;;
:*:outred ::outre d ;;;
:*:outrel ::outre l ;;;
:*:outreu ::outre u ;;;
::pa rces::par ces
::pa rcet::par cet
::pa rcette::par cette
::pa rdes::par des
::pa run::par un
::pa rune::par une
::Paques::Pâques
::par dessous::par-dessous
::par dessus::par-dessus
::parafine::paraffine
::paraitre::paraître
:*:paralèlle::parallèle ;;;
::paranoyaque::paranoïaque
::parc es::par ces
::parc et::par cet
::parc ette::par cette
::pard es::par des
:*:parm i::parmi{Space} ;;;
:*:parmic ::parmi c ;;;
:*:parmid ::parmi d ;;;
:*:parmil ::parmi l ;;;
:*:parmiu ::parmi u ;;;
::paru n::par un
::peid::pied
:*:pendan t::pendant{Space} ;;;
:*:pendantc ::pendant c ;;;
:*:pendantd ::pendant d ;;;
:*:pendantl ::pendant l ;;;
:*:pendantu ::pendant u ;;;
::personalité::personnalité
:*?:personel::personnel ;;;
::peut t'il::peut-il
::peut t'on::peut-on
::peut t-il::peut-il
::peut t-on::peut-on
::peut-t'il::peut-il
::peut-t'on::peut-on
::peut-tu::peux-tu
::peux t'il::peut-il
::peux t'on::peut-on
::peux t-il::peut-il
::peux t-on::peut-on
::peux-t'il::peut-il
::peux-t'on::peut-on
::peux-t-il::peut-il
::peux-t-on::peut-on
::plein-pied::plain-pied
::plutot::plutôt
::poesie::poésie
::portugal::Portugal
:*:pou r::pour{Space} ;;;
:*:pourc ::pour c ;;;
:*:pourd ::pour d ;;;
:*:pourl ::pour l ;;;
:*:pouru ::pour u ;;;
::pouvior::pouvoir
::precedent::précèdent
::pres::près
::pret::prêt
:*:problemme::problème ;;;
:*:professionel::professionnel ;;;
:*:proffess::profess ;;;
:*:programe::programme ;;;
::prè sdes::près des
::prèsd es::près des
::prêt à porter::prêt-à-porter
::prêts à porter::prêts-à-porter
::pélerin::pèlerin
::pélerinage::pèlerinage
::périférique::périphérique
::qu '::qu’
::qu ‘::qu’
:*:quasi total::quasi-total ;;;
::quelqun::quelqu'un
::questionaire::questionnaire
::quio::quoi
:*:quitance::quittance ;;;
::racourci::raccourci
::raffinner::raffiner
::raffoller::raffoler
::rapel::rappel
::rapelle::rappelle
::rapeller::rappeler
::rapels::rappels
::recepissé::récépissé
::recomandé::recommandé
::recomandée::recommandée
:*:reconnait::reconnaît ;;;
:*:reférence::référence ;;;
::regles::règles
::remèdier::remédier
::representation::représentation
::resembler::ressembler
::resentir::ressentir
::resortir::ressortir
:*?:rhytm::rythm ;;;
::rintroduire::réintroduire
::royaume-uni::Royaume-Uni
::règlementation::réglementation
::règler::régler
:*:réference::référence ;;;
::réflection::réflexion
:*:réfèrence::référence ;;;
::réglement::règlement
::réhausser::rehausser
::réouvrir::rouvrir
::s '::s’
::s ‘::s’
:*:san s::sans{Space} ;;;
:*:sansc ::sans c ;;;
:*:sansd ::sans d ;;;
:*:sansl ::sans l ;;;
:*:sansu ::sans u ;;;
:*:sau f::sauf{Space} ;;;
:*:saufc ::sauf c ;;;
:*:saufd ::sauf d ;;;
:*:saufl ::sauf l ;;;
:*:saufu ::sauf u ;;;
:*:selo n::selon{Space} ;;;
:*:selonc ::selon c ;;;
:*:selond ::selon d ;;;
:*:selonl ::selon l ;;;
:*:selonu ::selon u ;;;
::sera t elle::sera-t-elle
::sera t il::sera-t-il
::sera t'elle::sera-t-elle
::sera t'il::sera-t-il
::sera t-elle::sera-t-elle
::sera t-il::sera-t-il
::serait t il::serait-t-il
::serait t'il::serait-t-il
::serait t-il::serait-t-il
::seront elles::seront-elles
::seront ils::seront-ils
::socièté::société
:*:sou s::sous{Space} ;;;
:*:sousc ::sous c ;;;
:*:sousd ::sous d ;;;
:*:sousl ::sous l ;;;
:*:sousu ::sous u ;;;
::soutraitant::sous-traitant
:*:su r::sur{Space} ;;;
:*:surc ::sur c ;;;
:*:surd ::sur d ;;;
:*:surl ::sur l ;;;
:*:suru ::sur u ;;;
:*:sucursale::succursale ;;;
::suis je::suis-je
:*?:supor::suppor
::symmétrie::symétrie
::synonime::synonyme
::t '::t’
::t ‘::t’
::taniere::tanière
:*:tepms::temps ;;;
::timpan::tympan
::toi meme::toi-même
::toi même::toi-même
::toujorus::toujours
:*:tricotte::tricote ;;;
::trotoir::trottoir
::trés::très
::va t elle::va-t-elle
::va t il::va-t-il
::va t on::va-t-on
::va t'elle::va-t-elle
::va t'il::va-t-il
::va t'on::va-t-on
::va t-elle::va-t-elle
::va t-il::va-t-il
::va t-on::va-t-on
::vais je::vais-je
::valeru::valeur
::vas tu::vas-tu
:*:ver s::vers{Space} ;;;
:*:versc ::vers c ;;;
:*:versd ::vers d ;;;
:*:versl ::vers l ;;;
:*:versu ::vers u ;;;
::veulliez::veuillez
::vis a vis::vis-à-vis
::vis à vis::vis-à-vis
::volontier::volontiers
::vont elles::vont-elles
::vont ils::vont-ils
::vosu::vous
::voulior::vouloir
::vous meme::vous-même
::vous memes::vous-mêmes
::vous même::vous-même
::vous mêmes::vous-mêmes
:*?:vérouill::verrouill ;;;
::àc e::à ce
::àc es::à ces
::àc et::à cet
::àc ette::à cette
::àcet::à cet
::àcette::à cette
::àd es::à des
::àdes::à des
::àl a::à la
::àl e::à le
::àl es::à les
::àla::à la
::àle::à le
::àles::à les
::àu n::à un
::àu ne::à une
::àun::à un
::àune::à une
:*:échape::échappe ;;;
::égallement::également
::États Unis::États-Unis
::états-unis::Etats-Unis
::évennement::événement

;-----------------------------------------------------------------------------------------------------------
; RACCOURCIS PERSO
;-----------------------------------------------------------------------------------------------------------

:x*:f!::Menu, Fractions1, Show
:x?:!1::Menu, 2MainFMenu, Show
:*:!12::½
:*:!13::⅓
:*:!23::⅔
:*:!14::¼
:*:!34::¾
:*:!15::⅕
:*:!25::⅖
:*:!35::⅗
:*:!45::⅘
:*:!16::⅙
:*:!56::⅚
:*:!17::⅐
:*:!18::⅛
:*:!38::⅜
:*:!58::⅝
:*:!78::⅞
:*:!19::⅑
:*:!110::⅒
:*:!1.::⅟

:x?*:^pp::Menu, Puiss, Show
:x*?SE:^0::Send ⁰
:x*?SE:^1::Send ¹
:x*?SE:^2::Send {U+B2} ; ²
:x*?SE:^3::Send ³
:x*?SE:^4::Send ⁴
:x*?SE:^5::Send ⁵
:x*?SE:^6::Send ⁶
:x*?SE:^7::Send ⁷
:x*?SE:^8::Send ⁸
:x*?SE:^9::Send ⁹
:x*?SE:^+::Send ⁺
:x*?SE:^-::Send ⁻
:x*?SE:^=::Send ⁼
:x*?SE:^(::Send ⁽
; :x*?SE:^)::Send ⁾

:x?CSE:^(::Send ⁽ ; autoreplace must be deactivated because ( is rebound
:x?*CSE:^)::Send ⁾
:x?*CSE:^A::Send Â
:x?*CSE:^a::Send â
:x?*CSE:^E::Send Ê
:x?*CSE:^e::Send ê
:x?*CSE:^I::Send Î
:x?*CSE:^i::Send î
:x?*CSE:^O::Send Ô
:x?*CSE:^o::Send ô
:x?*CSE:^U::Send Û
:x?*CSE:^u::Send û
:x?*CSE:^C::Send Č
:x?*CSE:^c::Send č
:x?CSE:^D::Send Ď
:x?CSE:^d::Send ď
:x?CSE:^DZ::Send Ǆ
:x?CSE:^Dz::Send ǅ
:x?CSE:^dz::Send ǆ
:x?*CSE:^L::Send Ľ
:x?*CSE:^l::Send ľ
:x?*CSE:^N::Send Ň
:x?*CSE:^n::Send ň
:x?*CSE:^R::Send Ř
:x?*CSE:^r::Send ř
:x?*CSE:^S::Send Š
:x?*CSE:^s::Send š
:x?*CSE:^T::Send Ť
:x?*CSE:^t::Send ť
:x?*CSE:^Z::Send Ž
:x?*CSE:^z::Send ž

:x?*:¨pp::Menu, Indi, Show
:x*?SP:¨0::Send ₀
:x*?SP:¨1::Send ₁
:x*?SP:¨2::Send ₂
:x*?SP:¨3::Send ₃
:x*?SP:¨4::Send ₄
:x*?SP:¨5::Send ₅
:x*?SP:¨6::Send ₆
:x*?SP:¨7::Send ₇
:x*?SP:¨8::Send ₈
:x*?SP:¨9::Send ₉
:x*?SP:¨+::Send ₊
:x*?SP:¨-::Send ₋
:x*?SP:¨=::Send ₌
:x?SE:¨(::Send ₍ ; autoreplace must be deactivated because ( is rebound
:x*?SP:¨)::Send ₎

:X?*CSE:``A::Send À
:x?*CSE:``a::Send à
:X?*CSE:``E::Send È
:x?*CSE:``e::Send è
:X?*CSE:``I::Send Ì
:x?*CSE:``i::Send ì
:X?*CSE:``O::Send Ò
:x?*CSE:``o::Send ò
:X?*CSE:``U::Send Ù
:x?*CSE:``u::Send ù
:?:``::ù

:X?*CSE:~A::Send Ã
:x?*CSE:~a::Send ã
:X?*CSE:~I::Send Ĩ
:x?*CSE:~i::Send ĩ
:X?*CSE:~O::Send Õ
:x?*CSE:~o::Send õ
:X?*CSE:~N::Send Ñ
:x?*CSE:~n::Send ñ

:X?*CSE:´A::Send Á
:x?*CSE:´a::Send á
:X?*CSE:´E::Send É
:x?*CSE:´e::Send é
:X?*CSE:´I::Send Í
:x?*CSE:´i::Send í
:X?*CSE:´O::Send Ó
:x?*CSE:´o::Send ó
:X?*CSE:´U::Send Ú
:x?*CSE:´u::Send ú
:X?*CSE:´Y::Send Ý
:x?*CSE:´y::Send ý
:X?*CSE:´C::Send Ć
:x?*CSE:´c::Send ć

:x*:a!::Menu, ArrowsA, Show
:x?:**::Menu, ArrowsA, Show
:*:**1*::⇙
:*:**2*::⇓
:*:**3*::⇘
:*:**4*::⇐
:*:**5*::⇕
:*:**6*::⇒
:*:**7*::⇖
:*:**8*::⇑
:*:**9*::⇗
:*:*1*::↙
:*:*2*::↓
:*:*3*::↘
:*:*4*::←
:*:*5*::↕
:*:*6*::→
:*:*7*::↖
:*:*8*::↑
:*:*9*::↗
:*:*--*::⇔
:*:*-*::↔
;:*:*51::
:*:*52*::↧
;:*:*53::
:*:*54*::↤
;:*:*55::
:*:*56*::↦
;:*:*57::
:*:*58*::↥
;:*:*59::

:x?:¤::Menu, GCurMenu, Show
:?*:¤b::₿
:?*:¤c::¢
:?*:¤e::€
:?*:¤l::£
:?*:¤s::$
:?*:¤t::₺
:?*:¤y::¥

:?*:+-::±
:?*:>=::≥
:?*:=/::≠
::~~::≈
:x:=~::SendEvent ≃%A_EndChar% ; requires endchar
:x:^%::SendEvent ‰%A_EndChar% ; requires endchar
:*?:^%2::‰
:*?:^%3::‱
:?:^‰::‱ ; requires endchar
:?*:^‰3::‱
:?:!3√::∛ ; requires endchar
:*?:!√3::∛

:*:(r)::®
:*:(c)::©
:*:(p)::℗
:C:TM::™

:?*:ae!::æ
:?*:oe!::œ
:C?*:IJ!::Ĳ
:C?*:ij!::ĳ
:?*:db!::ȸ
:C?*:DZ!::Ǳ
:C?*:Dz!::ǲ
:C?*:dz!::ǳ
:C?*:LJ!::Ǉ
:C?*:Lj!::ǈ
:C?*:lj!::ǉ
:C?*:NJ!::Ǌ
:C?*:Nj!::ǋ
:C?*:nj!::ǌ
:?*:qp!::ȹ

:x*?SP:^#::Send ♯

:x*C:g!::Menu, GreekMin, Show
:x*C:G!::Menu, GreekMaj, Show
:x:!g::Menu, GMainGreekMenu, Show
:C*:!gA::Α
:C*:!ga::α
:C*:!gB::Β
:C*:!gb::β
:C*:!gD::Δ
:C*:!gd::δ
:C*:!gE::Ε
:C:!ge::ε
:C*:!gef::ϵ
:C*:!gF::Φ
:C:!gf::φ
:C*:!gff::ϕ
:C:!gG::Γ
:C*:!gGf::Ϝ
:C*:!gg::γ
:C*:!gH::Η
:C*:!gh::η
:C*:!gI::Ι
:C*:!gi::ι
:C*:!gK::Κ
:C:!gk::κ
:C*:!gkf::ϰ
:C*:!gL::Λ
:C*:!gl::λ
:C*:!gM::Μ
:C*:!gm::μ
:C*:!gN::Ν
:C*:!gn::ν
:C*:!gO::Ω
:C*:!go::ω
:C:!gP::Π
:C:!gp::π
:C*:!gPs::Ψ
:C*:!gps::ψ
:C*:!gQ::Χ
:C*:!gq::χ
:C*:!gR::Ρ
:C*:!gr::ρ
:C:!gS::Σ
:C:!gs::σ
:C*:!gsf::ϛ
:C:!gT::Τ
:C:!gt::τ
:C*:!gTh::Θ
:C:!gth::θ
:C*:!gthf::ϑ
:C*:!gU::Υ
:C*:!gu::υ
:C*:!gX::Ξ
:C*:!gx::ξ
:C*:!gZ::Ζ
:C*:!gz::ζ

:x*:tp!::
	Menu, TimeDate, DeleteAll
	List := DateFormats(Date)
	TextMenuDate(List,"TimeDate","DateAction")
	Menu, MainMenu, Show
Return

:x*:t!::
	UpdateTime()
	Menu, TimeDate, Show
Return

:*:dh!::	; This hotstring replaces "]d" with the current date and time via the commands below.
	FormatTime, CurrentDateTime,, dd/MM/yyyy HH:mm	; It will look like 9/1/2005 03:53
	Send %CurrentDateTime%
Return

:*:d!::
	FormatTime, CurrentDateTime,, dd/MM/yyyy
	Send %CurrentDateTime%
Return

:*:h!::
	FormatTime, CurrentDateTime,, HH:mm
	Send %CurrentDateTime%
Return

:x*:m1@::Send %Mailn1%
:x*:m2@::Send %Mailn2%
:x*:m3@::Send %Mailn3%
:x*:m4@::Send %Mailn4%
:x*:m5@::Send %Mailn5%
:x*:m6@::Send %Mailn6%

:*:!&::
:*:&!::
:*:ras&::
:*:ras!::
	Send sans particularité
Return

:*:cst&::HD stable, apyrétique, eupnéique en air ambiant.
:*:sympt&::Pas de douleur thoracique ni dyspnée.
:*:ausc&::Auscultation cardiopulmonaire sans particularité.
:x:ausc::SendEvent, auscultation%A_EndChar%
:*:exc&::Bruits du coeur réguliers, sans souffle, pas de signe d'insuffisance cardiaque droite ou gauche, mollets souples.
:*:exp&::Murmure vésiculaire bilatéral et symétrique, sans bruits surajoutés.
:*:exd&::Abdomen souple, dépressible et indolore, bruits hydro-aériques perçus.
:*:exn&::
(
patient conscient GCS 15, orienté dans le temps et dans l'espace.
Pas de déficit sensitivomoteur des 4 membres.
Pas de céphalées, pas de paralysie faciale ni d'autre anomalie des paires craniennes. Pupilles isocores réactives.
Pas de signe orientant vers un syndrome cérebelleux, vestibulaire ou pyramidal.
)
Return

:*:ex&::Pas de douleur thoracique ni dyspnée.`nPas de palpitations, ni malaise.`nBruits du coeur réguliers, sans souffle.`nPas de signe d'insuffisance cardiaque droite ou gauche.`nMurmure vésiculaire bilatéral et symétrique, sans bruits surajoutés.`nMollets souples.`nAbdomen souple dépressible indolore.`n
:*:sdi::souple, dépressible, indolore.
:*:cic&::Cicatrice propre, non inflammatoire. Sternum solide.
:*:1&::
	FormatTime, CurrentDateTime,, dd/MM/yyyy HH:mm
	Send {Space}%CurrentDateTime%{Space}- %myname%`nHD stable, apyrétique, eupnéique en air ambiant.`nScope : pas d'évènement.`n`n`nBio :`n`n`nCAT :`n
Return
:*:1!::
	FormatTime, CurrentDateTime,, dd/MM/yyyy HH:mm
	Send {Space}%CurrentDateTime%{Space}- %myname%`nHD , eupnéique .`nScope : `n`n`nBio :`n`n`nCAT :`n
Return
:*:2!::
:*:2&::
	Send Bio :`n`n`nCAT :`n
Return

:*:fdr&::
(
Concernant les facteurs de risque modifiables :
-	La PA est autour de  mmHg en moyenne
L'HbA1c est à %
Le LDL a été recontrôlé à  g/l pour une cible < 0,55 g/l
Le tabagisme est sevré/Il n'y a pas de tabagisme.
)
Return

::pp!::point de ponction
:*:pp&::Point de ponction sans particularité, pas d'écchymose ni d'hématome, pas de souffle, pouls palpé en aval.
:*:ppr&::Point de ponction radial sans particularité, pas d'écchymose ni d'hématome, pouls radial palpé.
:*:ppr1&::Point de ponction radial sans particularité, TR band en place, pas d'écchymose ni d'hématome.
:*:ppf&::Point de ponction fémoral sans particularité, pas d'écchymose ni d'hématome, pas de souffle, pouls palpé en aval.
:*:ppf1&::Point de ponction fémoral sans particularité, pansement compressif en place, pas d'écchymose ni d'hématome, pas de souffle, pouls palpé en aval.
:*:loge&::Loge saine, pansement sec, pas d'écchymose ni d'hématome.

:*:ic&::
:*:ic!::
	Send pas de signe d'insuffisance cardiaque droite ou gauche
Return
:*:tm&::Télémétrie : pas d'évènement.
:*:sc&::Scope : pas d'évènement.
:*:cs!::consultation

:C*:rsr::
:C*:RSR::
	SendEvent Rythme sinusal régulier à
Return
:C:Rythme sinusal régulier à à::Rythme sinusal régulier à
:*:smbb::sans morphologie de bloc de branche, 
:*:bbch::bloc de branche

:*:ecg&::Rythme sinusal régulier, axe normal, PR normal, QRS fins, pas de trouble de la repolarisation.
:*:ecgd!::Rythme sinusal régulier à * bpm, axe normal, PR * ms, QRS * ms, pas de trouble de la repolarisation.
:*:ecgree!::Rythme électroentrainé à l'étage

:*x:bpm!::GoSub, BPMcalc
:*x:ms!::GoSub, MScalc
:*x:imc!::GoSub, IMCcalc
:*x:imci!::GoSub, IMCIcalc
:*x:imca!::GoSub, IMCauto

:*x:auscultation cp::SendEvent, auscultation cardiopulmonaire
::fdrcv::facteurs de risque cardiovasculaires
::risque cv::risque cardiovasculaire
:*:cv!::cardiovasculaire
:*:cp!::cardiopulmonaire

:*:cdiag!::Coronarographie diagnostique
:*:revascp!::Indication à une revascularisation par voie percutanée. Hospitalisation pour angioplastie prévue le
:*:revascc!::Indication à une revascularisation chirurgicale.

:*:antico!::Le patient déclare avoir eu une observance parfaite du traitement anticoagulant le mois précédent.

:C:bdc::bruits du coeur
::bdcreg::bruits du coeur réguliers
::bdc reg::bruits du coeur réguliers
::bdcregss::bruits du coeur réguliers, sans souffle
::bio!::Hb  g/dl, GB /mm³, plaquettes /mm³, CRP  mg/l`nGlycémie à jeun  g/l, HbA1c %, cholestérol total  g/l, HDL  g/l, LDL  g/l, triglycérides  g/l`nSodium  mmol/l, potassium  mmol/l, créatinine  µmol/l soit clairance  ml/min`nGGT  UI/l, PAL  UI/l, ALAT  UI/l, ASAT  UI/l, bilirubine  mmol/l`nNT-pro BNP  ng/l, ferritine  ng/ml, CST %, TSH  mUI/l, albumine  g/l, vitamine D  ng/ml`n
::badapt::bonne adaptation ressentie au protocole d'entrainement à l'effort
::btol::bonne tolérance ressentie au protocole d'entrainement à l'effort

::arpmt::
::armt::
	Send à renouveler par le médecin traitant ou le cardiologue.
Return
:*:pdat::poursuite des autres traitements
::réad!::Réadaptation à l'effort : entraînement aérobie, initiation à un entraînement physique adapté, sous surveillance télémétrique.
:*:pcomp::Pas de complication.

:?*:0eme::0ème
:*:1ere::1ère
:?*:1eme::1ème
:?*:2eme::2ème
:?*:3eme::3ème
:?*:4eme::4ème
:?*:5eme::5ème
:?*:6eme::6ème
:?*:7eme::7ème
:?*:8eme::8ème
:?*:9eme::9ème
:?:.0.0:: cp le matin
::0.1.0::1 cp le midi
::0.0.1::1 cp le soir
::0.0.0.1::1 cp au coucher
::1.1.1::1 cp matin, midi et soir
::1.1.0::1 cp matin et midi
::1.0.1::1 cp matin et soir
::0.1.1::1 cp midi et soir
::0.2.0::2 cp le midi
::0.0.2::2 cp le soir
::2.2.2::2 cp matin, midi et soir
::2.2.0::2 cp matin et midi
::2.0.2::2 cp matin et soir
::0.2.2::2 cp midi et soir
::1.0.2::1 cp le matin et 2 cp le soir
::2.0.1::2 cp le matin et 1 cp le soir

::lifevest ::LifeVest

::Amio::Amiodarone
:*:Vyndaquel::Vyndaqel

; anti thrombotiques
::Eliq::Eliquis (Apixaban)
::Apix::Apixaban
::Prad::Pradaxa (Dabigatran)
::Prada::Pradaxa (Dabigatran)
::Dabi::Dabigatran
::Xar::Xarelto (Rivaroxaban)
::Xare::Xarelto (Rivaroxaban)
::Rivar::Rivaroxaban
::Rivaro::Rivaroxaban
::Kard::Kardegic (Aspirine)
::Karde::Kardegic (Aspirine)
::Plav::Plavix (Clopidogrel)
::Clop::Clopidogrel
::Clopi::Clopidogrel
::Duop::Duoplavin (Aspirine/Clopidogrel)
::Duopl::Duoplavin (Aspirine/Clopidogrel)
::Duiplavin::Duoplavin (Aspirine/Clopidogrel)

; insuffisance cardiaque
::Entr::Entresto (Sacubitril/Valsartan)
::Dapa::Dapagliflozine
::Empa::Empagliflozine
::éplé::Eplérénone
::Eple::Eplérénone
::Furo::Furosémide 
::Biso::Bisoprolol
::Nebi::Nebivolol
::Enal::Enalapril
::Rami::Ramipril
::Perin::Périndopril
::Cand::Candésartan
::Irbe::Irbésartan
::Losa::Losartan
::Vals::Valsartan
::Valsa::Valsartan

; anti diabétiques
::Metf::Metformine
::Metfo::Metformine
::Diam::Diamicron (Gliclazide)
::Glicl::Gliclazide
::Répa::Répaglinide
::Janu::Januvia (Sitagliptine)
::Sita::Sitagliptine
::Ozem::Ozempic (Sémaglutide)
::Sema::Sémaglutide
::Trul::Trulicity (Dulaglutide)
::Truli::Trulicity (Dulaglutide)
::Dula::Dulaglutide
::Lira::Liraglutide ; Victoza
::Velm::Velmetia (Sitagliptine/Metformine)
::Eucr::Eucreas (Vildagliptine/Metformine)
::Komb::Komboglyze (Saxagliptine/Metformine)
::Synj::Synjardy (Empagliflozine/Metformine) ; 5/1000 Et 12,5/1000
::Xig::Xigduo (Dapagliflozine/Metformine) ; 5/1000 Uniquement
::Xigd::Xigduo (Dapagliflozine/Metformine) ; 5/1000 Uniquement

; hypolipémiants
::Ator::Atorvastatine
::Atorva::Atorvastatine
::Atoreze::Atorvastatine/Ezétimibe (Liptruzet ou Reselip)
::Lipt::Liptruzet (Atorvastatine/Ezétimibe)
::Rese::Reselip (Atorvastatine/Ezétimibe)
; ::Juna::Junaliza (Atorvastatine/Ezetimibe)
::Fluv::Fluvastatine
::Fluva::Fluvastatine
::Prav::Pravastatine
::Prava::Pravastatine
::Rosu::Rosuvastatine
::Rosuva::Rosuvastatine
::Rosueze::Rosuvastatine/Ezétimibe (Liporosa ou Suvreza ou Twicor)
::Lipor::Liporosa (Rosuvastatine/Ezétimibe)
::Suvr::Suvreza (Rosuvastatine/Ezétimibe)
::Twic::Twicor (Rosuvastatine/Ezétimibe)
::Simv::Simvastatine
::Simva::Simvastatine
::Simveze::Simvastatine/Ezétimibe (Inegy)
::Ineg::Inegy (Simvastatine/Ezétimibe)
::Ezé::
::Eze::
::Ezét::
::Ezet::
::ézé::
::ézét::
	SendEvent, Ezétimibe%A_EndChar%
Return 
::Pral::Praluent (Alirocumab)
::Repat::Repatha (Evolocumab)

::PDR PR INHAL EN GÉLULE::
::GÉLULE À LIBÉRATION PROLONGÉE::


:*:aomi::AOMI
:*:cm2::cm²
:*:cm3::cm³
:*:fevg::FEVG
:*:tavi::TAVI
:*:tvns::TVNS
:*:mm2::mm²
:*:mm3::mm³
:*:cmhg::cmHg
:*:mmhg::mmHg
:*:ug::µg
::mgh::mg/h
::mgj::mg/j
::mgl::mg/l
::ngl::ng/l
::umol::µmol
::umoll::µmol/L
::mmoll::mmol/L
::moll::mol/L
::mlmn::mL/min
::mlmin::mL/min
:*:mlmnkg::mL/min/kg
:*:mlminkg::mL/min/kg
:*:mlkgmn::mL/kg/min
:*:mlkgmin::mL/kg/min
:*:mlm2::mL/m²
::uih::ui/h
::uil::UI/L
::muil::mUI/L
::hb::Hb
::hba1c::HbA1c
::fogd::FOGD

:*:*/j::fois par jour
::anti agg::anti aggrégant
::aprem::après-midi
::ajd::aujourd'hui
::cardiopulm::cardiopulmonaire
:*:cpx::complexe
::créat::créatinine
::diag::diagnostique
::d'ic::d'insuffisance cardiaque
:x*SE:de dl::SendEvent, de douleur 
:SE:dlt::
:SE:dlth::
:SE:dl th::
:SE:dl tho::
:SE:dltho::
:SE:douleur th::
:SE:douleur tho::
	SendEvent, douleur thoracique%A_EndChar%
Return
:*:pdac::pas d'allergie connue


::dun::d'un
:C:GDS ::
	Send Gaz du sang : pH  / PCO₂  / PO₂  / Bicar  / lactate 
	Send {left 34} ;Re-select text
Return
:C:Cdlt::Cordialement
:C:Cdt::Cordialement
::hémioc::
::hémoc::
::hemoc::
	Send hémoculture
Return
::insC::insuffisance cardiaque
:*:j ::jour{Space}
::jsqa::jusqu'à
::jsqà::jusqu'à
::jsqau::jusqu'au
::nl::normal
::pdt::pendant
:*:prlv::prélèvement
::qlq::quelque
::qq::quelque
:*:qlqn::
:*:qqn::
:*:qqun::
	Send quelqu'un
Return

:*:qlqp::quelque part
:*:qqp::quelque part
::repo°::repolarisation
:*:stvb::si tout va bien
::suppl::supplément
:*:tjs::toujours
:?*:attt::athérapie
:?*:ettt::ethérapie
:?*:ottt::othérapie
::tlm::tout le monde
:*:ttt::traitement
::tropo::troponine
::vit D::vitamine D
::vit K::vitamine K
:C:vsh::veines sus hépatiques
::la repo::la repolarisation
::tbrepo::trouble de la repolarisation
::gmoy::gradient moyen
::hta::HTA
::gdl::g/dl
::gl::g/l
::nle::normale
::semiane::semaine
:*:pakpit::palpit
:C:GAJ::glycémie à jeun
::pqt::plaquettes
:C?*:s°::sion
:C?*:t°::tion


:?*:aù::am
:?*:bù::bm
:?*:cù::cm
:?*:dù::dm
:?*:eù::em
:?*:fù::fm
:?*:gù::gm
:?*:hù::hm
:?*:iù::im
:?*:jù::jm
:?*:kù::km
:?*:lù::lm
:?*:mù::mm
:?*:nù::nm
:?*:pù::pm
:?*:qù::qm
:?*:rù::rm
:?*:sù::sm
:?*:tù::tm
:?*:uù::um
:?*:vù::vm
:?*:wù::wm
:?*:xù::xm
:?*:yù::ym
:?*:zù::zm
:?*:bkle::ble
:?*:blke::ble
:?*:blme::ble
:?*:cmeent::cement
:?*:e,t::ent
:?*:enbt::ent
:?*:mebt::ment
:?*:iours::ours
:*?:taion::ation
:?:tio::tion
:?*:tiosn::tions
:?*:tuon::tion
:?*:io n::ion{Space}
:?*:iopn::ion
:?:olouge::ologue
:*:``n::{`}n


:*:à à::à
:*:acisode::acidose
:*:adapatat::adaptat
::aisni::ainsi
::aklentours::alentours
:*:améliro::amélior
:*:améliraiton::amélioration
:*:ampule::ampoule
:*:oart::aort
::aortquiue::aortique
:*:appairition::apparition
:*:payréti::apyréti
:?*:ascne::ascen
:*:atteitn::atteint
:*:attetn::attent
:*:arret::arrêt
:*:arreêt::arrêt
:*:arrpêt::arrêt
:*:auicun::aucun
:*:aucubn::aucun
:*:aucunb::aucun
:*:acun::aucun
::aujourdhui::aujourd'hui
::aujourd’huio::aujourd'hui
:*:asucult::
:*:ausculat::
:*:auscutl::
:*:ausuclt::
:*:ausuct::
:*:ausculut::
	SendEvent, auscult
Return
::auscultion::auscultation
::auscultatio::auscultation
::avce::avec
:*:bassie::baisse
:*:bauisse::baisse
::bioen::bien
:*:bialn::bilan
:*:biklan::bilan
:*:biospsie::biopsie
:*:calbir::calibr
::cradiaque::cardiaque
:*:cardiauq::cardiaqu
::cardiologoie::cardiologie
:*:cadio::cardio
::carrdi::cardi
:*:cardiv::cardiov
:*:ce jouir::ce jour
:?*:vhang::chang
:*:clinquiue::clinique
:?*:clinquiu::cliniqu
:*:cohce::coche
:*:comaparat::comparat
:?*:compesn::compens
:*:complci::complic
:*:cognest::congest
:*:consutl::consult
::consulation::consultation
:*:cotnext::context
::Coridalement::Cordialement
::coroan::corona
::coroanaire::coronaire
:*:cornaro::coronaro
:*:coronairen::coronarien
:*:corrgi::corrig
:*:corticoide::corticoïde
::creat::créatinine
:*:crépitat::crépitant
:*:d '::d'
::deffort::d'effort
::décéalage::décalage
:*:demabnd::demand
:*:demadn::demand
:*:dessosu::dessous
::dosseir::dossier
::douelur::douleur
:*:diatat::dilatat
:*:dilatatat::dilatat
:*:dilta::dilata
::diminuitpon::diminution
::disuque::disque
:*:diurese::diurèse
:*:diuyrese::diurèse
::dopller::doppler
:*:droti::droit
:*:dysdonction::dysfonction
:*:dysoné::dyspné
:*:dysopné::dyspné
:*:dysponé::dyspné
:*:dyspén::dyspné
::ehcographie::échographie
::e,::en
::en baise::en baisse
:*:encviron::environ
::apnchement::épanchement
::epreuve::épreuve
::etati::était
:*:évalation::évaluation
:*:évebn::éven
::évlution::évolution
::exmaen::examen
::exmane::examen
:?*:explci::explic
::fopis::fois
::fosi::fois
:?*:focntion::fonction
:?*:gmeent::gement
::groiupes::groupes
::heir::hier
::hioer::hier
:*:hopital::hôpital
:*:hiospita::hospita
:?*:hydraat::hydrat
:*:hyperxci::hyperexci
::IMR::IRM
:*:ifnér::infér
::introuction::introduction
::jonciton::jonction
:*:jsuqu::jusqu
:*:jusitif::justifi
:*:alsilix::lasilix
::ka::la
:*:kla::la
:*:kle::le
:*:lke::le
::ke::le
::leger::léger
::legere::légère
::legereùent::légèrement
::lésiosn::lésions
:?*:limti::limit
:*:majro::major
:*:amtin::matin
:*:matni::matin
:*?:mmatori::mmatoir
:*:amxim::maxim
:?*:ùe::me
:*?:memebr::membr
::mertci::merci
:*:mniut::minut
:*:miotra::mitra
::mpoi ::moi
::Monisuer::Monsieur
:*:myopca::myoca
::myocardiaque::myocardique
:?*:noraml::normal
::ntoamment::notamment
:*:nouvelel::nouvelle
:*:oedeme::œdème
::opératorie::opératoire
::ordonnanc e::ordonnance 
:*:ortiel::orteil
:*:pabsement::pansement
:*:apracetamol::paracetamol
:*:âs::pas
::aps::pas
::pale::pâle
::paleur::pâleur
:?*:apthie::pathie
:*:aptient::patient
::paient::patient
::plaintre::plainte
:*:palint::plaint
:?*:pastie::plastie
::piour::pour
:?*:pklac::plac
::pkan::plan
:*:plutopt::plutôt
:*:pkutot::plutôt
::prédicitf::prédictif
::prélmevement::prélèvement
::prélevement::prélèvement
::prelevement::prélèvement
:*:prologn::prolong
:*:prtoid::protid
:*:pulmoan::pulmona
:*:pulmion::pulmon
:*:queqlu::quelqu
:*:rabpt::rabot
::RAs::RAS
::réupérer::récupérer
::réguleir::régulier
::résukt::résult
:*:résutlat::résultat
::rissque::risque
:*:ryhtm::rythm
:*:slalve::salve
:?*:asturat::saturat
:*C:SCope::Scope
::scopre::scope
::semaien::semaine
:*:segement::segment
:*:setpum::septum
:*:setum::septum
:*:spetum::septum
::esul::seul
:*:servé::sevré
:*:sigmoid::sigmoïd
:*:signiof::signif
::sinsual::sinusal
:?*:soufflk::souffl
:?*:osuffl::souffl
:*:suos::sous
:*:sosu::sous
:*:spriom::spirom
::stbl::stable
::sstable::stable
:?*:satbl::
:?*:stabk::
:?*:stabkl::
:?*:stalb::
:?*:stbal::
:?*:syabl::
	Send stabl
Return
:?*:stabikli::stabili
:*:stnéos::sténos
:?*:suiote::suite
:*:suppélmetn::supplément
:?*:suppélment::supplément
::siur::sur
::surveillacne::surveillance
:*:surevnu::survenu
:*:ssytol::systol
:*:tachcy::tachyc
:?*:tatn::tant
:*:throra::thora
::toujour s::
:*:toujiours::
:*:tioujours::
::troujours::
	Send toujours
Return
:?*:tiouj::touj
:*:totu::tout
:*:totuef::toutef
:*:trasn::trans
:*:tricusid::tricuspid
:*:troponione::troponine
::tb::trouble
::tbl::trouble
::troubme::trouble
::tbles::troubles
::uen::une
:?*:uune::une
:*:valcul::valvul
::veinses::veines
:?*:vnetil::ventil
:?*:ventricual::ventricula
::vitamien::vitamine
::vpilà::voilà

::xeek::week
::fctn::fonction
::fction::fonction
:C:m`^m::même
::gche::gauche
::nyha::NYHA
:*:gàj::glycémie à jeun
:*:gaj::glycémie à jeun
:*:grandient::gradient
:*:tsit::transit
:C:mv::murmure vésiculaire
:C:MV::murmure vésiculaire
::CPI::cardiopathie ischémique
:*:vomx::VO2max
::rempalcement::remplacement
:C*:EE!::épreuve d'effort
:C*:ee!::épreuve d'effort
:*:semaie::semaine
:*:souleur::douleur
::chz::chez
:?*:oratorie::oratoire
::prorpre::propre
::inféreur::inférieur
::furpsémide::furosémide
::congetif::congestif
::dnt::dont
::épreue::épreuve
::réadapation::réadaptation
:C*:MI!::membres inférieurs
::mle::le
:*:cmhg::cmHg
::jpur::jour
::réadapatation::réadaptation
::tlj::tous les jours
::bilat et sym::bilatéral et symétrique
::bilat::bilatéral
::blsm::bilatéral et symétrique
::o,::on
::dte::droite
