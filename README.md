README for Neocortex simulation. Modified from NeoDiffuse provided by Stan
Anderson and Pawel Kudela.

########################################

2015-01-14 11:37
Alfred Yu

There are 23 cell types, with some duplicate subtypes (labeled as a,b,c,d
suffixes). Note that the duplicates are largely, but not always (see
netdefs.g), functionally identical in the current instantiation. So their
division into subtypes is to facilitate potential tweaking.

   P23RSa
   P23RSb
   P23RSc
   P23RSd
   B23FS
   P5IBa
   P5IBb
   P5IBc
   P5IBd
   B5FS
   P6RSa
   P6RSb
   P6RSc
   P6RSd
   C23FS
   C5FS
   ST4RS
   I23LTS
   I5LTS
   TCR
   nRT
   P23FRBa
   P5RSa

----------------

Here's a flow chart. Embedded blocks are called by their parents.

run_Neocortex: wrapper to do some basic checks on paths, existence of data directory,
MPI details. Calls pgenesis Neocortex.g 

   netparams.g: defining Network cell spacings and numbers
   syncond.g: defining synaptic conductances
      
   celldefs.g: Load cell definitions

      schema to all listed cell types (except TCR/nRT which don't use cell3D):
      include config_neuron/protodefs/{}protodefs.g
         compartments.g
         config_neuron/chan/{}chan.g
      readcell {}cell3D.p /{}
      include config_neuron/synapsedefs/{}_synapsedefs.g

      P23RSa
      P23RSb
      P23RSc
      P23RSd
      B23FS
      P5IBa
      P5IBb
      P5IBc
      P5IBd
      B5FS
      P6RSa
      P6RSb
      IFDEF COLUMNTYPE==0
         P6RSc
         P6RSd
      C23FS
      C5FS
      ST4RS
      I23LTS
      I5LTS
      IFDEF THALAMOCORTICAL==1
         include config_neuron/protodefs/TCRprotodefs.g
         readcell TCRcell.p /TCR // Note: not cell3D
         include config_neuron/synapsedefs/TCR_synapsedefs.g
         include config_neuron/protodefs/nRTprotodefs.g
         readcell nRTcell.p /nRT // Note: not cell3D
         include config_neuron/synapsedefs/nRT_synapsedefs.g
      P23FRBa
      P5RSa

   spikedefs.g: defining SPIKE elements for all somae

   config_neuron/spatiallayout/{}: Define spatial layout for all cells

   //synapticprobsbase.g <- commented in favor of Traub version???
   synapticprobsTraub.g: set Synaptic weight decay parameters and delays

   synapticdelays.g: Defines base synaptic delays and variability (stdev+maxdev)

   axonaldelays.g: Ditto

   netdefs.g: Establish wiring

      General schema:
      include config_neuron_x_neuron/{}_{allother}.g

      Special cases:
      IFDEF COLUMNTYPE==0
         include config_neuron_x_neuron/{}_P6RS[cd].g
      IFDEF thalamocortical==1 (only for P6RS[ab])
         include config_neuron_x_neuron/{}_TCR.g
         include config_neuron_x_neuron/{}_nRT.g
      IFDEF thalamocortical==1 & COLUMNTYPE==0 (only for P6RS[cd])
         include config_neuron_x_neuron/{}_TCR.g
         include config_neuron_x_neuron/{}_nRT.g
      IFDEF thalamocortical==1
         include config_neuron_x_neuron/TCR_{allother}.g
         include config_neuron_x_neuron/nRT_TCR.g
         include config_neuron_x_neuron/nRT_nRT.g
         

   IFDEF_GAP==1
      Gapdefs.g: This is a rat's nest of switch statements to determine which synapses
      get gap junctions. It is in dire need of reorganizing IF we ever want to use gap
      junctions. Example:

         include config_neuron_x_neuron/P23RSa_P23RSa_Gap.g
         include config_neuron_x_neuron/P23RSa_P23RSb_Gap.g
         include config_neuron_x_neuron/P23RSa_P23RSc_Gap.g
         include config_neuron_x_neuron/P23RSa_P23RSd_Gap.g

         include config_neuron_x_neuron/P23RSb_P23RSb_Gap.g
         include config_neuron_x_neuron/P23RSb_P23RSc_Gap.g
         include config_neuron_x_neuron/P23RSb_P23RSd_Gap.g

         include config_neuron_x_neuron/P23RSc_P23RSc_Gap.g
         include config_neuron_x_neuron/P23RSc_P23RSd_Gap.g

         include config_neuron_x_neuron/P23RSd_P23RSd_Gap.g
         .
         .
         .

   //synchansSPIKEs.g
   //randominputdefs.g
   LFP5e.g: LFP Calculation from cellular network,taken at specified point.

   IFDEF_DISPLAY==1
      (probedices.g|probedicesTraub.g)
      rasterdefspos1.g
      (probedices2.g|probedices2Traub.g)
      rasterdefspos2.g

   IFDEF_OUTPUT==1
      LFP5eASCIIwrite.g

---------------------------

I'm a little concerned about the conditionals-- even with display=0 the scripts
will crash if they can't find probedices.g, etc. Not sure if the conditional
statements are wrong, or if Genesis evaluates everything even if it's not run.

########################################

2015-01-28 09:20
Alfred Yu

Now using git in this directory.

'git log' will show a list of changes.

########################################

2015-03-16 08:47
Alfred Yu

Adjusted z placement to be deterministic even when model is spread over a
different number of computing nodes (merged "improvedrandomheight" branch).

Many other small fixes (see git log).

We are starting to implement long range connections, so I'm cleaning house
prior to merging a large amount of changes. The structure of these changes is
yet to be determined because we're balancing ease of implementation vs. future
flexibility.

########################################

2016-03-21 11:08
Alfred Yu

Implementing long range connections in excitatory cells.

Pyramidal: fully connected to pyramidal and B, C, I cells in other columns

ST4RS: only local connectivity. Rationale: Schubert, Kotter, Zilles, Luhmann, & Staiger (2003).

TCR: I think the outputs are typically very focused onto a corresponding
cortical column (think LGN) so not including any long-range connections other
than the existing within column connections.

########################################
