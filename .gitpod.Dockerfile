FROM gitpod/workspace-full

RUN curl -sLJO https://github.com/exercism/cli/releases/latest/download/exercism-linux-64bit.tgz &&\
  cat exercism-linux-64bit.tgz | tar -xzf - &&\
  mkdir -p ~/bin &&\
  mv exercism ~/bin &&\
  bash ./shell/exercism_completion.bash &&\
  rm -rf shell exercism-linux-64bit.tgz

ENV PATH=~/bin:$PATH
RUN exercism configure --workspace="."