#define FLAG_C 0x01
#define FLAG_Z 0x02
#define FLAG_I 0x04
#define FLAG_D 0x08
#define FLAG_B 0x10
#define FLAG_V 0x40
#define FLAG_N 0x80
#define SET_FLAG_CARRY()	{ P |=  FLAG_C; }
#define CLEAR_FLAG_CARRY()	{ P &= ~FLAG_C; }
#define FLAG_ISSET_CARRY()	( P & FLAG_C )

#define UPDATE_FLAG_CARRY(b) {		\
	if (b) {			\
		SET_FLAG_CARRY();	\
	} else {			\
		CLEAR_FLAG_CARRY();	\
	}                               \
      }

#define SET_FLAG_ZERO()		{ P |=  FLAG_Z; }
#define CLEAR_FLAG_ZERO()	{ P &= ~FLAG_Z; }
#define FLAG_ISSET_ZERO()	( P & FLAG_Z )

#define UPDATE_FLAG_ZERO(b) {		\
	if (b) {			\
		SET_FLAG_ZERO();	\
	} else {			\
		CLEAR_FLAG_ZERO();	\
	}                               \
      }

// TODO: FLAG_I (interrupt), These probably need a better definition
#define SET_FLAG_INTERRUPT()    { P |= FLAG_I; }
#define CLEAR_FLAG_INTERRUPT()  { P &= ~FLAG_I; }
#define FLAG_ISSET_INTERRUPT()  ( P & FLAG_D )

#define SET_FLAG_DECIMAL()	{ P |=  FLAG_D; }
#define CLEAR_FLAG_DECIMAL()	{ P &= ~FLAG_D; }
#define FLAG_ISSET_DECIMAL()	( P & FLAG_D )

#define UPDATE_FLAG_DECIMAL(b) {	\
	if (b) {			\
		SET_FLAG_DECIMAL();	\
	} else {			\
		CLEAR_FLAG_DECIMAL();	\
	}                               \
      }

#define SET_FLAG_BREAK()	{ P |=  FLAG_B; }
#define CLEAR_FLAG_BREAK()	{ P &= ~FLAG_B; }
#define FLAG_ISSET_BREAK()	( P & FLAG_B )

#define UPDATE_FLAG_BREAK(b) {		\
	if (b) {			\
		SET_FLAG_BREAK();	\
	} else {			\
		CLEAR_FLAG_BREAK();	\
	}                               \
      }

#define SET_FLAG_OVERFLOW()	{ P |=  FLAG_V; }
#define CLEAR_FLAG_OVERFLOW()	{ P &= ~FLAG_V; }
#define FLAG_ISSET_OVERFLOW()	( P & FLAG_V )

#define UPDATE_FLAG_OVERFLOW(b) {	\
	if (b) {			\
		SET_FLAG_OVERFLOW();	\
	} else {			\
		CLEAR_FLAG_OVERFLOW();	\
	}                               \
      }

#define SET_FLAG_NEG()		{ P |=  FLAG_N; }
#define CLEAR_FLAG_NEG()	{ P &= ~FLAG_N; }
#define FLAG_ISSET_NEG()	( P & FLAG_N )

#define UPDATE_FLAG_NEG(b) {		\
	if (b) {			\
		SET_FLAG_NEG();	\
	} else {			\
		CLEAR_FLAG_NEG();	\
	}                               \
      }
