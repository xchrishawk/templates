# -- Variables --

PROJECT			:= ${TEMPLATE}
MODULES			:= main

ROOTDIR			:= .
SRCDIR			:= $(ROOTDIR)/src
DEPDIR			:= $(ROOTDIR)/dep
OBJDIR			:= $(ROOTDIR)/obj
BINDIR			:= $(ROOTDIR)/bin

SRCS			:= $(addprefix $(SRCDIR)/,$(addsuffix .cpp,$(MODULES)))
DEPS			:= $(addprefix $(DEPDIR)/,$(addsuffix .d,$(MODULES)))
OBJS			:= $(addprefix $(OBJDIR)/,$(addsuffix .o,$(MODULES)))
BIN			:= $(BINDIR)/$(PROJECT)

CPP			:= g++ -E
CXX			:= g++ -c
LD			:= g++

CPPFLAGS		:=
CXXFLAGS		:= -std=gnu++11 -g -Wall -Wpedantic
LDFLAGS			:= -g
LIBS			:=

# -- Rules --

.PHONY : all clean rebuild run

all : $(BIN)

clean :
	$(RM) $(BIN) $(OBJS) $(DEPS)

rebuild : clean all

run : $(BIN)
	$(BIN)

$(BIN) : $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^ $(LIBS)

$(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ $<

$(DEPDIR)/%.d : $(SRCDIR)/%.cpp
	$(CPP) $(CPPFLAGS) -MM -MT $(OBJDIR)/$(notdir $(basename $<)).o -MT $@ -o $@ $<

-include $(DEPS)
