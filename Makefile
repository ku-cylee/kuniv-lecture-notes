SRC_DIR=src
DST_DIR=bin

ENGINE=latexmk
FLAGS=-synctex=1 --interaction=nonstopmode -file-line-error -xelatex -cd -outdir=../$(DST_DIR)

all:
	$(ENGINE) $(FLAGS) $(SRC_DIR)/lecture-notes.tex

single:
	$(ENGINE) -usepretex="\def\lecdirname{$(LEC_NAME)}" -jobname="$(LEC_NAME)" $(FLAGS) $(SRC_DIR)/single-lecture-note.tex

clean:
	rm -r $(DST_DIR)

ca: LEC_NAME=computer-architecture
ca: single

cg: LEC_NAME=computer-graphics
cg: single

dl: LEC_NAME=deep-learning
dl: single

engmath: LEC_NAME=engineering-mathematics
engmath: single

cvxopt: LEC_NAME=intro-to-convex-optimization
cvxopt: single

lowpower: LEC_NAME=lower-power-computing
lowpower: single

prp: LEC_NAME=probability-and-random-process
prp: single
