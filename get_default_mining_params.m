function mining_params = get_default_mining_params
%Return the default mining parameters

%maximum number of mining iterations
mining_params.MAXITER = 100;

%CVPR11 constant
mining_params.SVMC = .01;

%maximum number of image-scans during training
mining_params.MAX_TOTAL_MINED_IMAGES = 1000;

%if enabled, we dump learning images into results directory
mining_params.dump_images = 0;

%if enabled, we dump the last image
mining_params.dump_last_image = 0;

%maximum #windows per image (per exemplar) to mine
mining_params.MAX_WINDOWS_PER_IMAGE = 400;

%Levels-per-octave defines how many levels between 2x sizes in pyramid
mining_params.lpo = 10;

%Maximum number of negatives to mine before SVM kicks in (this
%defines one iteration)
mining_params.MAX_WINDOWS_BEFORE_SVM = 2000;

%Maximum number of violating images before SVM kicks in (another
%way to define one iteration)
mining_params.MAX_IMAGES_BEFORE_SVM = 500;

%At this cutoff, we switch thresholds from basically everything to
%a reduced threshold
mining_params.early_late_cutoff = 3;
mining_params.early_detection_threshold = -10000;
mining_params.late_detection_threshold = -1.05;

%when mining, we keep the N negative support vectors as well as
%some more beyond the -1 threshold (alpha*N), but no more than 1000
mining_params.beyond_nsv_multiplier = 3;
mining_params.max_negatives = 1000;

%%if less than 1.0, then we apply nms to detections so that we don't have
%%too many redundant windows
mining_params.NMS_MINES_OS = 1;

%if non-zero, then skip detection at any objects
mining_params.SKIP_GTS_ABOVE_THIS_OS = 10.0;

%if non-zero, add these detections as positives
%mining_params.ASSIMILATE_GTS_ABOVE_THIS_OS = 10;

%Queue mode can be one of: {'onepass','cycle-violators','front-violators'}
mining_params.queue_mode = 'onepass';

%% if non-zero, sets weight of positives such that positives and
%negatives are treated equally
mining_params.BALANCE_POSITIVES = 1;

% if non-zero, perform learning in dominant-gradient space
mining_params.DOMINANT_GRADIENT_PROJECTION = 0;
mining_params.DOMINANT_GRADIENT_PROJECTION_K = 2;

mining_params.DO_PCA = 0;
mining_params.PCA_K = 300;

mining_params.A_FROM_POSITIVES = 0;