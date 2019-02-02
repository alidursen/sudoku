##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=sudoku
ConfigurationName      :=Release
WorkspacePath          := "/home/alikutlu/Belgeler/sudoku"
ProjectPath            := "/home/alikutlu/Belgeler/sudoku"
IntermediateDirectory  :=./Release
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=AliKutlu
Date                   :=22/06/18
CodeLitePath           :="/home/alikutlu/.codelite"
LinkerName             :=/usr/bin/x86_64-linux-gnu-g++
SharedObjectLinkerName :=/usr/bin/x86_64-linux-gnu-g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)NDEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="sudoku.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/x86_64-linux-gnu-ar rcu
CXX      := /usr/bin/x86_64-linux-gnu-g++
CC       := /usr/bin/x86_64-linux-gnu-gcc
CXXFLAGS :=  -O2 -Wall -std=c++11 $(Preprocessors)
CFLAGS   :=  -O2 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/x86_64-linux-gnu-as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/2cell.cpp$(ObjectSuffix) $(IntermediateDirectory)/0ProblemSpace.cpp$(ObjectSuffix) $(IntermediateDirectory)/UI.cpp$(ObjectSuffix) $(IntermediateDirectory)/1regions.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Release || $(MakeDirCommand) ./Release


$(IntermediateDirectory)/.d:
	@test -d ./Release || $(MakeDirCommand) ./Release

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/alikutlu/Belgeler/sudoku/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM "main.cpp"

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) "main.cpp"

$(IntermediateDirectory)/2cell.cpp$(ObjectSuffix): 2cell.cpp $(IntermediateDirectory)/2cell.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/alikutlu/Belgeler/sudoku/2cell.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/2cell.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/2cell.cpp$(DependSuffix): 2cell.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/2cell.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/2cell.cpp$(DependSuffix) -MM "2cell.cpp"

$(IntermediateDirectory)/2cell.cpp$(PreprocessSuffix): 2cell.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/2cell.cpp$(PreprocessSuffix) "2cell.cpp"

$(IntermediateDirectory)/0ProblemSpace.cpp$(ObjectSuffix): 0ProblemSpace.cpp $(IntermediateDirectory)/0ProblemSpace.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/alikutlu/Belgeler/sudoku/0ProblemSpace.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/0ProblemSpace.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/0ProblemSpace.cpp$(DependSuffix): 0ProblemSpace.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/0ProblemSpace.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/0ProblemSpace.cpp$(DependSuffix) -MM "0ProblemSpace.cpp"

$(IntermediateDirectory)/0ProblemSpace.cpp$(PreprocessSuffix): 0ProblemSpace.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/0ProblemSpace.cpp$(PreprocessSuffix) "0ProblemSpace.cpp"

$(IntermediateDirectory)/UI.cpp$(ObjectSuffix): UI.cpp $(IntermediateDirectory)/UI.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/alikutlu/Belgeler/sudoku/UI.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/UI.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/UI.cpp$(DependSuffix): UI.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/UI.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/UI.cpp$(DependSuffix) -MM "UI.cpp"

$(IntermediateDirectory)/UI.cpp$(PreprocessSuffix): UI.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/UI.cpp$(PreprocessSuffix) "UI.cpp"

$(IntermediateDirectory)/1regions.cpp$(ObjectSuffix): 1regions.cpp $(IntermediateDirectory)/1regions.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/alikutlu/Belgeler/sudoku/1regions.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/1regions.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/1regions.cpp$(DependSuffix): 1regions.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/1regions.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/1regions.cpp$(DependSuffix) -MM "1regions.cpp"

$(IntermediateDirectory)/1regions.cpp$(PreprocessSuffix): 1regions.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/1regions.cpp$(PreprocessSuffix) "1regions.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Release/


