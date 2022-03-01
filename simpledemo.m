% simpledemo.m

% download matlab_motion_tools repo
% git clone https://github.com/jlucasmckay/matlab_motion_tools

addpath("./trc-tools")

f = "https://jlucasmckay.bmi.emory.edu/global/bmi500/sit-rest1-TP.trc"
f = "offmed-TUG-standard1-TP.trc"

trc = read_trc(f);

% list names of variables
names(trc)

% look at the first rows
peek(trc)

% different ways to access:
trc.Frame(1:10)
trc(1:10,"Frame")
trc(1:10,1)
trc{1:10,"Frame"}

% the subject is walking along X
figure
plot(trc.Time,trc.C7_X)

% the other markers are at different heights
figure
stackedplot(trc(:,["C7_Z" "L_ASIS_Z" "L_Ankle_Z"]))









