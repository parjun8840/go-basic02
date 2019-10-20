SOURCE=github.com/parjun8840/go-basic02
GO=$(shell which go)
GOINSTALL=$(GO) install
GOCLEAN=$(GO) clean
EXENAME=main
AUTHOR=parjun8840
BUILDPATH=$(CURDIR)
CURRENTDIRS=$(wildcard $(BUILDPATH)/*)
export GOPATH=$(CURDIR)

initial:
	-@echo "Going to build now. Initially only src directory is created. Current directory is: $(CURDIR)\n"

build: welcomemsg initial
	@echo "Under build. PWD is: ${PWD}"
	$(GOINSTALL) $(SOURCE)
	sleep 1 

makedir:
	@if [ ! -d $(BUILDPATH)/bin ]; then mkdir -p $(BUILDPATH)/bin ; fi
	@if [ ! -d $(BUILDPATH)/pkg ]; then mkdir -p $(BUILDPATH)/pkg ; fi

clean:
	@rm -rf $(BUILDPATH)/bin $(BUILDPATH)/pkg

welcomemsg:
	@echo "I am $(AUTHOR). This is simple make example"

output: 
	@echo "\nPrint the directories under the source path:\n"
	@for f in $(CURRENTDIRS); do echo $${f} ; done

all: makedir build output
