ENGINE=latexmk
FLAGS=-synctex=1 --interaction=nonstopmode -file-line-error -xelatex -cd -outdir=../bin
SRC_DIR=src

all:
	$(ENGINE) $(FLAGS) $(SRC_DIR)/lecture-notes.tex

single:
	$(ENGINE) -usepretex="\def\lectitle{$(LECTURE_TITLE)}\def\lecsem{$(LECTURE_SEMESTER)}\def\lecdirname{$(LECTURE_NAME)}" -jobname="$(LECTURE_NAME)" $(FLAGS) $(SRC_DIR)/single-lecture-note.tex

clean:
	rm bin/*

ca: LECTURE_TITLE=COSE222: Computer Architecture
ca: LECTURE_SEMESTER=2021 Autumn
ca: LECTURE_NAME=deep-learning
ca: single

cg: LECTURE_TITLE=COSE331: Computer Graphics
cg: LECTURE_SEMESTER=2021 Spring
cg: LECTURE_NAME=computer-graphics
cg: single

dl: LECTURE_TITLE=COSE474: Deep Learning
dl: LECTURE_SEMESTER=2021 Autumn
dl: LECTURE_NAME=deep-learning
dl: single

engmath: LECTURE_TITLE=COSE281: Engineering Mathematics
engmath: LECTURE_SEMESTER=2021 Spring
engmath: LECTURE_NAME=engineering-mathematics
engmath: single

cvxopt: LECTURE_TITLE=COSE423: Introduction to Convex Optimization
cvxopt: LECTURE_SEMESTER=2021 Spring
cvxopt: LECTURE_NAME=intro-to-convex-optimization
cvxopt: single

lowpower: LECTURE_TITLE=COSE415: Lower Power Computing
lowpower: LECTURE_SEMESTER=2021 Spring
lowpower: LECTURE_NAME=lower-power-computing
lowpower: single

prp: LECTURE_TITLE=COSE382: Probability and Random Process
prp: LECTURE_SEMESTER=2021 Autumn
prp: LECTURE_NAME=probability-and-random-process
prp: single
