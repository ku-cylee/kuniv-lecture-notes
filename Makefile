SRC_DIR=src
DST_DIR=bin

ENGINE=latexmk
FLAGS=-synctex=1 --interaction=nonstopmode -file-line-error -xelatex -cd -outdir=../$(DST_DIR)

all:
	$(ENGINE) $(FLAGS) $(SRC_DIR)/lecture-notes.tex

single:
	$(ENGINE) -usepretex="\def\leccode{$(LEC_CODE)}\def\lectitle{$(LEC_TITLE)}\def\lecsem{$(LEC_SEMESTER)}\def\lecdirname{$(LEC_NAME)}\def\lecprof{$(LEC_PROFESSOR)}" -jobname="$(LEC_NAME)" $(FLAGS) $(SRC_DIR)/single-lecture-note.tex

clean:
	rm -r $(DST_DIR)

ca: LEC_CODE=COSE222
ca: LEC_TITLE=Computer Architecture
ca: LEC_SEMESTER=2021 Autumn
ca: LEC_PROFESSOR=Chung, Sung Woo
ca: LEC_NAME=computer-architecture
ca: single

cg: LEC_CODE=COSE331
cg: LEC_TITLE=Computer Graphics
cg: LEC_SEMESTER=2021 Spring
cg: LEC_PROFESSOR=Han, JungHyun
cg: LEC_NAME=computer-graphics
cg: single

dl: LEC_CODE=COSE474
dl: LEC_TITLE=Deep Learning
dl: LEC_SEMESTER=2021 Autumn
dl: LEC_PROFESSOR=Baek, Seung Jun
dl: LEC_NAME=deep-learning
dl: single

engmath: LEC_CODE=COSE281
engmath: LEC_TITLE=Engineering Mathematics
engmath: LEC_SEMESTER=2021 Spring
engmath: LEC_PROFESSOR=Lee, Ju Seop
engmath: LEC_NAME=engineering-mathematics
engmath: single

cvxopt: LEC_CODE=COSE423
cvxopt: LEC_TITLE=Introduction to Convex Optimization
cvxopt: LEC_SEMESTER=2021 Spring
cvxopt: LEC_PROFESSOR=Baek, Seung Jun
cvxopt: LEC_NAME=intro-to-convex-optimization
cvxopt: single

lowpower: LEC_CODE=COSE415
lowpower: LEC_TITLE=Lower Power Computing
lowpower: LEC_SEMESTER=2021 Spring
lowpower: LEC_PROFESSOR=Chung, Sung Woo
lowpower: LEC_NAME=lower-power-computing
lowpower: single

prp: LEC_CODE=COSE382
prp: LEC_TITLE=Probability and Random Process
prp: LEC_SEMESTER=2021 Autumn
prp: LEC_PROFESSOR=Chung, Wonzoo
prp: LEC_NAME=probability-and-random-process
prp: single
