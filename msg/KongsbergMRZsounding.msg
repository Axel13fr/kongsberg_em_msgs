# struct EMdgmMRZ_sounding_def
# {
#   uint16_t soundingIndex;
#   uint8_t txSectorNumb;
#   uint8_t detectionType;
#   uint8_t detectionMethod;
#   uint8_t rejectionInfo1;
#   uint8_t rejectionInfo2;
#   uint8_t postProcessingInfo;
#   uint8_t detectionClass;
#   uint8_t detectionConfidenceLevel;
#   uint16_t padding;
#   float rangeFactor;
#   float qualityFactor;
#   float detectionUncertaintyVer_m;
#   float detectionUncertaintyHor_m;
#   float detectionWindowLength_sec;
#   float echoLength_sec;
#   uint16_t WCBeamNumb;
#   uint16_t WCrange_samples;
#   float WCNomBeamAngleAcross_deg;
#   float meanAbsCoeff_dBPerkm;
#   float reflectivity1_dB;
#   float reflectivity2_dB;
#   float receiverSensitivityApplied_dB;
#   float sourceLevelApplied_dB;
#   float BScalibration_dB;
#   float TVG_dB;
#   float beamAngleReRx_deg;
#   float beamAngleCorrection_deg;
#   float twoWayTravelTime_sec;
#   float twoWayTravelTimeCorrection_sec;
#   float deltaLatitude_deg;
#   float deltaLongitude_deg;
#   float z_reRefPoint_m;
#   float y_reRefPoint_m;
#   float x_reRefPoint_m;
#   float beamIncAngleAdj_deg;
#   uint16_t realTimeCleanInfo;
#   uint16_t SIstartRange_samples;
#   uint16_t SIcentreSample;
#   uint16_t SInumSamples;
# };

uint16 soundingIndex
uint8 txSectorNumb

# 0 = normal detection
# 1 = extra detection
# 2 = rejected detection In case 2, the estimated range has been used to fill in amplitude samples in the seabed image datagram.
uint8 DETECTION_TYPE_NORMAL = 0
uint8 DETECTION_TYPE_EXTRA_DETECTION = 1
uint8 DETECTION_TYPE_REJECTED = 2
uint8 detectionType

# 0 = no valid detection
# 1 = amplitude detection
# 2 = phase detection
# 3-15 for future use.
uint8 DETECTION_METHOD_NO_VALID = 0
uint8 DETECTION_METHOD_AMPLITUDE = 1
uint8 DETECTION_METHOD_PHASE = 2

uint8 detectionMethod

uint8 rejectionInfo1
uint8 rejectionInfo2
uint8 postProcessingInfo
uint8 detectionClass
uint8 detectionConfidenceLevel
float32 rangeFactor

# Estimated standard deviation as % of the detected depth. Quality Factor (QF) is calculated from IFREMER Quality Factor (IFQ):
# QF=Est(dz)/z=100*10^-IQF
float32 qualityFactor

float32 detectionUncertaintyVer_m
float32 detectionUncertaintyHor_m
float32 detectionWindowLength_sec
float32 echoLength_sec
uint16 WCBeamNumb
uint16 WCrange_samples
float32 WCNomBeamAngleAcross_deg
float32 meanAbsCoeff_dBPerkm
float32 reflectivity1_dB
float32 reflectivity2_dB
float32 receiverSensitivityApplied_dB
float32 sourceLevelApplied_dB
float32 BScalibration_dB
float32 TVG_dB
float32 beamAngleReRx_deg
float32 beamAngleCorrection_deg
float32 twoWayTravelTime_sec
float32 twoWayTravelTimeCorrection_sec
float32 deltaLatitude_deg
float32 deltaLongitude_deg
float32 z_reRefPoint_m
float32 y_reRefPoint_m
float32 x_reRefPoint_m
float32 beamIncAngleAdj_deg
uint16 realTimeCleanInfo
uint16 SIstartRange_samples
uint16 SIcentreSample
uint16 SInumSamples
