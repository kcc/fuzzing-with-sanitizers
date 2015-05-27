#!/usr/bin/python

import os

import buildbot
import buildbot.process.factory
from buildbot.process.properties import WithProperties
from buildbot.steps.source import SVN
from buildbot.steps.shell import Compile
from buildbot.steps.shell import ShellCommand

from AnnotatedCommand import AnnotatedCommand

bot_config_checkout_dir='buildbot_config'

# TODO: Specify the repo holding your buildbot configuration.

# Path to buildbot configuration within repo.
bot_config_subdir=os.path.join('buildbot', 'config')

def updateScripts(f):
    # Get buildbot scripts.
#    f.addStep(SVN(name='update scripts',
#                  mode='update',
#                  svnurl='http://yourproject.org/buildbot/'
#                  workdir=bot_config_checkout_dir,
#                  alwaysUseLatest=True))
    f.addStep(Git(name='update scripts',
                  mode='update',
                  repourl='https://github.com/kcc/fuzzing-with-sanitizers.git'
                  workdir=bot_config_checkout_dir,
                  alwaysUseLatest=True))



def getAnnotatedFactory(
    clean=False,
    env=None,
    timeout=1200,
    slave_script=None):

    merged_env = {}

    # Use env variables defined in the system.
    merged_env.update(os.environ)
    # Clobber bot if we need a clean build.
    if clean:
        merged_env['BUILDBOT_CLOBBER'] = '1'
    # Overwrite pre-set items with the given ones, so user can set anything.
    if env is not None:
        merged_env.update(env)

    f = buildbot.process.factory.BuildFactory()

    # Determine the build directory.
    f.addStep(buildbot.steps.shell.SetProperty(name='get_builddir',
                                               command=['pwd'],
                                               property='builddir',
                                               description='set build dir',
                                               workdir='.',
                                               env=merged_env))

    updateScripts(f)

    script_path = os.path.join('..', bot_config_checkout_dir, bot_config_subdir,
                               'scripts', 'slave', slave_script)

    # Run annotated command.
    f.addStep(AnnotatedCommand(name='annotate',
                               description='annotate',
                               timeout=timeout,
                               haltOnFailure=True,
                               command='bash ' + script_path,
                               env=merged_env))
    return f
